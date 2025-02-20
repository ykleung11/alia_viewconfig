select
	machine_id,
	tester,
	longitude,
	latitude,
	temperature,
	humidity,
	air_pressure,
	test_location,
	test_subject_id,
	test_date,
	test_time,
	case 
		when target_ctrl_name = 'Target 1' then 'African Swine Fever'
		when target_ctrl_name = 'Target 2' then 'Blue Ear'
		when target_ctrl_name = 'Target 3' then 'Foot and Mouth'
		when target_ctrl_name = 'Target 4' then 'Hog Cholera'
		when target_ctrl_name = 'Target 5' then 'Salmonellosis'
		when target_ctrl_name = 'Target 6' then 'Erysipelas'
	else target_ctrl_name end as test_name,
	test_result
from main
where target_ctrl_name not in ('Negative Control', 'Positive Control', 'Internal Control', 'None')