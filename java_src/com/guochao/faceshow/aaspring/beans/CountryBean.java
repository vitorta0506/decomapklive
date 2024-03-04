package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class CountryBean {
    private Long _id;
    private String cname;
    public String coding;
    private int country_id;
    private String country_num;
    public String language;
    private String logo;

    public CountryBean() {
    }

    public String getCname() {
        return this.cname;
    }

    public String getCoding() {
        return this.coding;
    }

    public int getCountry_id() {
        return this.country_id;
    }

    public String getCountry_num() {
        return this.country_num;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getLogo() {
        return this.logo;
    }

    public Long get_id() {
        return this._id;
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

    public void setCountry_num(String str) {
        this.country_num = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    public void set_id(Long l10) {
        this._id = l10;
    }

    public CountryBean(String str, String str2, int i9) {
        this.cname = str;
        this.logo = str2;
        this.country_id = i9;
    }
}
