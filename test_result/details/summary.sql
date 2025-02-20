select
	machine_code as machine_id,
	account as tester,
	'23.6820 N' as longitude,
	'113.0561 E' as latitude,
	temperature,
	humidity,
	'' as air_pressure,
	'Qinguan Farm' as test_location,
	c.id as test_subject_id,
	test_date,
	test_time,
	target_ctrl_name,
	result as test_result
from tbl_chip_usage c
left join tbl_testdata t on c.id = t.id_chip_usage
left join tbl_testconclusion r on t.testid = r.testid
left join tbl_testdetails rd on t.testid = rd.testid