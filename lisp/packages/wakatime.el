(require 'use-package)
(setq use-package-always-ensure t)
(use-package wakatime-mode)
(custom-set-variables
 '(wakatime-api-key "THE-WAKATIME-API-KEY")
 '(wakatime-cli-path "result of `which wakatime` command"))
(global-wakatime-mode)
