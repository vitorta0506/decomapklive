package com.huawei.secure.android.common.util;
/* loaded from: classes4.dex */
public class SecurityCommonException extends Exception {

    /* renamed from: c  reason: collision with root package name */
    private static final long f27898c = 1;

    /* renamed from: a  reason: collision with root package name */
    private String f27899a;

    /* renamed from: b  reason: collision with root package name */
    private String f27900b;

    public SecurityCommonException() {
    }

    public String getMsgDes() {
        return this.f27900b;
    }

    public String getRetCd() {
        return this.f27899a;
    }

    public SecurityCommonException(Throwable th2) {
        super(th2);
    }

    public SecurityCommonException(String str, Throwable th2) {
        super(str, th2);
    }

    public SecurityCommonException(String str) {
        super(str);
        this.f27900b = str;
    }

    public SecurityCommonException(String str, String str2) {
        this.f27899a = str;
        this.f27900b = str2;
    }
}
