function gb { git symbolic-ref --short HEAD }
function gs {
	git status
	$git_branch = gb
	Write-Host "Branch: $git_branch" -ForegroundColor Cyan
}
function go {git checkout $args[0] $args[1]}
function gpsu {
	$git_branch = gb
	git push --set-upstream origin $git_branch
}
function guff { git pull --ff-only }
function yoda {
	$git_branch = gb
	git push --force origin $git_branch
}
function gd { git diff --minimal }
function glog {
	git log --graph --pretty=format:'%C(yellow)%h -%C(auto)%d %C(bold cyan)%s %C(bold white)(%cr)%Creset %C(dim white)<%an>'
}
function gaa { git add . }
function gmm { git commit -m $args[0] }
function lastcommit { log | select -first 1 | %{$_.split('-')[0]} | %{$_.substring(2)} }
