package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class gd implements fd {

    /* renamed from: a  reason: collision with root package name */
    public static final w6 f8100a;

    /* renamed from: b  reason: collision with root package name */
    public static final w6 f8101b;

    /* renamed from: c  reason: collision with root package name */
    public static final w6 f8102c;

    /* renamed from: d  reason: collision with root package name */
    public static final w6 f8103d;

    /* renamed from: e  reason: collision with root package name */
    public static final w6 f8104e;

    static {
        s6 a10 = new s6(k6.a("com.google.android.gms.measurement")).a();
        f8100a = a10.f("measurement.test.boolean_flag", false);
        f8101b = a10.c("measurement.test.double_flag", -3.0d);
        f8102c = a10.d("measurement.test.int_flag", -2L);
        f8103d = a10.d("measurement.test.long_flag", -1L);
        f8104e = a10.e("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.fd
    public final long D() {
        return ((Long) f8102c.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.fd
    public final long E() {
        return ((Long) f8103d.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.fd
    public final String c() {
        return (String) f8104e.b();
    }

    @Override // com.google.android.gms.internal.measurement.fd
    public final boolean l() {
        return ((Boolean) f8100a.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.fd
    public final double zza() {
        return ((Double) f8101b.b()).doubleValue();
    }
}
