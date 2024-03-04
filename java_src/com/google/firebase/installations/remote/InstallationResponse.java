package com.google.firebase.installations.remote;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.remote.a;
/* loaded from: classes2.dex */
public abstract class InstallationResponse {

    /* loaded from: classes2.dex */
    public enum ResponseCode {
        OK,
        BAD_CONFIG
    }

    /* loaded from: classes2.dex */
    public static abstract class a {
        @NonNull
        public abstract InstallationResponse a();

        @NonNull
        public abstract a b(@NonNull TokenResult tokenResult);

        @NonNull
        public abstract a c(@NonNull String str);

        @NonNull
        public abstract a d(@NonNull String str);

        @NonNull
        public abstract a e(@NonNull ResponseCode responseCode);

        @NonNull
        public abstract a f(@NonNull String str);
    }

    @NonNull
    public static a a() {
        return new a.b();
    }

    @Nullable
    public abstract TokenResult b();

    @Nullable
    public abstract String c();

    @Nullable
    public abstract String d();

    @Nullable
    public abstract ResponseCode e();

    @Nullable
    public abstract String f();
}
