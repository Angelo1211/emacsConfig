;; Configure package.el to inclue MELPA.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Ensure that packages are intiialized
;;
;; If use-package isn't already installed, it's extremely likely that this is a
;; fresh isntallation? So we'll want to update the package repository and
;; install use-package before loading the literate configuration
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file "~/.emacs.d/configuration.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (helm-rg solarized-theme moody use-package)))
 '(safe-local-variable-values
   (quote
    ((eval setq projectile-project-debug-cmd
           (concat "scripts\\debug.bat" " " projectile-project-name))
     (projectile-project-root . "W:\\KRC\\")
     (projectile-project-name . "KRC")
     (projectile-project-root . "W:\\VKEngine\\")
     (projectile-project-name . "VKEngine")
     (projectile-project-name . "Dx11Engine")
     (projectile-project-root . "W:\\Dx11Engine\\")
     (eval setq projectile-project-compilation-cmd
           (concat "scripts\\build.bat" " " projectile-project-name))
     (eval setq projectile-project-compilation-cmd
           (concat "scripts\\build.bat" projectile-project-name))
     (eval setq projectile-project-compilation-cmd
           (concat "scripts" "\\" "build.bat"))
     (projectile-project-compilation-cmd eval concat "scripts" "\\" "build.bat")
     (projectile-project-compilation-cmd concat "scripts" "\\" "build.bat")
     (projectile-project-compilation-cmd "scripts\\build.bat")
     (projectile-project-compilation-cmd concat "scripts\\build.bat " projectile-project-name)
     (projectile-project-compilation-cmd eval
                                         (concat "scripts\\build.bat " projectile-project-name))
     (eval projectile-project-compilation-cmd concat "scripts\\build.bat " projectile-project-name)
     (projectile-project-root . "W:\\HandmadeHero\\")
     (projectile-project-debug-cmd . "scripts\\debug.bat")
     (projectile-project-name . "HandmadeHero")
     (projectile-project-root . "W:\\HandmadeHero")
     (projectile-project-compilation-cmd . "scripts\\build.bat")
     (projectile-project-compilation-cmd . "script\\build.bat")
     (projectile-enable-caching . t)
     (projectile-project-root . ".\\")
     (compile-dir . "\\scripts")
     (compile-dir . "scripts")
     (projectile-compilation-cmd . "scripts\\build.bat")
     (projectile-project-dir . projectile-project-root)
     (projectile-compilation-cmd . "scripts\\build.bat main.cpp")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
