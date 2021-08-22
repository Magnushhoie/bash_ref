## BASH commands ##

__bash terminal hotkeys__
Arrow up/down: show previous/next commands from history

Ctrl + A: go to beginning of line
Ctrl + E: end of line

Ctrl + K: delete to end of line
Ctrl + U: delete to beginning of line

Ctrl + R: Search history backwards
Ctrl + S: Search history forward
Ctrl + O - Run command found using ctrl + R

__bash fzf, interactive bash history searches
# https://github.com/junegunn/fzf
brew install fzf
$(brew --prefix)/opt/fzf/install

# Use new hotkey:
Ctrl + R

__bash commands tldr lookup
# Download https://tldr.sh/
npm install -g tldr

# Run tldr <command>
tldr grep

__bash file commands
less <file>         # view file contents
head <file>         # show top 10 lines
tail <file>         # show end of file
cat <file>          # output all data in file
cat text1.txt text2.txt -> results.txt # output content of 2 files to results.txt
grep word test.txt  # find lines containing "word" in test.txt
cut -f 2-5 <file>   # cuts columns 2-5
touch <file>        # create empty file

__bash find files, execute command
find . -name projects -exec realpath {} \;
find . -name projects -exec ls -alh {} \;

__bash for loop
array=$(ls)
for var in ${array[@]}
do
    echo "$var"
done

__bash loop over two arrays
array=($(seq 1 1 20))
array2=(A C D E F G H I K L M N P Q R S T V W Y)

for index in ${!array[*]}; do
  echo "${array[$index]} is in ${array2[$index]}"
done

__bash find and kill process
# Find ID for the given process, e.g. Chrome
pgrep chrome
kill -9 <ID>

# Kill all processes with given name, e.g. Chrome
pkill -f chrome

__bash suspend, resume process, run in background
Control + Z         # suspend running process
fg                  # resume all suspended processes
du -h > temp.txt &  # Run in background using &

__bash tmux multiple terminals in background
# Use tmux to keep terminals running in background
# Intro guide: https://linuxize.com/post/getting-started-with-tmux/
brew install tmux

# Start tmux
tmux

# Hotkeys
Ctrl + B + <hotkey>
d         detach (exit)
%         vertical split
"         horizontal split
o         change pane with y/n
x         kill pane
c         new window
1/2/3/4/5 Change to window 1/2/3/4/5


__bash pipe space sometimes breaking, command not found after pipe
Alt/Option + Space = no-break space = breaks
regular space = works

__bash check file encoding
file -bi filename

__bash input arguments
"$@"      # All arguments
"${@:2}"  # All except first

__bash set default argument
ARG1=${1:-foo}
ARG2=${2:-bar}

__bash split and unsplit screen
Command + D
Command + Shift + D

__bash ask confirm, choice
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff
fi

__awk print second column
awk '{print $(NF-1)}' test.txt

__bash server commands
cat /proc/cpuinfo     # CPU info
lsblk -d -o name,rota # hdd or ssd
top                   # see processes
htop                  # alternative, better top
ps                    # own running processes, ps aux for all server
df -h                 # see disk usage
ulimit -a             # see user resource restrictions

# Check usage
free -m | awk 'NR==2{printf "Memory Usage:\t %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage:\t %d/%dGB (%s)\n", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "CPU Load:\t %.2f\n", $(NF-2)}'
who

__bash server download, upload
# SCP file donwload
scp username@server:PATH_TO_FILE

# sftp interactive download and upload files
sftp username@server
get -R *        # Download everything in folder,  recursively
get orphans.sp  # Download specific file
put sprot1.dat  # Upload specific file from local directory
lcd             # Change local directory

__bash ssh, server setup passwordless login
# SSH keygen
ssh-keygen # Create private and public key wizard
ssh-copy-id user@host #copy key to host
ssh user@host # Check that passwordless login works

__bash ssh, port forwarding
# Port forward from server´s port 9000 to own localhost 9000
ssh -L 9000:localhost:9000 -N -p 9000 username@server
