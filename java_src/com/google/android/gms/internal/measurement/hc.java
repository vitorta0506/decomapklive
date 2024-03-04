package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class hc implements gc {

    /* renamed from: a  reason: collision with root package name */
    public static final w6 f8120a;

    /* renamed from: b  reason: collision with root package name */
    public static final w6 f8121b;

    /* renamed from: c  reason: collision with root package name */
    public static final w6 f8122c;

    static {
        s6 a10 = new s6(k6.a("com.google.android.gms.measurement")).b().a();
        f8120a = a10.f("measurement.collection.event_safelist", true);
        f8121b = a10.f("measurement.service.store_null_safelist", true);
        f8122c = a10.f("measurement.service.store_safelist", true);
    }

    @Override // com.google.android.gms.internal.measurement.gc
    public final boolean D() {
        return ((Boolean) f8121b.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.gc
    public final boolean E() {
        return ((Boolean) f8122c.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.gc
    public final boolean zza() {
        return true;
    }
}
