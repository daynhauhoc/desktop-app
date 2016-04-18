install:
				npm install -g nativefier

all:
				make osx && make linux && make win
osx:
				rm -rf DayNhauHoc-darwin-x64* && \
				nativefier --platform osx --name DayNhauHoc "http://daynhauhoc.com" && \
				tar -zcvf DayNhauHoc-darwin-x64.tar.gz DayNhauHoc-darwin-x64

linux:
				rm -rf DayNhauHoc-linux-x64* && \
				nativefier --platform linux --name DayNhauHoc "http://daynhauhoc.com" && \
				tar -zcvf DayNhauHoc-linux-x64.tar.gz DayNhauHoc-linux-x64

win:
				rm -rf DayNhauHoc-win32-x64* && \
				nativefier --platform windows --name DayNhauHoc "http://daynhauhoc.com" && \
				tar -zcvf DayNhauHoc-win32-x64.tar.gz DayNhauHoc-win32-x64
