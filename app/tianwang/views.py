#coding=utf-8
import sys
import uuid
from datetime import  datetime
from flask import render_template,request,redirect,url_for,current_app
from . import tianwang
from ..models import Wterror,Watcher
from .. import db
from sqlalchemy import and_


reload(sys)
sys.setdefaultencoding('utf-8')

# 天网故障点位显示
@tianwang.route('/list', methods=['GET'])
def list():
    page = request.args.get('page', 1, type=int)
    pagination = db.session.query(Wterror,Watcher.watchername,Watcher.id).outerjoin(Watcher,Watcher.id == Wterror.watcher_id ).filter(Wterror.del_type == 0 ).order_by(Wterror.creat_time.desc()).paginate(
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
        key.Wterror.week = get_week_day(key.Wterror.creat_time)
        key.Wterror.creat_time = key.Wterror.creat_time.strftime("%Y-%m-%d")

    return render_template('tianwang/list.html',posts=posts,pagination=pagination,listsize=listsize)

# 删除日志
@tianwang.route('/delete',methods=['get'])
def delete():
    id = request.args.get('id', "", type=str)
    wterror = Wterror.query.filter_by(id=id).first()
    wterror.del_type = "1"
    dt = datetime.now()
    time = dt.strftime( '%Y-%m-%d %H:%M:%S' )
    wterror.updata_time = time
    db.session.add(wterror)
    db.session.commit()
    return redirect(url_for('tianwang.list'))

# 故障提交表单
@tianwang.route('/logbook_today',methods=['GET', 'POST'])
def logbook_today():
    id = request.args.get('id', "", type=str)
    wterror = Wterror.query.filter_by(id=id).first()
    return render_template('tianwang/twfrom.html',wterror=wterror)

# 故障保存
@tianwang.route('/savelog', methods=['POST'])
def savelog():
    id = request.form.get('id', "", type=str)
    work_for = request.form.get('work_for', "", type=str)
    if id != "":
        wterror = Wterror.query.filter_by(id=id).first()
        wterror.work_for = work_for

        db.session.add(wterror)
        db.session.commit()
        return redirect(url_for('tianwang.list'))
    return '''<h1>数据错误<h1> <a href="/tianwang/logbook_today?id=%s">返回</a>''' %(id)