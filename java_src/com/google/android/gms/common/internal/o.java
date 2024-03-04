package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static final m0 f7767a = new j0();

    /* loaded from: classes2.dex */
    public interface a<R extends com.google.android.gms.common.api.i, T> {
        @Nullable
        T a(@NonNull R r10);
    }

    @NonNull
    public static <R extends com.google.android.gms.common.api.i, T> t4.g<T> a(@NonNull com.google.android.gms.common.api.f<R> fVar, @NonNull a<R, T> aVar) {
        m0 m0Var = f7767a;
        t4.h hVar = new t4.h();
        fVar.a(new k0(fVar, hVar, aVar, m0Var));
        return hVar.a();
    }

    @NonNull
    public static <R extends com.google.android.gms.common.api.i> t4.g<Void> b(@NonNull com.google.android.gms.common.api.f<R> fVar) {
        return a(fVar, new l0());
    }
}
