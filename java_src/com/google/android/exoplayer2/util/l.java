package com.google.android.exoplayer2.util;

import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final SparseBooleanArray f6982a;

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final SparseBooleanArray f6983a = new SparseBooleanArray();

        /* renamed from: b  reason: collision with root package name */
        private boolean f6984b;

        public b a(int i9) {
            com.google.android.exoplayer2.util.a.f(!this.f6984b);
            this.f6983a.append(i9, true);
            return this;
        }

        public b b(l lVar) {
            for (int i9 = 0; i9 < lVar.d(); i9++) {
                a(lVar.c(i9));
            }
            return this;
        }

        public b c(int... iArr) {
            for (int i9 : iArr) {
                a(i9);
            }
            return this;
        }

        public b d(int i9, boolean z10) {
            return z10 ? a(i9) : this;
        }

        public l e() {
            com.google.android.exoplayer2.util.a.f(!this.f6984b);
            this.f6984b = true;
            return new l(this.f6983a);
        }
    }

    public boolean a(int i9) {
        return this.f6982a.get(i9);
    }

    public boolean b(int... iArr) {
        for (int i9 : iArr) {
            if (a(i9)) {
                return true;
            }
        }
        return false;
    }

    public int c(int i9) {
        com.google.android.exoplayer2.util.a.c(i9, 0, d());
        return this.f6982a.keyAt(i9);
    }

    public int d() {
        return this.f6982a.size();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (l0.f6985a < 24) {
                if (d() != lVar.d()) {
                    return false;
                }
                for (int i9 = 0; i9 < d(); i9++) {
                    if (c(i9) != lVar.c(i9)) {
                        return false;
                    }
                }
                return true;
            }
            return this.f6982a.equals(lVar.f6982a);
        }
        return false;
    }

    public int hashCode() {
        if (l0.f6985a < 24) {
            int d10 = d();
            for (int i9 = 0; i9 < d(); i9++) {
                d10 = (d10 * 31) + c(i9);
            }
            return d10;
        }
        return this.f6982a.hashCode();
    }

    private l(SparseBooleanArray sparseBooleanArray) {
        this.f6982a = sparseBooleanArray;
    }
}
