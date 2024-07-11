if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jot4349/Autofilter-render/.git /Autofilter-render
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Autofilter-render
fi
cd /Autofilter-render
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
