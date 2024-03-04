package com.huawei.hms.push.ups.entity;
/* loaded from: classes4.dex */
public class TokenResult extends CodeResult {

    /* renamed from: c  reason: collision with root package name */
    public String f27776c;

    public TokenResult() {
    }

    public String getToken() {
        return this.f27776c;
    }

    public void setToken(String str) {
        this.f27776c = str;
    }

    public TokenResult(int i9) {
        super(i9);
    }

    public TokenResult(int i9, String str) {
        super(i9, str);
    }

    public TokenResult(String str) {
        this.f27776c = str;
    }
}
