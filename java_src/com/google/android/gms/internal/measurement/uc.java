package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class uc implements tc {

    /* renamed from: a  reason: collision with root package name */
    public static final w6 f8372a;

    /* renamed from: b  reason: collision with root package name */
    public static final w6 f8373b;

    /* renamed from: c  reason: collision with root package name */
    public static final w6 f8374c;

    static {
        s6 a10 = new s6(k6.a("com.google.android.gms.measurement")).a();
        f8372a = a10.f("measurement.client.sessions.check_on_reset_and_enable2", true);
        f8373b = a10.f("measurement.client.sessions.check_on_startup", true);
        f8374c = a10.f("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final boolean D() {
        return ((Boolean) f8372a.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final boolean zza() {
        return true;
    }
}
