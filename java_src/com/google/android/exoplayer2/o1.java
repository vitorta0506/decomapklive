package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
/* loaded from: classes.dex */
public final class o1 extends s2 {

    /* renamed from: d  reason: collision with root package name */
    public static final h.a<o1> f6369d = new h.a() { // from class: com.google.android.exoplayer2.n1
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            o1 e10;
            e10 = o1.e(bundle);
            return e10;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final boolean f6370b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f6371c;

    public o1() {
        this.f6370b = false;
        this.f6371c = false;
    }

    private static String c(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o1 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 0);
        if (bundle.getBoolean(c(1), false)) {
            return new o1(bundle.getBoolean(c(2), false));
        }
        return new o1();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof o1) {
            o1 o1Var = (o1) obj;
            return this.f6371c == o1Var.f6371c && this.f6370b == o1Var.f6370b;
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.l.b(Boolean.valueOf(this.f6370b), Boolean.valueOf(this.f6371c));
    }

    public o1(boolean z10) {
        this.f6370b = true;
        this.f6371c = z10;
    }
}
