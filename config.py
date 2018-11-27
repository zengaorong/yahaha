import os
basedir = os.path.abspath(os.path.dirname(__file__))


class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'hard to guess string'



    MAIL_SERVER = os.environ.get('MAIL_SERVER', 'smtp.qq.com')
    MAIL_PORT = int(os.environ.get('MAIL_PORT', '465'))
    MAIL_USE_SSL = os.environ.get('MAIL_USE_SSL', 'true').lower() in \
        ['true', 'on', '1']
    MAIL_USERNAME = 'zengaorong@qq.com'
    MAIL_PASSWORD = 'xmghqcdjsckpebci'
    FLASKY_MAIL_SUBJECT_PREFIX = '[Flasky]'
    FLASKY_MAIL_SENDER = 'zengaorong@qq.com'
    FLASKY_ADMIN = '1904959670@qq.com'
    UPLOADED_PHOTOS_DEST = os.getcwd() + '/app/static/upload'
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    FLASKY_POSTS_PER_PAGE = 20
    FLASKY_POSTS_CHAP_PAGE = 100


    @staticmethod
    def init_app(app):
        pass


class DevelopmentConfig(Config):
    DEBUG = True
    SQLALCHEMY_DATABASE_URI = 'mysql://root:7monthdleo@127.0.0.1/leodb'


class TestingConfig(Config):
    TESTING = True
    SQLALCHEMY_DATABASE_URI = 'mysql://root:7monthdleo@127.0.0.1/leodb'


class ProductionConfig(Config):
    SQLALCHEMY_DATABASE_URI = 'mysql://root:7monthdleo@127.0.0.1/leodb'


config = {
    'development': DevelopmentConfig,
    'testing': TestingConfig,
    'production': ProductionConfig,
    'default': DevelopmentConfig
}
