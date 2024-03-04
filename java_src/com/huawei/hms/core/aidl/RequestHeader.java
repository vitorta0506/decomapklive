package com.huawei.hms.core.aidl;

import com.huawei.hms.core.aidl.annotation.Packed;
import java.util.List;
/* loaded from: classes4.dex */
public class RequestHeader implements IMessageEntity {
    @Packed
    private int apiLevel;
    @Packed
    private List<String> apiNameList;
    @Packed
    private String appId;
    @Packed
    private String packageName;
    @Packed
    private int sdkVersion;
    @Packed
    private String sessionId;

    public RequestHeader() {
    }

    public List<String> getApiNameList() {
        return this.apiNameList;
    }

    public String getAppID() {
        return this.appId;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getSdkVersion() {
        return this.sdkVersion;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public void setApiLevel(int i9) {
        this.apiLevel = i9;
    }

    public void setApiNameList(List<String> list) {
        this.apiNameList = list;
    }

    public void setAppID(String str) {
        this.appId = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setSdkVersion(int i9) {
        this.sdkVersion = i9;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public RequestHeader(String str, String str2, int i9, String str3) {
        this.appId = str;
        this.packageName = str2;
        this.sdkVersion = i9;
        this.sessionId = str3;
    }
}
