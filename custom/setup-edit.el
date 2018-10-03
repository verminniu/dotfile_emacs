;;; package -- edit conf
;;;
(set-terminal-coding-system 'gb2312)
(set-keyboard-coding-system 'gb2312)
(set-language-environment "Chinese-GB")
(prefer-coding-system 'gb2312)

(require-package 'iedit)
(setq iedit-toggle-key-default nil)

(require-package 'ztree)
(setq ztree-diff-additional-options '("-w"))

;; ���Ӵ��ڴ�С����
(require-package 'windsize)
(windsize-default-keybindings) ; C-S-<left/right/up/down>

(require-package 'window-numbering)
(window-numbering-mode 1)

;; �����Զ�����л�
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))

;; ƽ������
;;(require-package 'smooth-scrolling)
;;(smooth-scrolling-mode 1)

;;����ʱ�Զ�ɾ����β�ո�
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; cquery�ȵĺ���������ȫ�������
;; Package: yasnippet
;; GROUP: Editing -> Yasnippet
;; Package: yasnippet
(use-package yasnippet
  :defer t
  :init
  (add-hook 'prog-mode-hook 'yas-minor-mode))

;; �����к�
(global-display-line-numbers-mode)

(provide 'setup-edit)
