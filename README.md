# Launch

Easily launch apps with the most beautiful bash without ncurse can provide (the previous sentence was subjective and can't be used against me.)  
  
## Install
```bash
$ sudo ./install.sh
```
  
## Usage
Create a file named `launchfile` on you app's parent folder.  
Here is a list of useful functions and features:

**cmd** : Execute a command.  
> **Exemple**:  
> ```bash
> cmd echo "hi everyone"
> ```  

**app_info**: Tells **launch** that you want to deploy an app.
> **Exemple**:  
> ```bash
> app_info "front"
> ```  

**launch_app**: Deploy the app in backgound.
> **Exemple**:  
> ```bash
> launch_app npm start
> ```  

**arg_exists**: Deploy the app in backgound.
> **Exemple**:  
> ```bash
> if arg_exists "--all"; then
>   # Do something
> fi
> ```  

Launch will stop the previous app if there is one.  
Be careful, for each app, two files are being created: `<app>.pid` and `<app>.log`, don't delete the first or launch won't be able to stop the previous running app. Of course you can find all your app's logs on the `<app>.log` file.  

If tou start launch with `--redirect` you will not see the `exe` commands output, it will be redirected to a given file.
