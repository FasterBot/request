if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/FasterBot/request /request
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /request
fi
cd /request
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
