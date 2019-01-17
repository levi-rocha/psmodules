## How to use

- Edit `l_profile.ps1` and change the `ps_modules` var to match your own repo path
- Edit your $PsHome\Profile.ps1 (this script runs every time you open an instance of powershell) and add the following lines:

```powershell
$ps_modules_home = 'YOUR_PSMODULES_REPO_PATH'
. ($ps_modules_home + 'l_profile.ps1')
```

- The import function will now be available. Use it to load whatever modules you want (still in your Profile.ps1):
```powershell
import git
```
