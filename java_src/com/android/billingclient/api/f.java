package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private String f3966a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f3967a;

        /* synthetic */ a(x xVar) {
        }

        @NonNull
        public f a() {
            if (this.f3967a != null) {
                f fVar = new f(null);
                fVar.f3966a = this.f3967a;
                return fVar;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        @NonNull
        public a b(@NonNull String str) {
            this.f3967a = str;
            return this;
        }
    }

    /* synthetic */ f(x xVar) {
    }

    @NonNull
    public static a b() {
        return new a(null);
    }

    @NonNull
    public String a() {
        return this.f3966a;
    }
}
