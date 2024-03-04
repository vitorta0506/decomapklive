package com.google.android.gms.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class GoogleAuthException extends Exception {
    public GoogleAuthException() {
    }

    public GoogleAuthException(@Nullable String str) {
        super(str);
    }

    public GoogleAuthException(@Nullable String str, @NonNull Throwable th2) {
        super(str, th2);
    }

    public GoogleAuthException(@NonNull Throwable th2) {
        super(th2);
    }
}
