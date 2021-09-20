#!/bin/bash

TARGET_DIR=~/.sync-bas-env
VSCODE_PLUGINS_DIR=vscode-plugins

helpfunction()
{
    echo ""
    echo "Usage: $0 -o [ export | import ]"
    echo -e "\t-o export Creates a tgz file with all relevant SAP BAS files"
    echo -e "\t-o import After unpacking the tgz file it stores the content in the relevant folders, and installs nvm"
    exit 1 # Exit script
}

while getopts "o:" opt
do
    case "$opt" in
        o ) parameterO="$OPTARG" ;;
        ? ) helpfunction ;; # Print help in case parameter unknown
    esac
done

if [ -z "$parameterO" ]
then
    echo "Not all parameters are entered";
    helpfunction
fi

if [ $parameterO == "export" ]
then
    mkdir -p $TARGET_DIR/.theia

    cp -rf ~/.bashrc $TARGET_DIR
    cp -rf ~/.bash_aliases $TARGET_DIR
    cp -rf ~/.profile $TARGET_DIR
    [ -d ~/.scripts ] && cp -rf ~/.scripts $TARGET_DIR
    [ -f ~/.npmrc ] && cp -rf ~/.npmrc $TARGET_DIR
    [ -f ~/.gitignore ] && cp -rf ~/.gitignore $TARGET_DIR
    [ -f ~/.gitconfig ] && cp -rf ~/.gitconfig $TARGET_DIR
    [ -f ~/.git-credentials ] && cp -rf ~/.git-credentials $TARGET_DIR
    [ -f ~/.theia/keymaps.json ] && cp -rf ~/.theia/keymaps.json $TARGET_DIR/.theia
    [ -f ~/.theia/settings.json ] && cp -rf ~/.theia/settings.json $TARGET_DIR/.theia
    [ -d ~/$VSCODE_PLUGINS_DIR ] && cp -rf ~/$VSCODE_PLUGINS_DIR $TARGET_DIR

    cp -rf ~/sync-bas-env.sh $TARGET_DIR

    tar cvfz sync-bas-env.tgz .sync-bas-env/

    rm -R $TARGET_DIR

    echo ""
    echo "SAP BAS Settings successfully exported to sync-bas-env.tgz"
    echo "Import this file to the target SAP BAS environment, unzip, and execute the script"
    echo ""
elif [ $parameterO == "import" ]
then
    cp .bashrc ~
    cp .bash_aliases ~
    cp .profile ~
    [ -d .scripts/ ] && cp -rf .scripts/ ~
    [ -f .npmrc ] && cp -rf .npmrc ~
    [ -f .gitignore ] && cp -rf .gitignore ~
    [ -f .gitconfig ] && cp -rf .gitconfig ~
    [ -f .git-credentials ] && cp -rf .git-credentials ~
    [ -f .theia/keymaps.json ] && cp -rf .theia/keymaps.json ~/.theia/
    [ -f .theia/settings.json ] && cp -rf .theia/settings.json ~/.theia/
    [ -d $VSCODE_PLUGINS_DIR ] && cp -rf $VSCODE_PLUGINS_DIR ~/$VSCODE_PLUGINS_DIR

    cp -rf sync-bas-env.sh ~

    echo ""
    echo "Settings successfully imported into SAP BAS workspace"
    echo ""
    # echo "NVM will now be installed..."
    
    # curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
    # echo "Open a new terminal from SAP BAS, and execute:"
    # echo "$ nvm install 12"
    # echo ""
    echo "To install the VSCode plugins: Ctrl-Shift-P > Deploy Plugin By Id > local-dir:/home/user/vscode-plugins/"
    echo ""
else
    echo "Illegal argument for parameter -o"
    helpfunction
fi
