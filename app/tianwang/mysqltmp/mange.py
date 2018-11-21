from flask import Flask
from flask_sqlalchemy import SQLAlchemy



app = Flask(__name__)
app.config['SECRET_KEY'] = 'hard to guess string'
app.config['SQLALCHEMY_DATABASE_URI'] ='mysql://root:7monthdleo@127.0.0.1/leodb'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)


class Watcher(db.Model):
    __tablename__ = 'watcher'
    id = db.Column(db.VARCHAR(36), primary_key=True)
    watchernum = db.Column(db.VARCHAR(5))
    watchername = db.Column(db.String(64))
    watchertown = db.Column(db.String(5))
    watchertype = db.Column(db.String(5))
    watcherserverip = db.Column(db.String(64))
    watcherip = db.Column(db.String(64))
    watcherlongitude = db.Column(db.VARCHAR(5))
    watcherlatitude = db.Column(db.VARCHAR(5))
    account = db.Column(db.VARCHAR(36))
    password = db.Column(db.VARCHAR(36))
    def __repr__(self):
        return '<Watcher %r>' % self.watchername

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
        return '<Logbook %r>' % self.workername
db.create_all()
db.session.commit()