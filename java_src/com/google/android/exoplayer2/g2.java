package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
/* loaded from: classes.dex */
public final class g2 extends s2 {

    /* renamed from: c  reason: collision with root package name */
    public static final h.a<g2> f5933c = new h.a() { // from class: com.google.android.exoplayer2.f2
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            g2 e10;
            e10 = g2.e(bundle);
            return e10;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final float f5934b;

    public g2() {
        this.f5934b = -1.0f;
    }

    private static String c(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static g2 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 1);
        float f10 = bundle.getFloat(c(1), -1.0f);
        return f10 == -1.0f ? new g2() : new g2(f10);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof g2) && this.f5934b == ((g2) obj).f5934b;
    }

    public int hashCode() {
        return com.google.common.base.l.b(Float.valueOf(this.f5934b));
    }

    public g2(@FloatRange(from = 0.0d, to = 100.0d) float f10) {
        com.google.android.exoplayer2.util.a.b(f10 >= 0.0f && f10 <= 100.0f, "percent must be in the range of [0, 100]");
        this.f5934b = f10;
    }
}
