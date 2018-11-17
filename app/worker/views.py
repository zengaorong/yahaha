#coding=utf-8

from flask import render_template,request,redirect,url_for
from . import worker
import sys
import uuid
from ..models import Worker
from .. import db

reload(sys)
sys.setdefaultencoding('utf-8')

# 测试内部读取excel
@worker.route('/login', methods=['GET', 'POST'])
def login():
    return render_template('worker/login.html')

# 测试内部读取excel
@worker.route('/account', methods=[ 'POST'])
def account():
    account = request.form.get('account')
    password = request.form.get('password')
    worker = Worker.query.filter_by(account=account).first()
    if worker!=None and worker.password == password:
        return redirect(url_for('worker.index',workerid=worker.id))
    else:
        return "<h1>账号或者密码不正确，请重新输入<h1>"

@worker.route('/index/<workerid>',methods=['GET', 'POST'])
def index(workerid):
    worker = Worker.query.filter_by(id=workerid).first()
    return render_template('worker/index.html',worker=worker)

# 生产界面
@worker.route('/index/<workerid>',methods=['GET', 'POST'])
def index(workerid):
    worker = Worker.query.filter_by(id=workerid).first()
    return render_template('worker/index.html',worker=worker)


# 管理界面
@worker.route('/workerfrom',methods=['GET', 'POST'])
def workerfrom():
    return render_template('worker/workerfrom.html')


@worker.route('/save', methods=['POST'])
def save():
    account = request.form.get('account', "", type=str)
    password = request.form.get('password', "", type=str)
    workername = request.form.get('workername', "", type=str)
    #return "<h1>%s%s<h1>"%(workername,id)
    workerid = uuid.uuid1()
    worker = Worker(id=workerid,account=account,password=password,workername=workername)
    # if(chapterid!="" and chapterid!='None'):
    #     chapter = Chapter.query.filter_by(id=chapterid).first()
    #     dt = datetime.now()
    #     chapter.updata_time = dt.strftime( '%Y-%m-%d %H:%M:%S' )
    #     chapter.chapter_name = chaptername
    #     chapter.chapter_nums = chapternum
    # else:
    #     dt = datetime.now()
    #     time = dt.strftime( '%Y-%m-%d %H:%M:%S' )
    #     chapterid = uuid.uuid1()
    #     chapter = Chapter(id=chapterid,mhname_id=mhid,chapter_nums=chapternum,chapter_name=chaptername,creat_time=time,updata_time=time,)

    db.session.add(worker)
    db.session.commit()
    return "<h1>%s%s<h1>"%(workername,id)
    # #return redirect(url_for('mhcontrol.manhualist'))
    #
    # manhua = Manhua.query.filter_by(id=mhid).first()
    #
    # return redirect(url_for('chaptercontrol.chapterlist') + '?mhid=' + mhid )
