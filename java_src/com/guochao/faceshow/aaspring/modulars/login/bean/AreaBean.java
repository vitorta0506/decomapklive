package com.guochao.faceshow.aaspring.modulars.login.bean;
/* loaded from: classes3.dex */
public class AreaBean {
    private String cname;
    private String coding;
    private int country_id;
    private int country_num;
    private String language;
    private String logo;
    private String sortLetters;

    public String getCname() {
        return this.cname;
    }

    public String getCoding() {
        return this.coding;
    }

    public int getCountry_id() {
        return this.country_id;
    }

    public int getCountry_num() {
        return this.country_num;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getLogo() {
        return this.logo;
    }

    public String getSortLetters() {
        String str = this.sortLetters;
        return str == null ? "" : str;
    }

    public void setCname(String str) {
        this.cname = str;
    }

    public void setCoding(String str) {
        this.coding = str;
    }

    public void setCountry_id(int i9) {
        this.country_id = i9;
    }

    public void setCountry_num(int i9) {
        this.country_num = i9;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    public void setSortLetters(String str) {
        this.sortLetters = str;
    }
}
