package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final class he extends j {

    /* renamed from: c  reason: collision with root package name */
    private final Callable f8125c;

    public he(String str, Callable callable) {
        super("internal.appMetadata");
        this.f8125c = callable;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final q b(t4 t4Var, List list) {
        try {
            return v6.b(this.f8125c.call());
        } catch (Exception unused) {
            return q.U;
        }
    }
}
