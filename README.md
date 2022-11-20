## Description

This repository is for leaning debugging the react source code

Original sample code is just a simple react program

> 总的来说,要想debug到React代码,必须增加编译出来的代码到源文件的映射,大家可以参考一下Theia中的TS代码编译出来的lib文件夹,里面都会带有sourcemap文件,这个就是我们能=能够准确映射到原TS代码的关键,所有build-react分支所有的目的都是增加正确的sourcemap映射关系

## Start Debug

* Your node version is higher than or equal to : `16.13.0`
* run `npm run start` on this program root terminal
* Open the debug session, click "Debug react"

you will see something like this:

<img src="images/debug.png" height="400" width="400"/>

## <font color="red">NOTE</font>

For debugging source react code, please refer to branch `build-react`
