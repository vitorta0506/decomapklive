package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.g;
import java.util.List;
/* loaded from: classes.dex */
public abstract class k {

    /* loaded from: classes.dex */
    public static abstract class a {
        @NonNull
        public abstract k a();

        @NonNull
        public abstract a b(@Nullable ClientInfo clientInfo);

        @NonNull
        public abstract a c(@Nullable List<j> list);

        @NonNull
        abstract a d(@Nullable Integer num);

        @NonNull
        abstract a e(@Nullable String str);

        @NonNull
        public abstract a f(@Nullable QosTier qosTier);

        @NonNull
        public abstract a g(long j10);

        @NonNull
        public abstract a h(long j10);

        @NonNull
        public a i(int i9) {
            return d(Integer.valueOf(i9));
        }

        @NonNull
        public a j(@NonNull String str) {
            return e(str);
        }
    }

    @NonNull
    public static a a() {
        return new g.b();
    }

    @Nullable
    public abstract ClientInfo b();

    @Nullable
    public abstract List<j> c();

    @Nullable
    public abstract Integer d();

    @Nullable
    public abstract String e();

    @Nullable
    public abstract QosTier f();

    public abstract long g();

    public abstract long h();
}
