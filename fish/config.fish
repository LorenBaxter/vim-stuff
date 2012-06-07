function gc
	git cam $argv
end;

function gs
	git status $argv
end;

function gd
	git diff $argv
end;

function gp
	git pull $argv
end;

function gpp
	git push $argv
end;

function ga
	git add $argv
end;

# Show git branch in prompt
function fish_prompt
  set_color $fish_color_cwd
  echo -n (pwd)
  set_color normal
  echo -n ' '
  echo -n (git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')
  echo -n ' > '
end;
