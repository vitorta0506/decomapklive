package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
/* loaded from: classes2.dex */
public abstract class d<A extends a.b, ResultT> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Feature[] f7537a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f7538b;

    /* renamed from: c  reason: collision with root package name */
    private final int f7539c;

    /* loaded from: classes2.dex */
    public static class a<A extends a.b, ResultT> {

        /* renamed from: a  reason: collision with root package name */
        private v3.i f7540a;

        /* renamed from: c  reason: collision with root package name */
        private Feature[] f7542c;

        /* renamed from: b  reason: collision with root package name */
        private boolean f7541b = true;

        /* renamed from: d  reason: collision with root package name */
        private int f7543d = 0;

        /* synthetic */ a(v3.b0 b0Var) {
        }

        @NonNull
        public d<A, ResultT> a() {
            com.google.android.gms.common.internal.p.b(this.f7540a != null, "execute parameter required");
            return new u(this, this.f7542c, this.f7541b, this.f7543d);
        }

        @NonNull
        public a<A, ResultT> b(@NonNull v3.i<A, t4.h<ResultT>> iVar) {
            this.f7540a = iVar;
            return this;
        }

        @NonNull
        public a<A, ResultT> c(boolean z10) {
            this.f7541b = z10;
            return this;
        }

        @NonNull
        public a<A, ResultT> d(@NonNull Feature... featureArr) {
            this.f7542c = featureArr;
            return this;
        }

        @NonNull
        public a<A, ResultT> e(int i9) {
            this.f7543d = i9;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(@Nullable Feature[] featureArr, boolean z10, int i9) {
        this.f7537a = featureArr;
        boolean z11 = false;
        if (featureArr != null && z10) {
            z11 = true;
        }
        this.f7538b = z11;
        this.f7539c = i9;
    }

    @NonNull
    public static <A extends a.b, ResultT> a<A, ResultT> a() {
        return new a<>(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void b(@NonNull A a10, @NonNull t4.h<ResultT> hVar) throws RemoteException;

    public boolean c() {
        return this.f7538b;
    }

    public final int d() {
        return this.f7539c;
    }

    @Nullable
    public final Feature[] e() {
        return this.f7537a;
    }
}
