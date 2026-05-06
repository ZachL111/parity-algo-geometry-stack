#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 78; capacity = 75; latency = 22; risk = 10; weight = 13 };;
expect (score signal_case_1 = 166);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 68; capacity = 71; latency = 8; risk = 12; weight = 8 };;
expect (score signal_case_2 = 143);;
expect (classify signal_case_2 = "review");;
let signal_case_3 = { demand = 98; capacity = 71; latency = 26; risk = 9; weight = 10 };;
expect (score signal_case_3 = 191);;
expect (classify signal_case_3 = "accept");;

#use "src/review.ml";;
let domain_review = { signal = 45; slack = 27; drag = 19; confidence = 69 };;
expect (review_score domain_review = 129);;
expect (review_lane domain_review = "watch");;
