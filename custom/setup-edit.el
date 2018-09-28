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
(require-package 'smooth-scrolling)
(smooth-scrolling-mode 1)

;;����ʱ�Զ�ɾ����β�ո�
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'setup-edit)
