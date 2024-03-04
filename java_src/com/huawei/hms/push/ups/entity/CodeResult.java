package com.huawei.hms.push.ups.entity;
/* loaded from: classes4.dex */
public class CodeResult {

    /* renamed from: a  reason: collision with root package name */
    public int f27774a;

    /* renamed from: b  reason: collision with root package name */
    public String f27775b;

    public CodeResult() {
    }

    public String getReason() {
        return this.f27775b;
    }

    public int getReturnCode() {
        return this.f27774a;
    }

    public void setReason(String str) {
        this.f27775b = str;
    }

    public void setReturnCode(int i9) {
        this.f27774a = i9;
    }

    public CodeResult(int i9) {
        this.f27774a = i9;
    }

    public CodeResult(int i9, String str) {
        this.f27774a = i9;
        this.f27775b = str;
    }
}
