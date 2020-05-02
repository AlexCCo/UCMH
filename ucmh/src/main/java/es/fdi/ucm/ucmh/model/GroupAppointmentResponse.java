package es.fdi.ucm.ucmh.model;

import java.util.Map;

public class GroupAppointmentResponse {
	   private GroupAppointment appointment;
	   private boolean validated;
	   private Map<String, String> errorMessages;
	   
		public GroupAppointment getGroupAppointment() {
			return appointment;
		}
		public void setGroupAppointment(GroupAppointment appointment) {
			this.appointment = appointment;
		}
		public boolean isValidated() {
			return validated;
		}
		public void setValidated(boolean validated) {
			this.validated = validated;
		}
		public Map<String, String> getErrorMessages() {
			return errorMessages;
		}
		public void setErrorMessages(Map<String, String> errorMessages) {
			this.errorMessages = errorMessages;
		}
	}
