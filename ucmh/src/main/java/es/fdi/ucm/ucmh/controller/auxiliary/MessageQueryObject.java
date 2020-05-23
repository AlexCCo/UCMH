package es.fdi.ucm.ucmh.controller.auxiliary;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.transfer.UserTransferData;

public class MessageQueryObject {
	private UserTransferData user;
	private long number;
	
	
	public MessageQueryObject(User u, long num) {
		user = new UserTransferData(u);
		number = num;
	}
	/**
	 * @return the number
	 */
	public long getNumber() {
		return number;
	}
	/**
	 * @param number the number to set
	 */
	public void setNumber(long number) {
		this.number = number;
	}
	/**
	 * @return the user
	 */
	public UserTransferData getUser() {
		return user;
	}
	/**
	 * @param user the user to set
	 */
	public void setUser(UserTransferData user) {
		this.user = user;
	}
	
}
