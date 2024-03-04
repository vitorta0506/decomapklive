package com.google.firebase.installations.remote;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.remote.b;
/* loaded from: classes2.dex */
public abstract class TokenResult {

    /* loaded from: classes2.dex */
    public enum ResponseCode {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    /* loaded from: classes2.dex */
    public static abstract class a {
        @NonNull
        public abstract TokenResult a();

        @NonNull
        public abstract a b(@NonNull ResponseCode responseCode);

        @NonNull
        public abstract a c(@NonNull String str);

        @NonNull
        public abstract a d(long j10);
    }

    @NonNull
    public static a a() {
        return new b.C0138b().d(0L);
    }

    @Nullable
    public abstract ResponseCode b();

    @Nullable
    public abstract String c();

    @NonNull
    public abstract long d();
}
