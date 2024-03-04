package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
/* loaded from: classes.dex */
public final class c3 extends s2 {

    /* renamed from: d  reason: collision with root package name */
    public static final h.a<c3> f5681d = new h.a() { // from class: com.google.android.exoplayer2.b3
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            c3 e10;
            e10 = c3.e(bundle);
            return e10;
        }
    };
    @IntRange(from = 1)

    /* renamed from: b  reason: collision with root package name */
    private final int f5682b;

    /* renamed from: c  reason: collision with root package name */
    private final float f5683c;

    public c3(@IntRange(from = 1) int i9) {
        com.google.android.exoplayer2.util.a.b(i9 > 0, "maxStars must be a positive integer");
        this.f5682b = i9;
        this.f5683c = -1.0f;
    }

    private static String c(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c3 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 2);
        int i9 = bundle.getInt(c(1), 5);
        float f10 = bundle.getFloat(c(2), -1.0f);
        if (f10 == -1.0f) {
            return new c3(i9);
        }
        return new c3(i9, f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof c3) {
            c3 c3Var = (c3) obj;
            return this.f5682b == c3Var.f5682b && this.f5683c == c3Var.f5683c;
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.l.b(Integer.valueOf(this.f5682b), Float.valueOf(this.f5683c));
    }

    public c3(@IntRange(from = 1) int i9, @FloatRange(from = 0.0d) float f10) {
        boolean z10 = true;
        com.google.android.exoplayer2.util.a.b(i9 > 0, "maxStars must be a positive integer");
        com.google.android.exoplayer2.util.a.b((f10 < 0.0f || f10 > ((float) i9)) ? false : false, "starRating is out of range [0, maxStars]");
        this.f5682b = i9;
        this.f5683c = f10;
    }
}
