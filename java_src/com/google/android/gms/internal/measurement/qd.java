package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class qd implements pd {

    /* renamed from: a  reason: collision with root package name */
    public static final w6 f8280a;

    /* renamed from: b  reason: collision with root package name */
    public static final w6 f8281b;

    static {
        s6 a10 = new s6(k6.a("com.google.android.gms.measurement")).b().a();
        f8280a = a10.f("measurement.collection.enable_session_stitching_token.client.dev", false);
        f8281b = a10.f("measurement.collection.enable_session_stitching_token.service", false);
    }

    @Override // com.google.android.gms.internal.measurement.pd
    public final boolean D() {
        return ((Boolean) f8280a.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.pd
    public final boolean E() {
        return ((Boolean) f8281b.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.pd
    public final boolean zza() {
        return true;
    }
}
