package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class ob extends j {

    /* renamed from: c  reason: collision with root package name */
    private final nc f8240c;

    public ob(String str, nc ncVar) {
        super("internal.remoteConfig");
        this.f8240c = ncVar;
        this.f8139b.put("getValue", new oa(this, "getValue", ncVar));
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final q b(t4 t4Var, List list) {
        return q.U;
    }
}
