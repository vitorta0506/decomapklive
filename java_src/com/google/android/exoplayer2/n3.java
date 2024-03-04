package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.n3;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public final class n3 implements h {

    /* renamed from: b  reason: collision with root package name */
    public static final n3 f6352b = new n3(ImmutableList.of());

    /* renamed from: c  reason: collision with root package name */
    public static final h.a<n3> f6353c = new h.a() { // from class: com.google.android.exoplayer2.l3
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            n3 f10;
            f10 = n3.f(bundle);
            return f10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<a> f6354a;

    /* loaded from: classes.dex */
    public static final class a implements h {

        /* renamed from: f  reason: collision with root package name */
        public static final h.a<a> f6355f = new h.a() { // from class: com.google.android.exoplayer2.m3
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                n3.a k10;
                k10 = n3.a.k(bundle);
                return k10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final int f6356a;

        /* renamed from: b  reason: collision with root package name */
        private final v2.o0 f6357b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f6358c;

        /* renamed from: d  reason: collision with root package name */
        private final int[] f6359d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean[] f6360e;

        public a(v2.o0 o0Var, boolean z10, int[] iArr, boolean[] zArr) {
            int i9 = o0Var.f58912a;
            this.f6356a = i9;
            boolean z11 = false;
            com.google.android.exoplayer2.util.a.a(i9 == iArr.length && i9 == zArr.length);
            this.f6357b = o0Var;
            if (z10 && i9 > 1) {
                z11 = true;
            }
            this.f6358c = z11;
            this.f6359d = (int[]) iArr.clone();
            this.f6360e = (boolean[]) zArr.clone();
        }

        private static String j(int i9) {
            return Integer.toString(i9, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ a k(Bundle bundle) {
            v2.o0 a10 = v2.o0.f58911f.a((Bundle) com.google.android.exoplayer2.util.a.e(bundle.getBundle(j(0))));
            return new a(a10, bundle.getBoolean(j(4), false), (int[]) com.google.common.base.j.a(bundle.getIntArray(j(1)), new int[a10.f58912a]), (boolean[]) com.google.common.base.j.a(bundle.getBooleanArray(j(3)), new boolean[a10.f58912a]));
        }

        public v2.o0 b() {
            return this.f6357b;
        }

        public k1 c(int i9) {
            return this.f6357b.b(i9);
        }

        public int d() {
            return this.f6357b.f58914c;
        }

        public boolean e() {
            return this.f6358c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f6358c == aVar.f6358c && this.f6357b.equals(aVar.f6357b) && Arrays.equals(this.f6359d, aVar.f6359d) && Arrays.equals(this.f6360e, aVar.f6360e);
        }

        public boolean f() {
            return com.google.common.primitives.a.b(this.f6360e, true);
        }

        public boolean g(int i9) {
            return this.f6360e[i9];
        }

        public boolean h(int i9) {
            return i(i9, false);
        }

        public int hashCode() {
            return (((((this.f6357b.hashCode() * 31) + (this.f6358c ? 1 : 0)) * 31) + Arrays.hashCode(this.f6359d)) * 31) + Arrays.hashCode(this.f6360e);
        }

        public boolean i(int i9, boolean z10) {
            int[] iArr = this.f6359d;
            return iArr[i9] == 4 || (z10 && iArr[i9] == 3);
        }
    }

    public n3(List<a> list) {
        this.f6354a = ImmutableList.copyOf((Collection) list);
    }

    private static String e(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ n3 f(Bundle bundle) {
        ImmutableList b10;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(e(0));
        if (parcelableArrayList == null) {
            b10 = ImmutableList.of();
        } else {
            b10 = com.google.android.exoplayer2.util.c.b(a.f6355f, parcelableArrayList);
        }
        return new n3(b10);
    }

    public ImmutableList<a> b() {
        return this.f6354a;
    }

    public boolean c() {
        return this.f6354a.isEmpty();
    }

    public boolean d(int i9) {
        for (int i10 = 0; i10 < this.f6354a.size(); i10++) {
            a aVar = this.f6354a.get(i10);
            if (aVar.f() && aVar.d() == i9) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n3.class != obj.getClass()) {
            return false;
        }
        return this.f6354a.equals(((n3) obj).f6354a);
    }

    public int hashCode() {
        return this.f6354a.hashCode();
    }
}
