# Summary
THIS IS NOT A WORKING REPOSITORY. This has things that I excluded, but I am sharing this as a way to show how to construct a runpod gpu / serverless function as-if everything was working. The reason why this is not working, is b/c the handler.py is not valid, and I deleted some private files. But the concept is there / valid.


# The way this repository is structured
1. You can build a docker image with the dockerfile_pod
This will give you an image that you can use with runpod's gpu pod offering. So you can debug and manually run and test the handler.py by just calling it and not calling the runpod serverless start function.

2. From there you can have a docker image with the dockerfile so that you can build the serverless function. This is an image that you can use with runpod's serverless offering, and will be way faster to build since you don't need to load the model building this rather just update the handler.py file. The base image will already have the model installed. 

3. You can see in dockerfile_pod, I don't overwrite the CMD command, b/c it is using the default CMD from runpod which starts up jupyter notebook / openssh server. If you do override the CMD command, you won't be able to use these.

Note if you want to override the CMD command, just make sure you call the start.sh script. MAKE SURE YOU KNOW WHERE THE start.sh script is. If you are confused, can just spin your thing up on without overriding the CMD command on runpod, look around in the terminal / jupyter labs where it is, record the path, and tell chatgpt to help you modify the CMD command to do your custom command + start.sh:

https://blog.runpod.io/serverless-create-a-basic-api/

https://blog.runpod.io/diy-deep-learning-docker-container/
