package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class dd implements cd {

    /* renamed from: a  reason: collision with root package name */
    public static final w6 f8039a;

    /* renamed from: b  reason: collision with root package name */
    public static final w6 f8040b;

    /* renamed from: c  reason: collision with root package name */
    public static final w6 f8041c;

    /* renamed from: d  reason: collision with root package name */
    public static final w6 f8042d;

    static {
        s6 a10 = new s6(k6.a("com.google.android.gms.measurement")).a();
        f8039a = a10.d("measurement.id.lifecycle.app_in_background_parameter", 0L);
        f8040b = a10.f("measurement.lifecycle.app_backgrounded_tracking", true);
        f8041c = a10.f("measurement.lifecycle.app_in_background_parameter", false);
        f8042d = a10.d("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.cd
    public final boolean zza() {
        return ((Boolean) f8041c.b()).booleanValue();
    }
}
