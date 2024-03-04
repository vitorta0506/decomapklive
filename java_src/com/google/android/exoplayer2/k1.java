package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class k1 implements h {
    private static final k1 G = new b().E();
    public static final h.a<k1> H = new h.a() { // from class: com.google.android.exoplayer2.j1
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            k1 e10;
            e10 = k1.e(bundle);
            return e10;
        }
    };
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    private int F;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f6100a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f6101b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f6102c;

    /* renamed from: d  reason: collision with root package name */
    public final int f6103d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6104e;

    /* renamed from: f  reason: collision with root package name */
    public final int f6105f;

    /* renamed from: g  reason: collision with root package name */
    public final int f6106g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6107h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f6108i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final Metadata f6109j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final String f6110k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final String f6111l;

    /* renamed from: m  reason: collision with root package name */
    public final int f6112m;

    /* renamed from: n  reason: collision with root package name */
    public final List<byte[]> f6113n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public final DrmInitData f6114o;

    /* renamed from: p  reason: collision with root package name */
    public final long f6115p;

    /* renamed from: q  reason: collision with root package name */
    public final int f6116q;

    /* renamed from: r  reason: collision with root package name */
    public final int f6117r;

    /* renamed from: s  reason: collision with root package name */
    public final float f6118s;

    /* renamed from: t  reason: collision with root package name */
    public final int f6119t;

    /* renamed from: u  reason: collision with root package name */
    public final float f6120u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    public final byte[] f6121v;

    /* renamed from: w  reason: collision with root package name */
    public final int f6122w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    public final k3.c f6123x;

    /* renamed from: y  reason: collision with root package name */
    public final int f6124y;

    /* renamed from: z  reason: collision with root package name */
    public final int f6125z;

    /* loaded from: classes.dex */
    public static final class b {
        private int A;
        private int B;
        private int C;
        private int D;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f6126a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f6127b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f6128c;

        /* renamed from: d  reason: collision with root package name */
        private int f6129d;

        /* renamed from: e  reason: collision with root package name */
        private int f6130e;

        /* renamed from: f  reason: collision with root package name */
        private int f6131f;

        /* renamed from: g  reason: collision with root package name */
        private int f6132g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private String f6133h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Metadata f6134i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private String f6135j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private String f6136k;

        /* renamed from: l  reason: collision with root package name */
        private int f6137l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private List<byte[]> f6138m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private DrmInitData f6139n;

        /* renamed from: o  reason: collision with root package name */
        private long f6140o;

        /* renamed from: p  reason: collision with root package name */
        private int f6141p;

        /* renamed from: q  reason: collision with root package name */
        private int f6142q;

        /* renamed from: r  reason: collision with root package name */
        private float f6143r;

        /* renamed from: s  reason: collision with root package name */
        private int f6144s;

        /* renamed from: t  reason: collision with root package name */
        private float f6145t;
        @Nullable

        /* renamed from: u  reason: collision with root package name */
        private byte[] f6146u;

        /* renamed from: v  reason: collision with root package name */
        private int f6147v;
        @Nullable

        /* renamed from: w  reason: collision with root package name */
        private k3.c f6148w;

        /* renamed from: x  reason: collision with root package name */
        private int f6149x;

        /* renamed from: y  reason: collision with root package name */
        private int f6150y;

        /* renamed from: z  reason: collision with root package name */
        private int f6151z;

        public k1 E() {
            return new k1(this);
        }

        public b F(int i9) {
            this.C = i9;
            return this;
        }

        public b G(int i9) {
            this.f6131f = i9;
            return this;
        }

        public b H(int i9) {
            this.f6149x = i9;
            return this;
        }

        public b I(@Nullable String str) {
            this.f6133h = str;
            return this;
        }

        public b J(@Nullable k3.c cVar) {
            this.f6148w = cVar;
            return this;
        }

        public b K(@Nullable String str) {
            this.f6135j = str;
            return this;
        }

        public b L(int i9) {
            this.D = i9;
            return this;
        }

        public b M(@Nullable DrmInitData drmInitData) {
            this.f6139n = drmInitData;
            return this;
        }

        public b N(int i9) {
            this.A = i9;
            return this;
        }

        public b O(int i9) {
            this.B = i9;
            return this;
        }

        public b P(float f10) {
            this.f6143r = f10;
            return this;
        }

        public b Q(int i9) {
            this.f6142q = i9;
            return this;
        }

        public b R(int i9) {
            this.f6126a = Integer.toString(i9);
            return this;
        }

        public b S(@Nullable String str) {
            this.f6126a = str;
            return this;
        }

        public b T(@Nullable List<byte[]> list) {
            this.f6138m = list;
            return this;
        }

        public b U(@Nullable String str) {
            this.f6127b = str;
            return this;
        }

        public b V(@Nullable String str) {
            this.f6128c = str;
            return this;
        }

        public b W(int i9) {
            this.f6137l = i9;
            return this;
        }

        public b X(@Nullable Metadata metadata) {
            this.f6134i = metadata;
            return this;
        }

        public b Y(int i9) {
            this.f6151z = i9;
            return this;
        }

        public b Z(int i9) {
            this.f6132g = i9;
            return this;
        }

        public b a0(float f10) {
            this.f6145t = f10;
            return this;
        }

        public b b0(@Nullable byte[] bArr) {
            this.f6146u = bArr;
            return this;
        }

        public b c0(int i9) {
            this.f6130e = i9;
            return this;
        }

        public b d0(int i9) {
            this.f6144s = i9;
            return this;
        }

        public b e0(@Nullable String str) {
            this.f6136k = str;
            return this;
        }

        public b f0(int i9) {
            this.f6150y = i9;
            return this;
        }

        public b g0(int i9) {
            this.f6129d = i9;
            return this;
        }

        public b h0(int i9) {
            this.f6147v = i9;
            return this;
        }

        public b i0(long j10) {
            this.f6140o = j10;
            return this;
        }

        public b j0(int i9) {
            this.f6141p = i9;
            return this;
        }

        public b() {
            this.f6131f = -1;
            this.f6132g = -1;
            this.f6137l = -1;
            this.f6140o = Long.MAX_VALUE;
            this.f6141p = -1;
            this.f6142q = -1;
            this.f6143r = -1.0f;
            this.f6145t = 1.0f;
            this.f6147v = -1;
            this.f6149x = -1;
            this.f6150y = -1;
            this.f6151z = -1;
            this.C = -1;
            this.D = 0;
        }

        private b(k1 k1Var) {
            this.f6126a = k1Var.f6100a;
            this.f6127b = k1Var.f6101b;
            this.f6128c = k1Var.f6102c;
            this.f6129d = k1Var.f6103d;
            this.f6130e = k1Var.f6104e;
            this.f6131f = k1Var.f6105f;
            this.f6132g = k1Var.f6106g;
            this.f6133h = k1Var.f6108i;
            this.f6134i = k1Var.f6109j;
            this.f6135j = k1Var.f6110k;
            this.f6136k = k1Var.f6111l;
            this.f6137l = k1Var.f6112m;
            this.f6138m = k1Var.f6113n;
            this.f6139n = k1Var.f6114o;
            this.f6140o = k1Var.f6115p;
            this.f6141p = k1Var.f6116q;
            this.f6142q = k1Var.f6117r;
            this.f6143r = k1Var.f6118s;
            this.f6144s = k1Var.f6119t;
            this.f6145t = k1Var.f6120u;
            this.f6146u = k1Var.f6121v;
            this.f6147v = k1Var.f6122w;
            this.f6148w = k1Var.f6123x;
            this.f6149x = k1Var.f6124y;
            this.f6150y = k1Var.f6125z;
            this.f6151z = k1Var.A;
            this.A = k1Var.B;
            this.B = k1Var.C;
            this.C = k1Var.D;
            this.D = k1Var.E;
        }
    }

    @Nullable
    private static <T> T d(@Nullable T t10, @Nullable T t11) {
        return t10 != null ? t10 : t11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static k1 e(Bundle bundle) {
        b bVar = new b();
        com.google.android.exoplayer2.util.c.a(bundle);
        int i9 = 0;
        String string = bundle.getString(h(0));
        k1 k1Var = G;
        bVar.S((String) d(string, k1Var.f6100a)).U((String) d(bundle.getString(h(1)), k1Var.f6101b)).V((String) d(bundle.getString(h(2)), k1Var.f6102c)).g0(bundle.getInt(h(3), k1Var.f6103d)).c0(bundle.getInt(h(4), k1Var.f6104e)).G(bundle.getInt(h(5), k1Var.f6105f)).Z(bundle.getInt(h(6), k1Var.f6106g)).I((String) d(bundle.getString(h(7)), k1Var.f6108i)).X((Metadata) d((Metadata) bundle.getParcelable(h(8)), k1Var.f6109j)).K((String) d(bundle.getString(h(9)), k1Var.f6110k)).e0((String) d(bundle.getString(h(10)), k1Var.f6111l)).W(bundle.getInt(h(11), k1Var.f6112m));
        ArrayList arrayList = new ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(i(i9));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i9++;
        }
        b M = bVar.T(arrayList).M((DrmInitData) bundle.getParcelable(h(13)));
        String h10 = h(14);
        k1 k1Var2 = G;
        M.i0(bundle.getLong(h10, k1Var2.f6115p)).j0(bundle.getInt(h(15), k1Var2.f6116q)).Q(bundle.getInt(h(16), k1Var2.f6117r)).P(bundle.getFloat(h(17), k1Var2.f6118s)).d0(bundle.getInt(h(18), k1Var2.f6119t)).a0(bundle.getFloat(h(19), k1Var2.f6120u)).b0(bundle.getByteArray(h(20))).h0(bundle.getInt(h(21), k1Var2.f6122w));
        Bundle bundle2 = bundle.getBundle(h(22));
        if (bundle2 != null) {
            bVar.J(k3.c.f53523f.a(bundle2));
        }
        bVar.H(bundle.getInt(h(23), k1Var2.f6124y)).f0(bundle.getInt(h(24), k1Var2.f6125z)).Y(bundle.getInt(h(25), k1Var2.A)).N(bundle.getInt(h(26), k1Var2.B)).O(bundle.getInt(h(27), k1Var2.C)).F(bundle.getInt(h(28), k1Var2.D)).L(bundle.getInt(h(29), k1Var2.E));
        return bVar.E();
    }

    private static String h(int i9) {
        return Integer.toString(i9, 36);
    }

    private static String i(int i9) {
        return h(12) + "_" + Integer.toString(i9, 36);
    }

    public b b() {
        return new b();
    }

    public k1 c(int i9) {
        return b().L(i9).E();
    }

    public boolean equals(@Nullable Object obj) {
        int i9;
        if (this == obj) {
            return true;
        }
        if (obj == null || k1.class != obj.getClass()) {
            return false;
        }
        k1 k1Var = (k1) obj;
        int i10 = this.F;
        return (i10 == 0 || (i9 = k1Var.F) == 0 || i10 == i9) && this.f6103d == k1Var.f6103d && this.f6104e == k1Var.f6104e && this.f6105f == k1Var.f6105f && this.f6106g == k1Var.f6106g && this.f6112m == k1Var.f6112m && this.f6115p == k1Var.f6115p && this.f6116q == k1Var.f6116q && this.f6117r == k1Var.f6117r && this.f6119t == k1Var.f6119t && this.f6122w == k1Var.f6122w && this.f6124y == k1Var.f6124y && this.f6125z == k1Var.f6125z && this.A == k1Var.A && this.B == k1Var.B && this.C == k1Var.C && this.D == k1Var.D && this.E == k1Var.E && Float.compare(this.f6118s, k1Var.f6118s) == 0 && Float.compare(this.f6120u, k1Var.f6120u) == 0 && com.google.android.exoplayer2.util.l0.c(this.f6100a, k1Var.f6100a) && com.google.android.exoplayer2.util.l0.c(this.f6101b, k1Var.f6101b) && com.google.android.exoplayer2.util.l0.c(this.f6108i, k1Var.f6108i) && com.google.android.exoplayer2.util.l0.c(this.f6110k, k1Var.f6110k) && com.google.android.exoplayer2.util.l0.c(this.f6111l, k1Var.f6111l) && com.google.android.exoplayer2.util.l0.c(this.f6102c, k1Var.f6102c) && Arrays.equals(this.f6121v, k1Var.f6121v) && com.google.android.exoplayer2.util.l0.c(this.f6109j, k1Var.f6109j) && com.google.android.exoplayer2.util.l0.c(this.f6123x, k1Var.f6123x) && com.google.android.exoplayer2.util.l0.c(this.f6114o, k1Var.f6114o) && g(k1Var);
    }

    public int f() {
        int i9;
        int i10 = this.f6116q;
        if (i10 == -1 || (i9 = this.f6117r) == -1) {
            return -1;
        }
        return i10 * i9;
    }

    public boolean g(k1 k1Var) {
        if (this.f6113n.size() != k1Var.f6113n.size()) {
            return false;
        }
        for (int i9 = 0; i9 < this.f6113n.size(); i9++) {
            if (!Arrays.equals(this.f6113n.get(i9), k1Var.f6113n.get(i9))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (this.F == 0) {
            String str = this.f6100a;
            int hashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f6101b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f6102c;
            int hashCode3 = (((((((((hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f6103d) * 31) + this.f6104e) * 31) + this.f6105f) * 31) + this.f6106g) * 31;
            String str4 = this.f6108i;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Metadata metadata = this.f6109j;
            int hashCode5 = (hashCode4 + (metadata == null ? 0 : metadata.hashCode())) * 31;
            String str5 = this.f6110k;
            int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f6111l;
            this.F = ((((((((((((((((((((((((((((((hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.f6112m) * 31) + ((int) this.f6115p)) * 31) + this.f6116q) * 31) + this.f6117r) * 31) + Float.floatToIntBits(this.f6118s)) * 31) + this.f6119t) * 31) + Float.floatToIntBits(this.f6120u)) * 31) + this.f6122w) * 31) + this.f6124y) * 31) + this.f6125z) * 31) + this.A) * 31) + this.B) * 31) + this.C) * 31) + this.D) * 31) + this.E;
        }
        return this.F;
    }

    public Bundle j() {
        Bundle bundle = new Bundle();
        bundle.putString(h(0), this.f6100a);
        bundle.putString(h(1), this.f6101b);
        bundle.putString(h(2), this.f6102c);
        bundle.putInt(h(3), this.f6103d);
        bundle.putInt(h(4), this.f6104e);
        bundle.putInt(h(5), this.f6105f);
        bundle.putInt(h(6), this.f6106g);
        bundle.putString(h(7), this.f6108i);
        bundle.putParcelable(h(8), this.f6109j);
        bundle.putString(h(9), this.f6110k);
        bundle.putString(h(10), this.f6111l);
        bundle.putInt(h(11), this.f6112m);
        for (int i9 = 0; i9 < this.f6113n.size(); i9++) {
            bundle.putByteArray(i(i9), this.f6113n.get(i9));
        }
        bundle.putParcelable(h(13), this.f6114o);
        bundle.putLong(h(14), this.f6115p);
        bundle.putInt(h(15), this.f6116q);
        bundle.putInt(h(16), this.f6117r);
        bundle.putFloat(h(17), this.f6118s);
        bundle.putInt(h(18), this.f6119t);
        bundle.putFloat(h(19), this.f6120u);
        bundle.putByteArray(h(20), this.f6121v);
        bundle.putInt(h(21), this.f6122w);
        if (this.f6123x != null) {
            bundle.putBundle(h(22), this.f6123x.f());
        }
        bundle.putInt(h(23), this.f6124y);
        bundle.putInt(h(24), this.f6125z);
        bundle.putInt(h(25), this.A);
        bundle.putInt(h(26), this.B);
        bundle.putInt(h(27), this.C);
        bundle.putInt(h(28), this.D);
        bundle.putInt(h(29), this.E);
        return bundle;
    }

    public String toString() {
        return "Format(" + this.f6100a + ", " + this.f6101b + ", " + this.f6110k + ", " + this.f6111l + ", " + this.f6108i + ", " + this.f6107h + ", " + this.f6102c + ", [" + this.f6116q + ", " + this.f6117r + ", " + this.f6118s + "], [" + this.f6124y + ", " + this.f6125z + "])";
    }

    private k1(b bVar) {
        this.f6100a = bVar.f6126a;
        this.f6101b = bVar.f6127b;
        this.f6102c = com.google.android.exoplayer2.util.l0.y0(bVar.f6128c);
        this.f6103d = bVar.f6129d;
        this.f6104e = bVar.f6130e;
        int i9 = bVar.f6131f;
        this.f6105f = i9;
        int i10 = bVar.f6132g;
        this.f6106g = i10;
        this.f6107h = i10 != -1 ? i10 : i9;
        this.f6108i = bVar.f6133h;
        this.f6109j = bVar.f6134i;
        this.f6110k = bVar.f6135j;
        this.f6111l = bVar.f6136k;
        this.f6112m = bVar.f6137l;
        this.f6113n = bVar.f6138m == null ? Collections.emptyList() : bVar.f6138m;
        DrmInitData drmInitData = bVar.f6139n;
        this.f6114o = drmInitData;
        this.f6115p = bVar.f6140o;
        this.f6116q = bVar.f6141p;
        this.f6117r = bVar.f6142q;
        this.f6118s = bVar.f6143r;
        this.f6119t = bVar.f6144s == -1 ? 0 : bVar.f6144s;
        this.f6120u = bVar.f6145t == -1.0f ? 1.0f : bVar.f6145t;
        this.f6121v = bVar.f6146u;
        this.f6122w = bVar.f6147v;
        this.f6123x = bVar.f6148w;
        this.f6124y = bVar.f6149x;
        this.f6125z = bVar.f6150y;
        this.A = bVar.f6151z;
        this.B = bVar.A == -1 ? 0 : bVar.A;
        this.C = bVar.B != -1 ? bVar.B : 0;
        this.D = bVar.C;
        if (bVar.D == 0 && drmInitData != null) {
            this.E = 1;
        } else {
            this.E = bVar.D;
        }
    }
}
