# .preferences - bringing sanity to your dotfiles

## Problem:

Everything under the sun wants its own `dotfile` under `$HOME` on your Linux,
BSD, MacOS or whatever box. Some things respect `.config`, many things don't.
It's a total jungle of crap that's absolutely no fun to deal with and can
be so polluted it threatens your productivity and system stability.

## Solution: .preferences

I propose creating `$HOME/.preferences` as a directory to handle all the
dotfiles **YOU** actually care about, thus leaving both `$HOME` dotfiles and
`$HOME/.config` dotfiles largely ignorable. You don't have to know and don't
have to care.

## Structure

+ `$HOME/.preferences`
  + `zshrc`
    + This is your launch point. Symlink into `$HOME/.zshrc`. Manage with
      [git](http://git-scm.org). Automate it with, say, `cron` or whatever.  

      `ln -s $HOME/.preferences/zshrc $HOME/.zshrc`  
  + `env`
    + Set custom environment variables **THAT ARE NOT SECURITY-RELATED**. See
      the "secrets" file for that. *This should also be .gitignored by default.*

  + `secrets-example`
    + In practice, rename this: `cp secrets-example secrets` and then edit from
      there. **Take extra care NOT to commit any API keys, tokens, usernames,
      passwords, magic numbers or anything else sensitive in git.**
    + This file itself is tracked/committed, but `secrets` is `.gitignored`.
  + `paths`
    + Set your own custom $PATH, or other related variables (e.g. $MANPATH,
      $GOPATH, etc.)
  + `aliases`
    + I once knew a guy who always fat-fingered his git status command as
      `gut status`. This is where you add an alias to `git status` and then
      `echo "HUNGRY! OMNOMNOMNOM!"`
    + Also, `mkdir` annoys me. I like `mkdir -p`. :smiley:
  + `misc`
    + Doesn't fit above? Shove it in here. Beware: there's no standardization,
      protection, "convention over configuration" or any form of "rules" here.
      **This is the wild west. If you screw up, it's on you. No safety net.**


