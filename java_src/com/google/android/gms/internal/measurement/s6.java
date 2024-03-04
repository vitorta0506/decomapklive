package com.google.android.gms.internal.measurement;

import android.net.Uri;
/* loaded from: classes2.dex */
public final class s6 {

    /* renamed from: a  reason: collision with root package name */
    final String f8308a;

    /* renamed from: b  reason: collision with root package name */
    final Uri f8309b;

    /* renamed from: c  reason: collision with root package name */
    final String f8310c;

    /* renamed from: d  reason: collision with root package name */
    final String f8311d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f8312e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f8313f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f8314g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f8315h;

    /* renamed from: i  reason: collision with root package name */
    final a7 f8316i;

    public s6(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    private s6(String str, Uri uri, String str2, String str3, boolean z10, boolean z11, boolean z12, boolean z13, a7 a7Var) {
        this.f8308a = null;
        this.f8309b = uri;
        this.f8310c = "";
        this.f8311d = "";
        this.f8312e = z10;
        this.f8313f = false;
        this.f8314g = z12;
        this.f8315h = false;
        this.f8316i = null;
    }

    public final s6 a() {
        return new s6(null, this.f8309b, this.f8310c, this.f8311d, this.f8312e, false, true, false, null);
    }

    public final s6 b() {
        if (this.f8310c.isEmpty()) {
            return new s6(null, this.f8309b, this.f8310c, this.f8311d, true, false, this.f8314g, false, null);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final w6 c(String str, double d10) {
        return new q6(this, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
    }

    public final w6 d(String str, long j10) {
        return new o6(this, str, Long.valueOf(j10), true);
    }

    public final w6 e(String str, String str2) {
        return new r6(this, str, str2, true);
    }

    public final w6 f(String str, boolean z10) {
        return new p6(this, str, Boolean.valueOf(z10), true);
    }
}
