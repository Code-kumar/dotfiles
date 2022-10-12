# Naveen's 'Dotfiles'
**Warning**: Don’t blindly use my settings unless you know what that entails. Use at your own risk!

Hi, there! 👋

In this Repo you'll find my personal **Dotfiles** I use for configs, customization and themes for both my WSL and Windows environment.

> If you want the same configuration and theme for your both WSL & Terminal simontensly then follow the below steps: 


## Steps:

- Setup Nerd Fonts
- Install Powershell 
- Setup WSL (Windows Subsystem for Linux)
- Configure Theme Using Starship


## 1. Setup Nerd Fonts 

We don't need to install multiple fonts here I used Hack Nerd Font: <br />
(It'll give you Icons as well)

[Nerd Fonts](https://www.nerdfonts.com/)

## 2. Install PowerShell 
- Goto Microsoft Store search PowerShell and Install.
- Color scheme: you can use my [Color scheme](https://github.com/Code-kumar/dotfiles/blob/7ed03add54cfbdb832d6230a8a08db2c1fc6ac80/VS%20Code%20ColorScheme/settings.json) 
```
Settings > App > select PowerShell profile > Appearance
Set:
• Color scheme: nk terminal 
• Font face: Hack NF
• Background opacity: 38%
• Enable acrylic material

Yay!!!! almost there...
```
- Make your user profile and set command aliases: (open terminal)

```bash
  test-path $profile
```
- If it returns True then type: (it'll give you the path of the file)
```bash
  $profile
```
- If that returns False then we need to create a new Profile
```bash
  New-Item -Path $profile -Type File -Force
```
> You'll get a file something like **Microsoft.PowerShell_profile.ps1**  you can use [My file](https://github.com/Code-kumar/dotfiles/blob/7ed03add54cfbdb832d6230a8a08db2c1fc6ac80/Powershell%20Profile/Microsoft.PowerShell_profile.ps1) as reference to Import 

-  Paste this into your **Microsoft.PowerShell_profile.ps1**  
```bash
  Import-Module -Name Terminal-Icons

  # # PSReadLine
  Set-PSReadLineOption -EditMode Emacs
  Set-PSReadLineOption -BellStyle None
  Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
  Set-PSReadLineOption -PredictionSource History

  # Config Starship theme file
  $ENV:STARSHIP_CONFIG = "C:\Users\username\.config\starship.toml"
```
- Please make sure you're using the correct path for $ENV:STARSHIP_CONFIG 
- the **starship.toml** file you can find my [Theme](https://github.com/Code-kumar/dotfiles/tree/master/Theme%20file) foler.
- or you can create your own theme using [starship config](https://starship.rs/config/).



### Modules: 
In the same PowerShell directory you can install your Modules:
-  **Terminal Icons**
```bash
  Install-Module -Name Terminal-Icons -Repository PSGallery -Force
  Import-Module terminal-Icons
```
-  **PSReadLine**
```bash
  Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
  Set-PSReadLineOption -PredictionSource History
```
- Nerd Fonts for Icons 

    [Install Nerd Font](https://webinstall.dev/nerdfont/) using your WSL Shell.

- **Linux**: 
```
    curl -sS https://webi.sh/nerdfont | sh
```
- **Bash**: 
```
    curl -sS https://webi.sh/nerdfont | bash
```

- You can find your Icons in this directory 
```
    ~/.local/share/fonts/
```
As we're using **Hack NF** font just copy & paste the font file from [Shell fonts](https://github.com/Code-kumar/dotfiles/tree/master/Shell%20fonts) folder to above mentioned directory, Make sure all the font file should be in **.OTF** file format.
## 2. Setup WSL (Windows Subsystem for Linux) 

[Install Linux on Windows with WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
<br /> (Follow the steps in the guide and setup your Distro like I'm using Ubuntu).

- **Copy & paste** the files from [Bash files for WSL](https://github.com/Code-kumar/dotfiles/tree/master/Bash%20files%20for%20WSL)
- **To**: Linux/ubuntu/home/(username)
> Note: Please always keep your backups of the original files.

## 3. Configure Theme Using Starship

- Install Starship using WSL Shell:
```
    curl -sS https://starship.rs/install.sh | sh
```
- Make sure your **starship.toml** should be in your .config root folder if don't have create one, also you can find the starship.toml in my [Theme](https://github.com/Code-kumar/dotfiles/tree/master/Theme%20file) foler 

(I used [Starship](https://starship.rs/) to sync one theme file for both WSL shell and Windows Prompt).

### But you can also use:

 - [Oh My Posh](https://ohmyposh.dev/)
 - [Oh My ZSH](https://ohmyz.sh/)
 - [Oh My BASH](https://ohmybash.nntoan.com/)

 
## 🥳 Congrats!! you've finally made it.  
