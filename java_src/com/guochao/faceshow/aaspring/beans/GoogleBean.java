package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class GoogleBean {
    private String access_token;
    private int expires_in;
    private String id_token;
    private String refresh_token;
    private String scope;
    private String token_type;

    public String getAccess_token() {
        return this.access_token;
    }

    public int getExpires_in() {
        return this.expires_in;
    }

    public String getId_token() {
        return this.id_token;
    }

    public String getRefresh_token() {
        return this.refresh_token;
    }

    public String getScope() {
        return this.scope;
    }

    public String getToken_type() {
        return this.token_type;
    }

    public void setAccess_token(String str) {
        this.access_token = str;
    }

    public void setExpires_in(int i9) {
        this.expires_in = i9;
    }

    public void setId_token(String str) {
        this.id_token = str;
    }

    public void setRefresh_token(String str) {
        this.refresh_token = str;
    }

    public void setScope(String str) {
        this.scope = str;
    }

    public void setToken_type(String str) {
        this.token_type = str;
    }
}
