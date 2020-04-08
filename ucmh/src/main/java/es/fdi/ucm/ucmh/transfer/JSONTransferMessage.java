package es.fdi.ucm.ucmh.transfer;

public class JSONTransferMessage {
	private String result;
	
	public JSONTransferMessage(String msg) {
		this.result = msg;
	}

	/**
	 * @return the result
	 */
	public String getResult() {
		return result;
	}

	/**
	 * @param msg the result to set
	 */
	public void setResult(String msg) {
		this.result = msg;
	}
	
	
}
