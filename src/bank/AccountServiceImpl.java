package bank;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @date   :2016. 6. 20. 
 * @author :오승준
 * @file   :AccountServiceImpl.java
 * @story  :계좌 인터페이스
*/
public class AccountServiceImpl implements AccountService {
	
	AccountDAO dao = AccountDAO.getInstance();
	private Map<?,?> map;
	
	private static AccountServiceImpl instance = new AccountServiceImpl();
	
	public static AccountServiceImpl getInstance() {
		return instance;
	}
	private AccountServiceImpl() {
		new HashMap<String,AccountMemberBean>();
	}
	public String openAccount(String id) {
		AccountBean acc = new AccountBean();
		acc.setAccountNo();
		acc.setId(id);
		acc.setMoney(0);
		String msg = "";
		if (dao.insertAccount(acc)==1) {
			msg = "계좌생성 완료";
		} else {
			msg = "계좌생성 실패";
		}
		return msg;
	}
	public void deposit(String depositInfo) {
		String[] arr = depositInfo.split(",");
		AccountBean acc = new AccountBean();
		acc.setAccountNo(Integer.parseInt(arr[0]));
		int money = this.restMoney(Integer.parseInt(arr[0]))
				+ Integer.parseInt(arr[1]);
		acc.setMoney(money);
		dao.daposit(acc);
	}
	public String withdraw(String withdrawInfo) {
		String result = "";
		String[] arr = withdrawInfo.split(",");
		AccountBean acc = new AccountBean();
		acc.setAccountNo(Integer.parseInt(arr[0]));
		int restMoney = this.restMoney(Integer.parseInt(arr[0]));
		int withdrawMoney = Integer.parseInt(arr[1]);
		if (restMoney < withdrawMoney) {
			result = "잔액이 부족합니다";
		}else{
			acc.setMoney(restMoney-withdrawMoney);
			dao.withdraw(acc);
			result = String.valueOf(this.restMoney(Integer.parseInt(arr[0])));
		}
		return result;
	}
	public String updateAccount(AccountBean acc) {
		return null;
	}

	public void deleteAccount() {
	}
	@Override
	public AccountBean findByAccountNo(String accNo) {
		return null;
	}

	public int count() {
		return 0;
	}
	public int restMoney(int accNo) {
		
		return dao.selectMoney(accNo);
	}
	@Override
	public List<?> list() {
		return null;
	}
	@Override
	public List<?> findBy(String keyword) {
		return null;
	}
	@Override
	public Map<?, ?> map() {
		map = new HashMap<String,AccountMemberBean>();
		map = dao.selectMap();
		return map;
	}
	public List<?> accountList() {
		return null;
	}
}