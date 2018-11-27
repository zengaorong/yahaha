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

    # pagination = Logbook.query.filter_by(workerid=workerid).order_by(Logbook.creat_time.desc()).paginate(
    #     page, per_page=current_app.config['FLASKY_POSTS_PER_PAGE'],
    #     error_out=False)
    # db.session.query  Wterror.query.filter_by Wterror.watcher_id,Wterror.creat_time,Wterror.work_for,
    pagination = db.session.query(Wterror,Watcher.watchername,Watcher.watchernum).outerjoin(Watcher,Watcher.id == Wterror.watcher_id ).order_by(Wterror.creat_time.desc()).paginate(
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
        key.week = get_week_day(key.creat_time)
        key.creat_time = key.creat_time.strftime("%Y-%m-%d")

    return "OK"
    #return render_template('tianwang/list.html',posts=posts,pagination=pagination,listsize=listsize)


