package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class q {

    /* renamed from: a  reason: collision with root package name */
    final String f9761a;

    /* renamed from: b  reason: collision with root package name */
    final String f9762b;

    /* renamed from: c  reason: collision with root package name */
    final long f9763c;

    /* renamed from: d  reason: collision with root package name */
    final long f9764d;

    /* renamed from: e  reason: collision with root package name */
    final long f9765e;

    /* renamed from: f  reason: collision with root package name */
    final long f9766f;

    /* renamed from: g  reason: collision with root package name */
    final long f9767g;

    /* renamed from: h  reason: collision with root package name */
    final Long f9768h;

    /* renamed from: i  reason: collision with root package name */
    final Long f9769i;

    /* renamed from: j  reason: collision with root package name */
    final Long f9770j;

    /* renamed from: k  reason: collision with root package name */
    final Boolean f9771k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(String str, String str2, long j10, long j11, long j12, long j13, long j14, Long l10, Long l11, Long l12, Boolean bool) {
        com.google.android.gms.common.internal.p.f(str);
        com.google.android.gms.common.internal.p.f(str2);
        com.google.android.gms.common.internal.p.a(j10 >= 0);
        com.google.android.gms.common.internal.p.a(j11 >= 0);
        com.google.android.gms.common.internal.p.a(j12 >= 0);
        com.google.android.gms.common.internal.p.a(j14 >= 0);
        this.f9761a = str;
        this.f9762b = str2;
        this.f9763c = j10;
        this.f9764d = j11;
        this.f9765e = j12;
        this.f9766f = j13;
        this.f9767g = j14;
        this.f9768h = l10;
        this.f9769i = l11;
        this.f9770j = l12;
        this.f9771k = bool;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final q a(Long l10, Long l11, Boolean bool) {
        return new q(this.f9761a, this.f9762b, this.f9763c, this.f9764d, this.f9765e, this.f9766f, this.f9767g, this.f9768h, l10, l11, (bool == null || bool.booleanValue()) ? bool : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final q b(long j10, long j11) {
        return new q(this.f9761a, this.f9762b, this.f9763c, this.f9764d, this.f9765e, this.f9766f, j10, Long.valueOf(j11), this.f9769i, this.f9770j, this.f9771k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final q c(long j10) {
        return new q(this.f9761a, this.f9762b, this.f9763c, this.f9764d, this.f9765e, j10, this.f9767g, this.f9768h, this.f9769i, this.f9770j, this.f9771k);
    }
}
