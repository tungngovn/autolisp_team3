(defun truc ()
  

; 
  (if (and (> dbrt 10) (<= dbrt 17))
    (setq bth1 5
    )
  )
  (if (and (> dbrt 17) (<= dbrt 22))
    (setq bth1 6
    )
  )
  (if (and (> dbrt 22) (<= dbrt 30))
    (setq bth1 8
    )
  )
  (if (and (> dbrt 30) (<= dbrt 38))
    (setq bth1 10
    )
  )
  (if (and (> dbrt 38) (<= dbrt 44))
    (setq bth1 12
    )
  )
  (if (and (> dbrt 44) (<= dbrt 50))
    (setq bth1 14
    )
  )
  (if (and (> dbrt 50) (<= dbrt 58))
    (setq bth1 16
    )
  )
  (if (and (> dbrt 58) (<= dbrt 65))
    (setq bth1 18
    )
  )
  (if (and (> dbrt 65) (<= dbrt 75))
    (setq bth1 20
    )
  )
  (if (and (> dbrt 75) (<= dbrt 85))
    (setq bth1 22
    )
  )
  (if (> dbrt 85)
    (setq bth1 24
    )
  )


  (if (and (> dbrn 12) (<= dbrn 17))
    (setq bth2 5
    )
  )
  (if (and (> dbrn 17) (<= dbrn 22))
    (setq bth2 6
    )
  )
  (if (and (> dbrn 22) (<= dbrn 30))
    (setq bth2 8
    )
  )
  (if (and (> dbrn 30) (<= dbrn 38))
    (setq bth2 10
    )
  )
  (if (and (> dbrn 38) (<= dbrn 44))
    (setq bth2 12
    )
  )
  (if (and (> dbrn 44) (<= dbrn 50))
    (setq bth2 14
    )
  )
  (if (and (> dbrn 50) (<= dbrn 58))
    (setq bth2 16
    )
  )
  (if (and (> dbrn 58) (<= dbrn 65))
    (setq bth2 18
    )
  )
  (if (and (> dbrn 65) (<= dbrn 75))
    (setq bth2 20
    )
  )
  (if (and (> dbrn 75) (<= dbrn 85))
    (setq bth2 22
    )
  )
  (if (> dbrn 85)
    (setq bth2 24
    )
  )


(setq tsobi '( ;  d1  D     b   r   r1  
	     ;nth     0   1     2   3   4
		      (20 52 15 2 1)
			  (25 62 17 2 1)
			  (30 72 19 2 1)
			  (35 80 21 2.5 1.2)
			  (40 90 23 2.5 1.2)
			  (45 100 25 2.5 1.2)
			  (50 110 27 3 1.5)
			  (60 130 31 3 1.5)
			  (65 140 33 3.5 2.0)
			  (70 150 35 3.5 2)
			  (90 190 43 4 2)
			  (100 215 47 4 2)
			  (150 320 65 5 2.5)
		   )

      )
	(setq item (assoc dobi tsobi))   
    (setq tobi (nth 2 item))   

  (setq tr0  (getpoint "Nh\U+1EADp \U+0111i\U+1EC3m \U+0111\U+1EC3 b\U+1EAFt \U+0111\U+1EA7u v\U+1EBD tr\U+1EE5c:")
	
		tr1 (polar tr0 g270 (+ 4 (* tobi 2.0)))
	tr2 (polar tr1 g270 (- bbrt 1.0))
	tr3 (polar tr2 g270 (/ bbrt 4.0))
	tr4 (polar tr3 g270 (- bbrn 2.0))
	tr5 (polar tr4 g270 (+ (* tobi 2.0) 5.0))
	tr6 (polar tr5 g90 1.0)
	tr7 (polar tr0 g270 1.0)
	tr8 (polar tr0 g0 (- (* 0.5 dobi) 1.0))
	tr9 (polar tr7 g0 (* 0.5 dobi))
	tr10 (polar tr1 g0 (* 0.5 dobi))
	tr11 (polar tr1 g0 (* 0.5 dbrt))
	tr12 (polar tr2 g0 (* 0.5 dbrt))
	tr13 (polar tr2 g0 (* (+ 5.0 dbrt) 0.5))
	tr14 (polar tr3 g0 (* (+ 5.0 dbrt) 0.5))
	tr15 (polar tr3 g0 (* 0.5 dbrn))
	tr16 (polar tr4 g0 (* 0.5 dbrn))
	tr17 (polar tr4 g0 (* 0.5 dobi))
	tr18 (polar tr6 g0 (* 0.5 dobi))
	tr19 (polar tr5 g0 (- (* 0.5 dobi) 1.0))
	
	th1 (polar tr1 g270 (* 0.1 (- bbrt 1)))
	th2 (polar th1 g270 (/ bth1 2))
	th3 (polar th2 g180 (/ bth1 2))
	th4 (polar th2 g0 (/ bth1 2))
	th5 (polar tr2 g90 (* 0.1 (- bbrt 1)))
	th6 (polar th5 g90 (/ bth1 2))
	th7 (polar th6 g180 (/ bth1 2))
	th8 (polar th6 g0 (/ bth1 2))
        th20 (polar th3 g270 (/ bbrt 5.0))
        th21 (polar th4 g270 (/ bbrt 5.0))
        th22 (polar th7 g90 (/ bbrt 5.0))
        th23 (polar th8 g90 (/ bbrt 5.0))

	th10 (polar tr3 g270 (* 0.1 (- bbrn 2.0)))
	th11 (polar th10 g270 (/ bth2 2.0))
	th12 (polar th11 g180 (/ bth2 2.0))
	th13 (polar th11 g0 (/ bth2 2.0))
	th14 (polar tr4 g90 (* 0.1 (- bbrn 2.0)))
	th15 (polar th14 g90 (/ bth2 2.0))
	th16 (polar th15 g180 (/ bth2 2.0))
	th17 (polar th15 g0 (/ bth2 2.0))
	pc1 (polar tr0 g270 (/ (distance tr0 tr5) 2.0))
	pc2 (polar pc1 g0 88)
  	
        px1 (polar tr0 g90 35)
	px2 (polar tr5 g270 35)
)
    
	
			  			  
 ;noi diem
(command "-layer" "m""_mss.bao" "" "")
(setq cv (ssadd))

(command ".pline" tr0 tr8 tr9 tr10 tr11 tr12 tr13 tr14 tr15 tr16 tr17 tr18 tr19 tr5 "")
(ssadd (entlast) cv)
(command ".line" tr7 tr9 "")
(ssadd (entlast) cv)
(command ".line" tr1 tr10 "")
(ssadd (entlast) cv)
(command ".line" tr2 tr12 "")
(ssadd (entlast) cv)
(command ".line" tr3 tr15 "")
(ssadd (entlast) cv)
(command ".line" tr4 tr17 "")
(ssadd (entlast) cv)
(command ".line" tr6 tr18 "")
(ssadd (entlast) cv)



(command "line" th4 th21 "")
(ssadd (entlast) cv)
(command "line" th8 th23 "")
(ssadd (entlast) cv)
(command "line" th13 th17 "")
(ssadd (entlast) cv)
(command "arc" th8 th5 th7 "")
(command "arc" th3 th1 th4 "")
(command "arc" th13 th10 th12 "")
(command "arc" th17 th14 th16 "")

(setq cv1 (ss-mirror cv tr0 tr5 1))
(command "-layer" "m"	"_mss.tam" "" "")
(command ".line" px1 px2 "")
(command "-layer" "m"	"_mss.bao" "" "")
)
;het ham ve truc

; Main
(defun c:truc ()
  (truc)
)