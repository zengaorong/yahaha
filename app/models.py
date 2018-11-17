from werkzeug.security import generate_password_hash, check_password_hash
from itsdangerous import TimedJSONWebSignatureSerializer as Serializer
from flask import current_app
from flask_login import UserMixin
from . import db, login_manager


class Role(db.Model):
    __tablename__ = 'roles'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(64), unique=True)
    users = db.relationship('User', backref='role', lazy='dynamic')

    def __repr__(self):
        return '<Role %r>' % self.name

class Manhua(UserMixin,db.Model):
    __tablename__ = 'mhname'
    id = db.Column(db.VARCHAR(36), primary_key=True)
    mhname = db.Column(db.String(64), unique=True)
    pic_url = db.Column(db.String(128), unique=True)
    creat_time = db.Column(db.DATETIME)
    updata_time = db.Column(db.DATETIME)
    pic_base64data = db.Column(db.Text())

    #users = db.relationship('User', backref='role', lazy='dynamic')

    def __repr__(self):
        return '<Manhua %r>' % self.mhname

class Chapter(UserMixin,db.Model):
    __tablename__ = 'mhchapter'
    id = db.Column(db.VARCHAR(36), primary_key=True)
    mhname_id = db.Column(db.VARCHAR(36), db.ForeignKey('mhname.id'))
    data = db.Column(db.Text())
    chapter_nums = db.Column(db.Integer)
    pics_nums = db.Column(db.Integer)
    chapter_name = db.Column(db.String(64))
    creat_time = db.Column(db.DATETIME)
    updata_time = db.Column(db.DATETIME)

    db.UniqueConstraint(mhname_id,chapter_name)
    #users = db.relationship('User', backref='role', lazy='dynamic')

    def __repr__(self):
        return '<mhchapter %r>' % self.chapter_name



class User(UserMixin, db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(64), unique=True, index=True)
    username = db.Column(db.String(64), unique=True, index=True)
    role_id = db.Column(db.Integer, db.ForeignKey('roles.id'))
    password_hash = db.Column(db.String(128))
    confirmed = db.Column(db.Boolean, default=False)

    @property
    def password(self):
        raise AttributeError('password is not a readable attribute')

    @password.setter
    def password(self, password):
        self.password_hash = generate_password_hash(password)

    def verify_password(self, password):
        return check_password_hash(self.password_hash, password)

    def generate_confirmation_token(self, expiration=3600):
        s = Serializer(current_app.config['SECRET_KEY'], expiration)
        return s.dumps({'confirm': self.id}).decode('utf-8')

    def confirm(self, token):
        s = Serializer(current_app.config['SECRET_KEY'])
        try:
            data = s.loads(token.encode('utf-8'))
        except:
            return False
        if data.get('confirm') != self.id:
            return False
        self.confirmed = True
        db.session.add(self)
        return True

    def __repr__(self):
        return '<User %r>' % self.username


class Worker(db.Model):
    __tablename__ = 'worker'
    id = db.Column(db.VARCHAR(36), primary_key=True)
    workername = db.Column(db.String(64))
    account = db.Column(db.VARCHAR(36))
    password = db.Column(db.VARCHAR(36))
    def __repr__(self):
        return '<worker %r>' % self.workername

class Logbook(db.Model):
    __tablename__ = 'Logbook'
    id = db.Column(db.VARCHAR(36), primary_key=True)
    workerid = db.Column(db.VARCHAR(36), db.ForeignKey('worker.id'))
    creat_time = db.Column(db.DATETIME)
    updata_time = db.Column(db.DATETIME)
    logbook_time = db.Column(db.DATETIME)
    work_for = db.Column(db.String(1024))
    log_type = db.Column(db.VARCHAR(1))

    def __repr__(self):
        return '<Logbook %r>' % self.work_for

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))
