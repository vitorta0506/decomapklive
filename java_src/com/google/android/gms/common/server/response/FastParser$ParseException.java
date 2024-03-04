package com.google.android.gms.common.server.response;

import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public class FastParser$ParseException extends Exception {
    public FastParser$ParseException(@NonNull String str) {
        super(str);
    }

    public FastParser$ParseException(@NonNull String str, @NonNull Throwable th2) {
        super("Error instantiating inner object", th2);
    }

    public FastParser$ParseException(@NonNull Throwable th2) {
        super(th2);
    }
}
