package elementary_web.converter;

import org.springframework.stereotype.Component;

import elementary_web.dto.RoleDTO;
import elementary_web.entity.Role;

@Component
public class RoleConverter {

	public RoleDTO toDTO(Role entity) {
		int roleID = entity.getRoleID();
		String roleName = entity.getRoleName();
		RoleDTO dto = new RoleDTO(roleID, roleName);
		return dto;
	}

}
