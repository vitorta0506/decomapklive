package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class ContactBean {
    private boolean hasInvited;
    private String userAvatar;
    private String userName;
    private String userPhone;

    public String getUserAvatar() {
        return this.userAvatar;
    }

    public String getUserName() {
        return this.userName;
    }

    public String getUserPhone() {
        return this.userPhone;
    }

    public boolean isHasInvited() {
        return this.hasInvited;
    }

    public void setHasInvited(boolean z10) {
        this.hasInvited = z10;
    }

    public void setUserAvatar(String str) {
        this.userAvatar = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public void setUserPhone(String str) {
        this.userPhone = str;
    }
}
