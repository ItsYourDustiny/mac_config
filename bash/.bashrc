source ~/.bash_git
export NODE_OPTIONS=--max-old-space-size=8192
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export KC_API_DATABASE_HOST=localhost
export KC_API_DATABASE_USERNAME=root
export KC_API_DATABASE_PASSWORD=
export DATA_SERVICE_DATABASE_HOST=localhost
export DATA_SERVICE_DATABASE_USERNAME=root
export DATA_SERVICE_DATABASE_PASSWORD=
export IMPORTANCE_SECRET_TOKEN=$KC_API_SECRET_TOKEN
export IMPORTANCE_MEDISPAN_DOWNLOAD_USERNAME=app-medispan2@kitcheck.com
export IMPORTANCE_MEDISPAN_DOWNLOAD_PASSWORD="B0\$J07HETTWVJB4bIbF9BJQWixShtT"
export KC_CUSTOMER_PASSWORD=abc123
export SARGAS_API_TOKEN=zyx987
export DESK_API_KEY=DAK
export DESK_SUBDOMAIN=bicycle
export COGNITO_CLIENT_SECRET_KITCHECK=unicycle
export KC_API_REDIS_URL=redis://localhost:6379/0
export KC_API_SECRET_TOKEN=f80029239f76b3392c78f9fe8fdb98e99b674e696b93e00ed5db076597b7405a4e9a8eab89e92db685f90a5c089b473eb6b87af31cb9b50bd778c1026d02e0c5
export KC_API_DEVISE_SECRET_TOKEN=926211ec43980c5ca2ac4435e267a2946f7b76e19ee554fc8157ee555ef3be87cc9f55bccf87ac3126c65f5fe8504cfffd42d2947336f092fe1a94796348ab12
export FIRMWARE_REVISIONS_BUCKET=firmware-revisions
export EXTERNAL_ASSETS_BUCKET=kitcheck-external-assets
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home'
export AWS_ACCOUNT_ID=210873117884
export AWS_DEFAULT_REGION=us-east-1
export AWS_REGION=$AWS_DEFAULT_REGION

export EC2_USERNAME=dustinsquires

export KITCHECK_BASE=~/GitHub
# set up ui branches
kcui () {
  nvm use
  aws-mfa
  eval $(aws-mfa)
}
# add a commit to git w/ no quotes
gc () {
    git add .
    git commit -m "$*"
    git push
}
# rebase my current branch
gfix () {
    git checkout trunk
    git pull
    git checkout -
    git rebase trunk
}
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
# squash all commits for this branch
alias gr='git rebase -i $(git merge-base $(git branch --show-current) trunk)'
alias sendit='git push -f'
alias bec='bundle exec cap'
alias be='bundle exec'
alias gs='git status'
alias gct='git checkout trunk'
alias cdkc='cd ~/GitHub/kc-api'
alias codekc='code ~/GitHub/kc-api && cdkc'
alias cdku='cd ~/GitHub/kitcheck-ui && nvm use'
alias codeku='code ~/GitHub/kitcheck-ui && cdku'
alias cdxc='cd ~/GitHub/crosscheck-ui && nvm use'
alias codexc='code ~/GitHub/crosscheck-ui && cdxc'
alias ctk='ruby /Users/DustinSquires/Scripts/shortcuts.rb $*'
# bc im dumb
alias yarn='npm run'
export CPPFLAGS="-I/usr/local/opt/openssl@3/include"
export LDFLAGS="-L/usr/local/opt/openssl@3/lib"
# mysql backups
alias dbdump="mysqldump -h localhost -u root"
alias localdb="mysql -h localhost -u root"
alias dbdump-kcapi-dev="    dbdump --databases kc-api-development > "/Users/dustinsquires/code/mysql_backups/kc-api-mysql-dev-backup.sql""
alias restoredb-kcapi-dev=" localdb --database kc-api-development < "/Users/dustinsquires/code/mysql_backups/kc-api-mysql-dev-backup.sql""
alias dbdump-kcapi-test="   dbdump --databases kc-api-test > "/Users/dustinsquires/code/mysql_backups/kc-api-mysql-test-backup.sql""
alias restoredb-kcapi-test="localdb --database kc-api-test < "/Users/dustinsquires/code/mysql_backups/kc-api-mysql-test-backup.sql""
# kc-ui e2e seed command
alias e2e-kc-ui=seed_kcapi_e2e
seed_kcapi_e2e() {
    SEED_KCAPI_ONLY=true bundle exec rake db:drop db:create db:schema:load db:seed:e2e
    echo "Seeding complete, backing up seeds now"
    dbdump-kcapi-dev
    echo "Seed back complete, run restoredb-kcapi-dev for seed refresh"
}
# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

export PATH=/opt/homebrew/bin:$PATH
export OPENAI_API_KEY='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'
export PATH="$HOME/.rbenv/bin:$PATH"
/usr/bin/ssh-add -K ~/.ssh/*id_ed25519
eval "$(rbenv init -)"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
dark() {
    hyper i hyper-dracula
    hyper u xi-hyper
}
light() {
    hyper i xi-hyper
    hyper u hyper-dracula
}

console() {
    env=$1
    echo -en "\033]0;${env}\a"
    sh ~/aws-exec-auto.sh $1
}
alias editbash="code ~/.bashrc"
alias reload="source ~/.bashrc"
alias aws="aws-vault exec kitcheck"
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvmeval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/Applications/WezTerm.app/Contents/MacOS:$PATH"