package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class oc implements mc {

    /* renamed from: a  reason: collision with root package name */
    public static final w6 f8241a;

    /* renamed from: b  reason: collision with root package name */
    public static final w6 f8242b;

    /* renamed from: c  reason: collision with root package name */
    public static final w6 f8243c;

    /* renamed from: d  reason: collision with root package name */
    public static final w6 f8244d;

    static {
        s6 a10 = new s6(k6.a("com.google.android.gms.measurement")).a();
        f8241a = a10.f("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f8242b = a10.f("measurement.audience.refresh_event_count_filters_timestamp", false);
        f8243c = a10.f("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f8244d = a10.f("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.mc
    public final boolean D() {
        return ((Boolean) f8242b.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.mc
    public final boolean E() {
        return ((Boolean) f8243c.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.mc
    public final boolean c() {
        return ((Boolean) f8244d.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.mc
    public final boolean zza() {
        return true;
    }
}
