package es.fdi.ucm.ucmh.transfer;

import java.util.Map;

import es.fdi.ucm.ucmh.model.GroupAppointment;

public class GroupAppointmentJsonRespone {
	   private GroupAppointment group_appointment;
	   private boolean validated;
	   private Map<String, String> errorMessages;
	   
		public GroupAppointment getGroupAppointment() {
			return group_appointment;
		}
		public void setGroupAppointment(GroupAppointment group_appointment) {
			this.group_appointment = group_appointment;
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
