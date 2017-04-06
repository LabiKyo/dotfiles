# exports
export EDITOR=vim
export ARCHFLAGS='-arch x86_64'
export NODE_ENV='development'
export NODE_PATH='/usr/local/share/npm/lib/node_modules:/usr/local/lib/node_modules'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node
export IOJS_ORG_MIRROR=http://npm.taobao.org/mirrors/iojs
export ANDROID_HOME=/usr/local/opt/android-sdk

# proxy
# export http_proxy=http://127.0.0.1:6152/
# export https_proxy=$http_proxy

export PATH=~/.rbenv/shims:/usr/local/share/npm/bin:/usr/local/sbin:/usr/local/bin:~/.rvm/bin:$PATH

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/labikyo/Downloads/cocos2d-x-3.14.1/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/labikyo/Downloads
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/labikyo/Downloads/cocos2d-x-3.14.1/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/Cellar/ant/1.10.0/bin
export PATH=$ANT_ROOT:$PATH
