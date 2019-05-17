package com.heun.trip.domain;

import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Blog { // 일반 회원이 작성하는 블로그 게시판
  private int no;
  private String title;
  private String content;
  @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
  private Date createdDate;
  
  private int userNo;
  private String name;
  
  private int rmsNo;
  private int grade;
  private String rmsName;
  private String rmsAddr;
  private String rmsDetailAddr;

  @Override
  public String toString() {
    return "Blog [no=" + no + ", title=" + title + ", content=" + content + ", createdDate="
        + createdDate + ", userNo=" + userNo + ", name=" + name + ", rmsNo=" + rmsNo + ", grade="
        + grade + ", rmsName=" + rmsName + ", rmsAddr=" + rmsAddr + ", rmsDetailAddr="
        + rmsDetailAddr + "]";
  }
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public Date getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }
  public int getUserNo() {
    return userNo;
  }
  public void setUserNo(int userNo) {
    this.userNo = userNo;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public int getRmsNo() {
    return rmsNo;
  }
  public void setRmsNo(int rmsNo) {
    this.rmsNo = rmsNo;
  }
  public int getGrade() {
    return grade;
  }
  public void setGrade(int grade) {
    this.grade = grade;
  }
  public String getRmsName() {
    return rmsName;
  }
  public void setRmsName(String rmsName) {
    this.rmsName = rmsName;
  }
  public String getRmsAddr() {
    return rmsAddr;
  }
  public void setRmsAddr(String rmsAddr) {
    this.rmsAddr = rmsAddr;
  }
  public String getRmsDetailAddr() {
    return rmsDetailAddr;
  }
  public void setRmsDetailAddr(String rmsDetailAddr) {
    this.rmsDetailAddr = rmsDetailAddr;
  }
  
}
