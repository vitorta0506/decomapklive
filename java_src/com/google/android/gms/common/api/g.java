package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.p;
/* loaded from: classes2.dex */
public final class g {
    @NonNull
    public static <R extends i> f<R> a(@NonNull R r10, @NonNull d dVar) {
        p.k(r10, "Result must not be null");
        p.b(!r10.getStatus().R(), "Status code must not be SUCCESS");
        m mVar = new m(dVar, r10);
        mVar.f(r10);
        return mVar;
    }

    @NonNull
    public static f<Status> b(@NonNull Status status, @NonNull d dVar) {
        p.k(status, "Result must not be null");
        v3.l lVar = new v3.l(dVar);
        lVar.f(status);
        return lVar;
    }
}
