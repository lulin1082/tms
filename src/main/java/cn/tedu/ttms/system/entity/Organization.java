package cn.tedu.ttms.system.entity;

import java.util.Date;

public class Organization {


  private Long id;
  private String name;
  // 机构编码
  private String code;
  //上级机构编号
  private Long parentId;
  //上级机构多级编号
  private Long parentIds;
  // 有效标志
  private Long valid;
  private String note;
  private Date createdTime;
  private Date modifiedTime;
  private String createdUser;
  private String modifiedUser;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public Long getParentId() {
    return parentId;
  }

  public void setParentId(Long parentId) {
    this.parentId = parentId;
  }

  public Long getParentIds() {
    return parentIds;
  }

  public void setParentIds(Long parentIds) {
    this.parentIds = parentIds;
  }

  public Long getValid() {
    return valid;
  }

  public void setValid(Long valid) {
    this.valid = valid;
  }

  public String getNote() {
    return note;
  }

  public void setNote(String note) {
    this.note = note;
  }

  public Date getCreatedTime() {
    return createdTime;
  }

  public void setCreatedTime(Date createdTime) {
    this.createdTime = createdTime;
  }

  public Date getModifiedTime() {
    return modifiedTime;
  }

  public void setModifiedTime(Date modifiedTime) {
    this.modifiedTime = modifiedTime;
  }

  @Override
  public String toString() {
    return "Organization{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", code='" + code + '\'' +
            ", parentId=" + parentId +
            ", parentIds=" + parentIds +
            ", valid=" + valid +
            ", note='" + note + '\'' +
            ", createdTime=" + createdTime +
            ", modifiedTime=" + modifiedTime +
            ", createdUser='" + createdUser + '\'' +
            ", modifiedUser='" + modifiedUser + '\'' +
            '}';
  }

  public String getCreatedUser() {
    return createdUser;
  }

  public void setCreatedUser(String createdUser) {
    this.createdUser = createdUser;
  }

  public String getModifiedUser() {
    return modifiedUser;
  }

  public void setModifiedUser(String modifiedUser) {
    this.modifiedUser = modifiedUser;
  }
}
