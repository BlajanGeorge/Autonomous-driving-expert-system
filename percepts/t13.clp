(ag_percept (percept_pobj ev13) (percept_pname isa) (percept_pval event))
(ag_percept (percept_pobj case2) (percept_pname isa) (percept_pval case))
(ag_percept (percept_pobj curr_road) (percept_pname isa) (percept_pval road))
(ag_percept (percept_pobj road_to_left) (percept_pname isa) (percept_pval road))
(ag_percept (percept_pobj lane1) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj lane2) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj lane3) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj lane4) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj semaphore1) (percept_pname isa) (percept_pval semaphore))
(ag_percept (percept_pobj ahead_or_left_road_sign) (percept_pname isa) (percept_pval road_sign))
(ag_percept (percept_pobj ahead_or_right_road_sign) (percept_pname isa) (percept_pval road_sign))
(ag_percept (percept_pobj my_car) (percept_pname isa) (percept_pval car))
(ag_percept (percept_pobj another_car) (percept_pname isa) (percept_pval car))
(ag_percept (percept_pobj cross_walk1) (percept_pname isa) (percept_pval cross_walk))
(ag_percept (percept_pobj give_way) (percept_pname isa) (percept_pval traffic_sign))

(ag_percept (percept_pobj case2) (percept_pname partof) (percept_pval ev13))
(ag_percept (percept_pobj curr_road) (percept_pname partof) (percept_pval ev13))
(ag_percept (percept_pobj road_to_left) (percept_pname partof) (percept_pval ev13))
(ag_percept (percept_pobj lane1) (percept_pname partof) (percept_pval curr_road))
(ag_percept (percept_pobj lane2) (percept_pname partof) (percept_pval curr_load))
(ag_percept (percept_pobj lane3) (percept_pname partof) (percept_pval road_to_left))
(ag_percept (percept_pobj lane4) (percept_pname partof) (percept_pval road_to_left))
(ag_percept (percept_pobj semaphore1) (percept_pname partof) (percept_pval curr_road))
(ag_percept (percept_pobj ahead_or_left_road_sign) (percept_pname partof) (percept_pval lane1))
(ag_percept (percept_pobj ahead_or_right_road_sign) (percept_pname partof) (percept_pval lane2))
(ag_percept (percept_pobj my_car) (percept_pname partof) (percept_pval ev13))
(ag_percept (percept_pobj cross_walk1) (percept_pname partof) (percept_pval road_to_left))

(ag_percept (percept_pobj semaphore1) (percept_pname color) (percept_pval orange))
(ag_percept (percept_pobj another_car) (percept_pname distance) (percept_pval 20))
(ag_percept (percept_pobj my_car) (percept_pname position) (percept_pval lane1))
(ag_percept (percept_pobj cross_walk1) (percept_pname people) (percept_pval no))
(ag_percept (percept_pobj another_car) (percept_pname position) (percept_pval lane3))
(ag_percept (percept_pobj another_car) (percept_pname direction) (percept_pval E))