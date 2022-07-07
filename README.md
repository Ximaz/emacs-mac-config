# Emacs Configuration for MacOS Users
This repository contains diffrent files that correspond to an Emacs configuration home-made. If you're new to Emacs and you come from Visual Studio Code, you may want to retrieve the same shortcuts, or at least, the most important of them. However, Emacs has some features that are binded with keys you would normally use to do something different in other editors. So, this configuration won't be able to bring all them back.

## The shortcuts themselves
The most important shortcuts to know are located into the `shortcuts.txt` file. It list out all the binding that were made into `lisp/shortcuts.el` file, where is contained all re-bindings.

## The UI
The UI got a lil bit reworked to make it tiner and friendly as most as possible. This project will continue to get modifications to tend to get the most friendly usable configuration.

## The EPITECH's plugin
The EPITECH's plugin is also included into the `lisp` folder and no binding was redifined about this one, since they are pretty usable, excepted for the `fn` key. The `fn` key, when used with the delete key, is supposed to delete forward characters. The EPITECH's plugin re-binds this key and it's very frustrating. However, this project doesn't contain the re-binding part, so the `fn` key works as it should.

## Backups
The backup feature has been reworked. To not pollute your EPITECH projects and repos, the bakcup file `*.*~` are getting redirected to this folder : `~/.emacs.d/backup`
A versioning feature is used by Emacs itself to get many verison of the same file, which make a complete backup feature.

## Setup
### Downloading
To setup this configuration, you have to download this repo, or clone it if you are already familiar with it. Then, if you downloaded from the GitHub's website, you will have to extract the content of the archive.

### Installing
Get into the repository's folder and find the `init.el`. Move it to your `.emacs.d` folder which should be located at `~/.emacs.d/`. Repeat the same operation with the `lisp` folder. You should have something similar to this :
```
~/.emacs.d/
    init.el
    lisp/
        other_el_files.el
```

### Ready to go
You can now start Emacs and use the new cool shortcuts !
