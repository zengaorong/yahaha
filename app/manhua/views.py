#coding=utf-8

from flask import render_template, redirect, request, url_for, flash,jsonify,send_from_directory,\
    current_app
from flask_login import login_user, logout_user, login_required, \
    current_user
from . import manhua
from ..models import Manhua,Chapter
from sqlalchemy import and_
import sys

reload(sys)
sys.setdefaultencoding('utf-8')

# 漫画首页
@manhua.route('/index',methods=['GET', 'POST'])
def index():
    mhlist = Manhua.query.all()
    return render_template('manhua/index.html',mhlist = mhlist)


# 漫画章节页面
@manhua.route('/mhchapter/<mh_id>',methods=['GET', 'POST'])
def mhchapter(mh_id):
    chapters = Chapter.query.filter_by(mhname_id = mh_id).all()
    return render_template('manhua/mhchapter.html',chapters = chapters)



@manhua.route('/addpic/<chapter_id>')
def addpic(chapter_id):
    return render_template('manhua/showpics.html',chapter_id=chapter_id)

# 前台播放视频功能测试
@manhua.route('/readvideo', methods=['GET', 'POST'])
def readvideo():
    return render_template('manhua/b.html')


# 根据章节id查询漫画图片路径
@manhua.route('/getpicsbyid',methods=['GET', 'POST'])
def getpics_by_id():
    chapter_id = request.args.get('chapter_id', '', type=str)

    chapter = Chapter.query.filter_by(id = chapter_id).first()
    chapter_strs = chapter.data
    chapter_list = chapter_strs.split('\n')
    print repr(chapter_list[0])
    chapter_list.pop()
    return jsonify(result = chapter_list)


