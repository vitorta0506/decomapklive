package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
/* loaded from: classes.dex */
public final class k2 implements h {

    /* renamed from: d  reason: collision with root package name */
    public static final k2 f6152d = new k2(1.0f);

    /* renamed from: e  reason: collision with root package name */
    public static final h.a<k2> f6153e = new h.a() { // from class: com.google.android.exoplayer2.j2
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            k2 d10;
            d10 = k2.d(bundle);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final float f6154a;

    /* renamed from: b  reason: collision with root package name */
    public final float f6155b;

    /* renamed from: c  reason: collision with root package name */
    private final int f6156c;

    public k2(float f10) {
        this(f10, 1.0f);
    }

    private static String c(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k2 d(Bundle bundle) {
        return new k2(bundle.getFloat(c(0), 1.0f), bundle.getFloat(c(1), 1.0f));
    }

    public long b(long j10) {
        return j10 * this.f6156c;
    }

    @CheckResult
    public k2 e(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        return new k2(f10, this.f6155b);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k2.class != obj.getClass()) {
            return false;
        }
        k2 k2Var = (k2) obj;
        return this.f6154a == k2Var.f6154a && this.f6155b == k2Var.f6155b;
    }

    public int hashCode() {
        return ((527 + Float.floatToRawIntBits(this.f6154a)) * 31) + Float.floatToRawIntBits(this.f6155b);
    }

    public String toString() {
        return com.google.android.exoplayer2.util.l0.z("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f6154a), Float.valueOf(this.f6155b));
    }

    public k2(@FloatRange(from = 0.0d, fromInclusive = false) float f10, @FloatRange(from = 0.0d, fromInclusive = false) float f11) {
        com.google.android.exoplayer2.util.a.a(f10 > 0.0f);
        com.google.android.exoplayer2.util.a.a(f11 > 0.0f);
        this.f6154a = f10;
        this.f6155b = f11;
        this.f6156c = Math.round(f10 * 1000.0f);
    }
}
