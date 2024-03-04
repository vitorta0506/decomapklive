package com.guochao.faceshow.aaspring.modulars.login.bean;
/* loaded from: classes3.dex */
public class ThirdPartyLoginPlatform {
    private int icon;
    private String platform;
    private int type;

    public ThirdPartyLoginPlatform() {
    }

    public int getIcon() {
        return this.icon;
    }

    public String getPlatform() {
        return this.platform;
    }

    public int getType() {
        return this.type;
    }

    public void setIcon(int i9) {
        this.icon = i9;
    }

    public void setPlatform(String str) {
        this.platform = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public ThirdPartyLoginPlatform(int i9, String str, int i10) {
        this.icon = i9;
        this.platform = str;
        this.type = i10;
    }
}
