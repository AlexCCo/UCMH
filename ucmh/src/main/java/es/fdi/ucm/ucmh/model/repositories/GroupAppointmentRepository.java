package es.fdi.ucm.ucmh.model.repositories;

import java.util.LinkedList;
import java.util.List;
import java.lang.Long;

import org.hibernate.annotations.RowId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import es.fdi.ucm.ucmh.model.GroupAppointment;

@Transactional(readOnly = true)
public interface GroupAppointmentRepository extends JpaRepository<GroupAppointment, Long> {
	

}
