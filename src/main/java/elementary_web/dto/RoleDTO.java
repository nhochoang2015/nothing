package elementary_web.dto;

public class RoleDTO {

	private int roleID;
	private int roleName;

	public RoleDTO(int roleID, int roleName) {
		super();
		this.roleID = roleID;
		this.roleName = roleName;
	}

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	public int getRoleName() {
		return roleName;
	}

	public void setRoleName(int roleName) {
		this.roleName = roleName;
	}

}
