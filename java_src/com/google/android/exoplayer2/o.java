package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
/* loaded from: classes.dex */
public final class o implements h {

    /* renamed from: d  reason: collision with root package name */
    public static final o f6361d = new o(0, 0, 0);

    /* renamed from: e  reason: collision with root package name */
    public static final h.a<o> f6362e = new h.a() { // from class: com.google.android.exoplayer2.n
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            o c10;
            c10 = o.c(bundle);
            return c10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f6363a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6364b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6365c;

    public o(int i9, int i10, int i11) {
        this.f6363a = i9;
        this.f6364b = i10;
        this.f6365c = i11;
    }

    private static String b(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o c(Bundle bundle) {
        return new o(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            return this.f6363a == oVar.f6363a && this.f6364b == oVar.f6364b && this.f6365c == oVar.f6365c;
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f6363a) * 31) + this.f6364b) * 31) + this.f6365c;
    }
}
