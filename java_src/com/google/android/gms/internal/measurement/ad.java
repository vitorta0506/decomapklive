package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class ad implements zc {

    /* renamed from: a  reason: collision with root package name */
    public static final w6 f7940a;

    /* renamed from: b  reason: collision with root package name */
    public static final w6 f7941b;

    /* renamed from: c  reason: collision with root package name */
    public static final w6 f7942c;

    /* renamed from: d  reason: collision with root package name */
    public static final w6 f7943d;

    static {
        s6 a10 = new s6(k6.a("com.google.android.gms.measurement")).a();
        f7940a = a10.f("measurement.sdk.collection.enable_extend_user_property_size", true);
        f7941b = a10.f("measurement.sdk.collection.last_deep_link_referrer2", true);
        f7942c = a10.f("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        f7943d = a10.d("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zc
    public final boolean zza() {
        return ((Boolean) f7942c.b()).booleanValue();
    }
}
