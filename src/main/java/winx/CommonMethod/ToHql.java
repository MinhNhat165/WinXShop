package winx.CommonMethod;

import java.util.List;

public class ToHql {

	public String toHqlRangeCondition(String beginRange, String endRange, String columnName) {
		String hql = columnName;
		if (!beginRange.isEmpty()) {
			if (endRange.isEmpty()) {
				hql += " = '" + beginRange + "'";
			} else
				hql = " (" + hql + " BETWEEN '" + beginRange + "' AND '" + endRange + "'" + ") ";
		} else {
			if (!endRange.isEmpty()) {
				hql += " <= '" + endRange + "'";
			} else
				hql = "";
		}
		return hql;
	};

	public String toHqlWhereClause(List<String> list) {
		String whereClauses = list.get(0);
		for (int i = 0; i < list.size() - 1; i++) {
			if (!list.get(i + 1).isEmpty())
				if (!whereClauses.isEmpty())
					whereClauses += " AND " + list.get(i + 1);
				else
					whereClauses += list.get(i + 1);

		}
		if (!whereClauses.isEmpty())
			whereClauses = "WHERE " + whereClauses;

		return whereClauses;
	}
}
