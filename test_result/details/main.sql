select
	c.*,
	t.*,
	r.*
from tbl_chip_usage c
left join tbl_testdata t on c.id = t.id_chip_usage
left join tbl_testconclusion r on t.testid = r.testid