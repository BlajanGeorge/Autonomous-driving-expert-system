(ag_percept (percept_pobj ev4) (percept_pname isa) (percept_pval event))
(ag_percept (percept_pobj current_road) (percept_pname isa) (percept_pval road))
(ag_percept (percept_pobj road_to_left) (percept_pname isa) (percept_pval road))
(ag_percept (percept_pobj my_lane) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj other_lane) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj current_line) (percept_pname isa) (percept_pval line))
(ag_percept (percept_pobj my_car) (percept_pname isa) (percept_pval car))
(ag_percept (percept_pobj another_car) (percept_pname isa) (percept_pval car))
(ag_percept (percept_pobj case1) (percept_pname isa) (percept_pval case))

(ag_percept (percept_pobj current_road) (percept_pname partof) (percept_pval ev4))
(ag_percept (percept_pobj road_to_left) (percept_pname partof) (percept_pval ev4))
(ag_percept (percept_pobj my_lane) (percept_pname partof) (percept_pval current_road))
(ag_percept (percept_pobj other_lane) (percept_pname partof) (percept_pval current_road))
(ag_percept (percept_pobj current_line) (percept_pname partof) (percept_pval current_road))
(ag_percept (percept_pobj my_car) (percept_pname partof) (percept_pval ev4))
(ag_percept (percept_pobj another_car) (percept_pname partof) (percept_pval ev4))

(ag_percept (percept_pobj my_car) (percept_pname speed) (percept_pval 10))
(ag_percept (percept_pobj current_line) (percept_pname type) (percept_pval dashed))
(ag_percept (percept_pobj another_car) (percept_pname distance_to_my_car) (percept_pval 1000))