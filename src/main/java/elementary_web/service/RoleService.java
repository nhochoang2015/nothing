package elementary_web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.entity.Role;
import elementary_web.repository.RoleRepository;

@Service
public class RoleService {
	@Autowired
	RoleRepository roleRepository;

	public Role findByRoleID(int roleID) {
		Role role = roleRepository.findByRoleID(roleID);
		return role;
		
	}
}
