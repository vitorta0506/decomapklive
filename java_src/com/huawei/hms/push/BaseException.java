package com.huawei.hms.push;

import com.huawei.hms.aaid.constant.ErrorEnum;
/* loaded from: classes4.dex */
public class BaseException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f27671a;

    /* renamed from: b  reason: collision with root package name */
    public final ErrorEnum f27672b;

    public BaseException(int i9) {
        ErrorEnum fromCode = ErrorEnum.fromCode(i9);
        this.f27672b = fromCode;
        this.f27671a = fromCode.getExternalCode();
    }

    public int getErrorCode() {
        return this.f27671a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f27672b.getMessage();
    }
}
