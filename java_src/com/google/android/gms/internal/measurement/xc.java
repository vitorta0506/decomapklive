package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class xc implements wc {

    /* renamed from: a  reason: collision with root package name */
    public static final w6 f8425a;

    /* renamed from: b  reason: collision with root package name */
    public static final w6 f8426b;

    /* renamed from: c  reason: collision with root package name */
    public static final w6 f8427c;

    /* renamed from: d  reason: collision with root package name */
    public static final w6 f8428d;

    /* renamed from: e  reason: collision with root package name */
    public static final w6 f8429e;

    static {
        s6 a10 = new s6(k6.a("com.google.android.gms.measurement")).b().a();
        f8425a = a10.f("measurement.client.global_params", true);
        f8426b = a10.f("measurement.service.global_params_in_payload", true);
        f8427c = a10.f("measurement.service.clear_global_params_on_uninstall", true);
        f8428d = a10.f("measurement.service.global_params", true);
        f8429e = a10.d("measurement.id.service.global_params", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.wc
    public final boolean D() {
        return ((Boolean) f8427c.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.wc
    public final boolean zza() {
        return true;
    }
}
