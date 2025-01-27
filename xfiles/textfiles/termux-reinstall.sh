#!/data/data/com.termux/files/usr/bin/bash
pkg in  root-repo unstable-repo x11-repo
PACKAGES_TO_INSTALL="apt
aria2
atilo
autoconf
automake
axel
bash
bash-completion
bc
binutils
bison
bsdtar
busybox
bzip2
c-ares
ca-certificates
clang
cmake
cmatrix
command-not-found
coreutils
curl
dash
diffutils
dos2unix
dpkg
e2fsprogs
ed
fakeroot
figlet
file
findutils
fish
flex
fontconfig
freetype
game-repo
gawk
gdbm
git
glib
gnupg
gnutls
gpgv
grep
gzip
htop
hydra
inetutils
jsoncpp
krb5
ldns
less
libandroid-glob
libandroid-support
libarchive
libassuan
libbz2
libc++
libcaca
libcrypt
libcurl
libdb
libedit
libexpat
libffi
libgc
libgcrypt
libgd
libgmp
libgnutls
libgpg-error
libiconv
libidn
libidn2
libjpeg-turbo
libksba
libllvm
libltdl
liblua
liblzma
libmpfr
libnettle
libnghttp2
libnpth
libpcap
libpng
libsqlite
libssh
libssh2
libtalloc
libtiff
libtool
libunistring
libutil
libuuid
libuv
libwebp
libxml2
lynx
m4
make
man
micro
mtools
nano
ncurses
ncurses-ui-libs
ncurses-utils
ndk-sysroot
neofetch
net-tools
netcat
nmap
nnn
openssh
openssl
openssl-tool
patch
pcre
pcre2
perl
php
pinentry
pkg-config
procps
proot
psmisc
pv
python
python2
ranger
readline
resolv-conf
rhash
root-repo
science-repo
screenfetch
sed
shared-mime-info
silversearcher-ag
sl
tar
tcpdump
termux-am
termux-api
termux-auth
termux-exec
termux-keyring
termux-licenses
termux-tools
tmux
toilet
tracepath
tree
tsu
unzip
util-linux
vim
vim-runtime
w3m
wget
wireless-tools
xz-utils
zip
zlib
zsh"
apt install $(comm -12 <(echo "${PACKAGES_TO_INSTALL}") <(apt list 2>&1 | awk -F"/" '{print $1}'))
