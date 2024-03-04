package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private int f3959a;

    /* renamed from: b  reason: collision with root package name */
    private String f3960b;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f3961a;

        /* renamed from: b  reason: collision with root package name */
        private String f3962b = "";

        /* synthetic */ a(v vVar) {
        }

        @NonNull
        public e a() {
            e eVar = new e();
            eVar.f3959a = this.f3961a;
            eVar.f3960b = this.f3962b;
            return eVar;
        }

        @NonNull
        public a b(@NonNull String str) {
            this.f3962b = str;
            return this;
        }

        @NonNull
        public a c(int i9) {
            this.f3961a = i9;
            return this;
        }
    }

    @NonNull
    public static a c() {
        return new a(null);
    }

    @NonNull
    public String a() {
        return this.f3960b;
    }

    public int b() {
        return this.f3959a;
    }
}
