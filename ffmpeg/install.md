# install ffmpeg on ubuntu 20.04

### 安装依赖

`sudo apt install libunistring-dev libaom-dev libdav1d-dev`


### 编译安装

```
./configure --prefix=/home/clyde/builds/ffmpeg --enable-gpl --enable-nonfree --enable-libfdk-aac --enable-libx264 --enable-libx265 --enable-filter=delogo --enable-debug --disable-optimizations --enable-libspeex  --enable-shared --enable-pthreads --enable-version3 --enable-hardcoded-tables --cc=gcc --host-cflags= --host-ldflags= --disable-x86asm
make -j2 
make install
```

### ldconfig

```
echo "/home/clyde/builds/ffmpeg/lib" > /etc/ld.so.conf.d/ffmpeg.conf 
ldconfig
```

### 设定环境变量

`export PATH=$HOME/builds/ffmpeg/bin:$PATH`


### refer

- https://zhuanlan.zhihu.com/p/80895966
- https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu

