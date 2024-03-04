package com.bumptech.glide.load;

import androidx.annotation.Nullable;
import java.io.IOException;
/* loaded from: classes.dex */
public final class HttpException extends IOException {
    public static final int UNKNOWN = -1;
    private static final long serialVersionUID = 1;
    private final int statusCode;

    public HttpException(int i9) {
        this("Http request failed", i9);
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    @Deprecated
    public HttpException(String str) {
        this(str, -1);
    }

    public HttpException(String str, int i9) {
        this(str, i9, null);
    }

    public HttpException(String str, int i9, @Nullable Throwable th2) {
        super(str + ", status code: " + i9, th2);
        this.statusCode = i9;
    }
}
