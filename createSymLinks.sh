targetDir="${HOME}/Documents/git/"
link="${HOME}/git"

if [ ! $targetDir ]; then
    echo "!!! set up where you want your git directory first! (Adjust 'targetDir' on line 1)"
    exit
fi

echo "=> Found $tartgetDir"

if [ ! -h $link ]; then
  echo "=> 'git' SymLink doesn't exist, will set up now..."
  ln -s $tartgetDir $link
fi

if [ ! -h $link ]; then
  echo "!!! Failed to set up SymLink! Exiting..."
  exit
fi

echo "=> Found symlink $link for $tartgetDir"


########################################################################

targetDir="${HOME}/Documents/playground/"
link="${HOME}/playground"

if [ ! $targetDir ]; then
    echo "!!! set up where you want your playground directory first! (Adjust 'targetDir' on line 26)"
    exit
fi

echo "=> Found $targetDir"

if [ ! -h $link ]; then
  echo "=> 'playground' SymLink doesn't exist, will set up now..."
  ln -s $targetDir $link
fi

if [ ! -h $link ]; then
  echo "!!! Failed to set up SymLink! Exiting..."
  exit
fi

echo "=> Found symlink $link for $targetDir"


