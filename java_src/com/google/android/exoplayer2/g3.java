package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
/* loaded from: classes.dex */
public final class g3 extends s2 {

    /* renamed from: d  reason: collision with root package name */
    public static final h.a<g3> f5935d = new h.a() { // from class: com.google.android.exoplayer2.f3
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            g3 e10;
            e10 = g3.e(bundle);
            return e10;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final boolean f5936b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f5937c;

    public g3() {
        this.f5936b = false;
        this.f5937c = false;
    }

    private static String c(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static g3 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 3);
        if (bundle.getBoolean(c(1), false)) {
            return new g3(bundle.getBoolean(c(2), false));
        }
        return new g3();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof g3) {
            g3 g3Var = (g3) obj;
            return this.f5937c == g3Var.f5937c && this.f5936b == g3Var.f5936b;
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.l.b(Boolean.valueOf(this.f5936b), Boolean.valueOf(this.f5937c));
    }

    public g3(boolean z10) {
        this.f5936b = true;
        this.f5937c = z10;
    }
}
