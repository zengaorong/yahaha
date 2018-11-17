#coding=utf-8
import sys
import uuid
from datetime import  datetime
from flask import render_template,request,redirect,url_for,current_app
from . import worker
from ..models import Worker,Logbook
from .. import db


reload(sys)
sys.setdefaultencoding('utf-8')

# 登录界面
@worker.route('/login', methods=['GET', 'POST'])
def login():
    return render_template('worker/login.html')

# 登录验证
@worker.route('/account', methods=[ 'POST'])
def account():
    account = request.form.get('account')
    password = request.form.get('password')
    worker = Worker.query.filter_by(account=account).first()
    if worker!=None and worker.password == password:
        return redirect(url_for('worker.index',workerid=worker.id))
    else:
        return "<h1>账号或者密码不正确，请重新输入<h1>"

# 用户主页
@worker.route('/index/<workerid>',methods=['GET', 'POST'])
def index(workerid):
    worker = Worker.query.filter_by(id=workerid).first()
    return render_template('worker/index.html',worker=worker)


# 生产界面
# 单日日志
@worker.route('/logbook_today',methods=['GET', 'POST'])
def logbook_today():
    workerid = request.args.get('id', "", type=str)
    return render_template('worker/logbookfrom.html',workerid=workerid)

@worker.route('/savelog', methods=['POST'])
def savelog():
    work_for = request.form.get('work_for', "", type=str)
    logbook_time = request.form.get('logbook_time', "", type=str)
    log_type = 0
    workerid = request.form.get('id', "", type=str)
    print workerid
    dt = datetime.now()
    time = dt.strftime( '%Y-%m-%d %H:%M:%S' )
    id = uuid.uuid1()
    chapter = Logbook(id=id,workerid=workerid,logbook_time=logbook_time,work_for=work_for,log_type=log_type,creat_time=time,updata_time=time,)
    db.session.add(chapter)
    db.session.commit()
    return "<h1>ok<h1>"

@worker.route('/loglist', methods=['get'])
def loglist():
    workerid = request.args.get('id', "", type=str)
    page = request.args.get('page', 1, type=int)
    pagination = Logbook.query.order_by(Logbook.creat_time.desc()).paginate(
        page, per_page=current_app.config['FLASKY_POSTS_PER_PAGE'],
        error_out=False)
    posts = pagination.items

    listsize = len(posts)

    def get_week_day(date):
        week_day_dict = {
            0 : '星期一',
            1 : '星期二',
            2 : '星期三',
            3 : '星期四',
            4 : '星期五',
            5 : '星期六',
            6 : '星期天',
        }
        day = date.weekday()
        return week_day_dict[day]

    for key in posts:
        key.week = get_week_day(key.logbook_time)
        key.logbook_time = key.logbook_time.strftime("%Y-%m-%d")

    return render_template('worker/loglist.html',posts=posts,pagination=pagination,listsize=listsize)

# 管理界面
@worker.route('/workerfrom',methods=['GET', 'POST'])
def workerfrom():
    return render_template('worker/workerfrom.html')


@worker.route('/save', methods=['POST'])
def save():
    account = request.form.get('account', "", type=str)
    password = request.form.get('password', "", type=str)
    workername = request.form.get('workername', "", type=str)
    workerid = uuid.uuid1()
    worker = Worker(id=workerid,account=account,password=password,workername=workername)

    db.session.add(worker)
    db.session.commit()
    return "<h1>%s%s<h1>"%(workername,id)

@worker.route('/test', methods=['POST','get'])
def test():
    return render_template('worker/timetest.html')
