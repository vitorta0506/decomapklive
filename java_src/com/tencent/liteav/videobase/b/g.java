package com.tencent.liteav.videobase.b;

import java.io.IOException;
/* loaded from: classes4.dex */
public final class g extends IOException {
    private static final long serialVersionUID = 2723743254380545567L;
    public final int mErrorCode;
    private final String mErrorMessage;

    public g(int i9) {
        this(i9, "");
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        if (this.mErrorMessage != null) {
            return "EGL error code: " + this.mErrorCode + ", " + this.mErrorMessage;
        }
        return "EGL error code: " + this.mErrorCode + ", " + super.getMessage();
    }

    public g(int i9, String str) {
        super(str);
        this.mErrorCode = i9;
        this.mErrorMessage = str;
    }

    public g(int i9, String str, Throwable th2) {
        super(str, th2);
        this.mErrorCode = i9;
        this.mErrorMessage = str;
    }
}
