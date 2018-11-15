#coding=utf-8

from flask import render_template
from . import tianwang
import sys

reload(sys)
sys.setdefaultencoding('utf-8')

# 漫画首页
@tianwang.route('/index',methods=['GET', 'POST'])
def index():
    # mhlist = Manhua.query.order_by(Manhua.updata_time.desc()).all()
    #
    # if(len(mhlist)>9):
    #     showlist = mhlist[0:len(mhlist)-1]
    # else:
    #     showlist = mhlist[0:9]
    return render_template('tianwang/index.html')
