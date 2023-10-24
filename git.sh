#check for argument
if [ -z "$1" ]; then
        echo "usage; $0 repo_name"
        exit 1
fi
#set variables
repo_name= $1
git_repo_dir=/home/sarika/bindu/git_repo2
git_workcopy_dir=/home/sarika/bindu/git_workcopy_dir
tag_name=my_tag

#check if repo already exists 
if [ -d "$git_repo_dir/$repo_name" ]; then
        echo "Git repo $repo_name already exist in $git_repo_dir"
        exit 1
fi
#create git repo directory
mkdir -p "$git_repo_dir"
cd "$git_repo_dir"

#setup environment
git config --global user.email "bindusarika333@gmail.com"
git config --global user.name "sarika"


#create git remote repo
git init --bare "$repo_name"

#create git workcopy directory
mkdir -p "$git_workcopy_dir"
cd "$git_workcopy_dir"

#clone remote to local server
git clone "$git_repo_dir/$repo_name"

