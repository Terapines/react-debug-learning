## Description

This repository is for leaning debugging the react source code

Original sample code is just a simple react program


## Start debug

* Make sure your node version is higher than or equal to : 16.13.0
* run `npm run start` on the this program root folder
* Open the debug session, click "Debug react"

you will see something like this:

<img src="images/debug.png" height="400" width="100%"/>

## This chapter will add our built react package

* `git clone https://github.com/facebook/react`
* Modify the script `scripts/rollup/build.js`
    ** You can just copy the `utils/build.js to replace`, remmber to change this
    <img src="images/note.png" height="100%" width="100%"/>