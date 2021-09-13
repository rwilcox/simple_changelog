#lang cli

; ==============================================================================================
; set up CLI language / settings
; =============================================================================================
(help (usage "A changelog capture and summarizing program.")
      (labels "subcommand"))

(flag (file  in-file-path)
      ("-f" "--file" "filepath to write the changelog to. Can NOTE use --file=foo must use --file foo")

      ; set the value of the flag to (the value), else it will default to #f
      (file in-file-path))

(program (hello
          [subcommand "add, changed, delete or search"]
          [entryTxt "text or page reference"]
          )
  (displayln subcommand)
  (displayln (file))   ; it is a procedure!
)


; ==============================================================================================
; main
; =============================================================================================
(run hello)
; (run hello #( "--file=foo" "add" "paage name"))
; ^^^ lets us trigger from DrRacket etc
