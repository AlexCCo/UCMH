package es.fdi.ucm.ucmh.model;

public enum UserType {

	PAT,   // a patient
	PSY,   // a psychologist
	ADMIN; // an admin

	private static String[] validPaths = {
		PAT.getPath(), PSY.getPath(), ADMIN.getPath()
	};

	public String getPath() {
		return this.toString().toLowerCase(); 
	}

	public static boolean isValidPath(String path) {
		for (String p : validPaths) if (p.equals(path)) return true;
		return false;
	}
}
