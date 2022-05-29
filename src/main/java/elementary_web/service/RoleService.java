package elementary_web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.entity.Role;
import elementary_web.repository.RoleRepository;

@Service
public class RoleService {
	@Autowired
	private RoleRepository roleRepository;

	public Role findByRoleID(int roleID) {
		Role role = roleRepository.findByRoleID(roleID);
		return role;

	}

	public Role findByRoleName(String roleName) {
		Role role = roleRepository.findByRoleName(roleName);
		return role;

	}
}
