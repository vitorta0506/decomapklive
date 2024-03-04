package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class ec implements dc {

    /* renamed from: a  reason: collision with root package name */
    public static final w6 f8058a;

    /* renamed from: b  reason: collision with root package name */
    public static final w6 f8059b;

    /* renamed from: c  reason: collision with root package name */
    public static final w6 f8060c;

    /* renamed from: d  reason: collision with root package name */
    public static final w6 f8061d;

    static {
        s6 a10 = new s6(k6.a("com.google.android.gms.measurement")).a();
        f8058a = a10.f("measurement.client.consent_state_v1", true);
        f8059b = a10.f("measurement.client.3p_consent_state_v1", true);
        f8060c = a10.f("measurement.service.consent_state_v1_W36", true);
        f8061d = a10.d("measurement.service.storage_consent_support_version", 203600L);
    }

    @Override // com.google.android.gms.internal.measurement.dc
    public final long zza() {
        return ((Long) f8061d.b()).longValue();
    }
}
