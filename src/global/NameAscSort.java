package global;

import java.util.Comparator;

import bank.AccountMemberBean;

/**
 * @date   :2016. 7. 8.
 * @author :오승준
 * @file   :NameAscSort.java
 * @story  :
 */
public class NameAscSort implements Comparator<AccountMemberBean> {

	@Override
	public int compare(AccountMemberBean first, AccountMemberBean second) {
		return first.getName().compareTo(second.getName());
	}
}
