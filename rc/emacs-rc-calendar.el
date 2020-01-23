;;; emacs-rc-calendar.el --- 

;;(setq display-time-24hr-format t)
(setq calendar-week-start-day 1)        ; Monday
(setq european-calendar-style t)
(setq calendar-time-display-form
      '(24-hours ":" minutes (and time-zone (concat " (" time-zone ")"))))


(setq calendar-latitude 55.45)
(setq calendar-longitude 37.36)
(setq calendar-location-name "Moscow")

;; (load-library "time")
(setq display-time-24hr-format t
      display-time-mail-file t
      display-time-form-list (list 'time 'load)
      display-time-day-and-date t)
(display-time-mode t)
