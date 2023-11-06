#Dont change anything without informing us
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Aaroha22/Nep.git /Nep
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Nep
fi
cd /Nep
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
