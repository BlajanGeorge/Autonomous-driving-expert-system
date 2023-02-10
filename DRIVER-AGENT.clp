(defrule AGENT::take_decision_ev17_case3
(declare (salience 0))
?i<-(ag_bel (bel_pobj ?ev) (bel_pname isa) (bel_pval event))
(ag_bel (bel_pobj case3))
(ag_bel (bel_pobj another_car) (bel_pname distance) (bel_pval ?distance))
=>
(if (>= ?distance 50) then (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval allowed))) else (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval prohibited))))
(retract ?i)
)

(defrule AGENT::take_decision_ev13_case2
(declare (salience 0))
?i<-(ag_bel (bel_pobj ?ev) (bel_pname isa) (bel_pval event))
(ag_bel (bel_pobj case2))
(ag_bel (bel_pobj semaphore1) (bel_pname color) (bel_pval ?color))
(ag_bel (bel_pobj another_car) (bel_pname distance) (bel_pval ?distance))
(ag_bel (bel_pobj another_car) (bel_pname position) (bel_pval ?lane))
(ag_bel (bel_pobj ?sign) (bel_pname isa) (bel_pval traffic_sign))
(ag_bel (bel_pobj another_car) (bel_pname direction) (bel_pval ?direction))
(ag_bel (bel_pobj cross_walk1) (bel_pname people) (bel_pval ?p))
(test (or (eq ?ev ev13) (eq ?ev ev14) (eq ?ev ev15) (eq ?ev ev16)))
=>
(if (eq ?p yes) then (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval prohibited)))
else
(if (not (eq ?color red))
  then (if (eq ?sign give_way)
    then (if (and (or (eq ?lane lane3) (eq ?lane lane4)) (<= ?distance 50) (or (eq ?direction E) (eq ?direction V))) then (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval prohibited))) else (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval allowed))))
    )
  else (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval prohibited)))
  )
)
(retract ?i)
)

(defrule AGENT::take_decision_ev10_case2
(declare (salience 0))
?i<-(ag_bel (bel_pobj ?ev) (bel_pname isa) (bel_pval event))
(ag_bel (bel_pobj case2))
(ag_bel (bel_pobj semaphore1) (bel_pname color) (bel_pval ?color))
(ag_bel (bel_pobj my_car) (bel_pname position) (bel_pval ?lane))
(ag_bel (bel_pobj cross_walk1) (bel_pname people) (bel_pval ?people))
(ag_bel (bel_pobj ahead_or_left_road_sign) (bel_pname partof) (bel_pval ?lane2))
(test (or (eq ?ev ev10) (eq ?ev ev11) (eq ?ev ev12)))
=>
(if (and (not (eq ?color red)) (eq ?lane ?lane2) (eq ?people no))
then (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval allowed))) (retract ?i)
else (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval prohibited))) (retract ?i)
))


(defrule AGENT::take_decision
(declare (salience 0))
(ag_bel (bel_type moment) (bel_pname isa) (bel_pval event) (bel_pobj ?ev))
?i<-(ag_bel (bel_type fluent) (bel_pname road_to_left_present) (bel_pval ?road_to_left_val))
(ag_bel (bel_pobj current_line) (bel_pname type) (bel_pval ?line_type))
(ag_bel (bel_pobj another_car) (bel_pname distance_to_my_car) (bel_pval ?distance))
(ag_bel (bel_pobj my_car) (bel_pname speed) (bel_pval ?speed))
(ag_bel (bel_pobj case1))
=>
(if (and (or (eq ?ev ev1) (eq ?ev ev2) (eq ?ev ev3) (eq ?ev ev4) (eq ?ev ev5) (eq ?ev ev6)) (eq ?road_to_left_val "yes") (eq ?line_type dashed) (>= ?distance 50) (<= ?speed 10))
then (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval allowed))) (retract ?i)
else (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval prohibited))) (retract ?i))
)

(defrule AGENT::take_decision_case_1_ev7
(declare (salience 1))
(ag_bel (bel_pobj traffic_sign_no_entry))
?i<-(ag_bel (bel_type fluent) (bel_pname road_to_left_present) (bel_pval ?road_to_left_val))
(ag_bel (bel_pobj case1))
=>
(assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval prohibited)))
(retract ?i)
)

(defrule AGENT::take_decision_case_1_ev_8_9
(declare (salience 1))
(ag_bel (bel_type moment) (bel_pname isa) (bel_pval event) (bel_pobj ?ev))
?i<-(ag_bel (bel_type fluent) (bel_pname road_to_left_present) (bel_pval ?road_to_left_val))
(ag_bel (bel_pobj current_line) (bel_pname type) (bel_pval ?line_type))
(ag_bel (bel_pobj another_car) (bel_pname distance_to_my_car) (bel_pval ?distance))
(ag_bel (bel_pobj my_car) (bel_pname speed) (bel_pval ?speed))
(ag_bel (bel_pobj ?road_sign) (bel_pval road_sign))
(ag_bel (bel_pobj case1))
=>
(if (and (or (eq ?ev ev9) (eq ?ev ev8)) (eq ?road_to_left_val "yes") (eq ?line_type dashed) (>= ?distance 50) (<= ?speed 10) (eq ?road_sign road_sign_go_ahead_or_left))
then (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval allowed))) (retract ?i)
else (assert (ag_bel (bel_type moment) (bel_pname turn_left) (bel_pval prohibited))) (retract ?i))
)

(defrule AGENT::check_road_to_left
(declare (salience 2))
(ag_bel (bel_pobj road_to_left))
?i<-(ag_bel (bel_type fluent) (bel_pname road_to_left_present) (bel_pval "no"))
(ag_bel (bel_pobj case1))
=>
(retract ?i)
(assert (ag_bel (bel_type fluent) (bel_pname road_to_left_present) (bel_pval "yes")))
)

(defrule AGENT::instantiate_agent_belief_regarding_road_to_left
(declare (salience 3))
(timp (valoare ?))
(ag_bel (bel_pobj case1))
=>
(assert (ag_bel (bel_type fluent) (bel_pname road_to_left_present) (bel_pval "no")))
)



