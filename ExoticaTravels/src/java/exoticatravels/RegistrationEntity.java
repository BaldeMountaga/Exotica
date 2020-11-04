package exoticatravels;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
//they used here JPA and why they mixed JPA and ORM at the same time?
@Entity
@Table(name = "REGISTRATION")
@NamedQueries({
    @NamedQuery(name = "RegistrationEntity.findAll", query = "SELECT r FROM RegistrationEntity r"),
    @NamedQuery(name = "RegistrationEntity.findByUsername", query = "SELECT r FROM RegistrationEntity r WHERE r.username = :username"),
    @NamedQuery(name = "RegistrationEntity.findByUserid", query = "SELECT r FROM RegistrationEntity r WHERE r.userid = :userid"),
    @NamedQuery(name = "RegistrationEntity.findByPassword", query = "SELECT r FROM RegistrationEntity r WHERE r.password = :password"),
    @NamedQuery(name = "RegistrationEntity.findByAddress", query = "SELECT r FROM RegistrationEntity r WHERE r.address = :address"),
    @NamedQuery(name = "RegistrationEntity.findByState", query = "SELECT r FROM RegistrationEntity r WHERE r.state = :state"),
    @NamedQuery(name = "RegistrationEntity.findByCountry", query = "SELECT r FROM RegistrationEntity r WHERE r.country = :country"),
    @NamedQuery(name = "RegistrationEntity.findByGroupname", query = "SELECT r FROM RegistrationEntity r WHERE r.groupname = :groupname")})
public class RegistrationEntity implements Serializable {
    private static final long serialVersionUID = 1L;
    @Column(name = "USERNAME")
    private String username;
    @Id
    @Basic(optional = false)
    @Column(name = "USERID")
    private String userid;
    @Basic(optional = false)
    @Column(name = "PASSWORD")
    private String password;
    @Column(name = "ADDRESS")
    private String address;
    @Column(name = "STATE")
    private String state;
    @Column(name = "COUNTRY")
    private String country;
    @Column(name = "GROUPNAME")
    private String groupname;

    public RegistrationEntity() {
    }

    public RegistrationEntity(String userid) {
        this.userid = userid;
    }

    public RegistrationEntity(String userid, String password) {
        this.userid = userid;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userid != null ? userid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RegistrationEntity)) {
            return false;
        }
        RegistrationEntity other = (RegistrationEntity) object;
        if ((this.userid == null && other.userid != null) || (this.userid != null && !this.userid.equals(other.userid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "exoticatravels.RegistrationEntity[userid=" + userid + "]";
    }

}
