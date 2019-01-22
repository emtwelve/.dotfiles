(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'evil)
(evil-mode 1)
(setq evil-normal-state-cursor '("red" box)) ;hi

