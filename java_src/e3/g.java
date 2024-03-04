package e3;

import android.text.Layout;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
final class g {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f38411a;

    /* renamed from: b  reason: collision with root package name */
    private int f38412b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f38413c;

    /* renamed from: d  reason: collision with root package name */
    private int f38414d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f38415e;

    /* renamed from: k  reason: collision with root package name */
    private float f38421k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f38422l;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Layout.Alignment f38425o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Layout.Alignment f38426p;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private b f38428r;

    /* renamed from: f  reason: collision with root package name */
    private int f38416f = -1;

    /* renamed from: g  reason: collision with root package name */
    private int f38417g = -1;

    /* renamed from: h  reason: collision with root package name */
    private int f38418h = -1;

    /* renamed from: i  reason: collision with root package name */
    private int f38419i = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f38420j = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f38423m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f38424n = -1;

    /* renamed from: q  reason: collision with root package name */
    private int f38427q = -1;

    /* renamed from: s  reason: collision with root package name */
    private float f38429s = Float.MAX_VALUE;

    private g r(@Nullable g gVar, boolean z10) {
        int i9;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f38413c && gVar.f38413c) {
                w(gVar.f38412b);
            }
            if (this.f38418h == -1) {
                this.f38418h = gVar.f38418h;
            }
            if (this.f38419i == -1) {
                this.f38419i = gVar.f38419i;
            }
            if (this.f38411a == null && (str = gVar.f38411a) != null) {
                this.f38411a = str;
            }
            if (this.f38416f == -1) {
                this.f38416f = gVar.f38416f;
            }
            if (this.f38417g == -1) {
                this.f38417g = gVar.f38417g;
            }
            if (this.f38424n == -1) {
                this.f38424n = gVar.f38424n;
            }
            if (this.f38425o == null && (alignment2 = gVar.f38425o) != null) {
                this.f38425o = alignment2;
            }
            if (this.f38426p == null && (alignment = gVar.f38426p) != null) {
                this.f38426p = alignment;
            }
            if (this.f38427q == -1) {
                this.f38427q = gVar.f38427q;
            }
            if (this.f38420j == -1) {
                this.f38420j = gVar.f38420j;
                this.f38421k = gVar.f38421k;
            }
            if (this.f38428r == null) {
                this.f38428r = gVar.f38428r;
            }
            if (this.f38429s == Float.MAX_VALUE) {
                this.f38429s = gVar.f38429s;
            }
            if (z10 && !this.f38415e && gVar.f38415e) {
                u(gVar.f38414d);
            }
            if (z10 && this.f38423m == -1 && (i9 = gVar.f38423m) != -1) {
                this.f38423m = i9;
            }
        }
        return this;
    }

    public g A(@Nullable String str) {
        this.f38422l = str;
        return this;
    }

    public g B(boolean z10) {
        this.f38419i = z10 ? 1 : 0;
        return this;
    }

    public g C(boolean z10) {
        this.f38416f = z10 ? 1 : 0;
        return this;
    }

    public g D(@Nullable Layout.Alignment alignment) {
        this.f38426p = alignment;
        return this;
    }

    public g E(int i9) {
        this.f38424n = i9;
        return this;
    }

    public g F(int i9) {
        this.f38423m = i9;
        return this;
    }

    public g G(float f10) {
        this.f38429s = f10;
        return this;
    }

    public g H(@Nullable Layout.Alignment alignment) {
        this.f38425o = alignment;
        return this;
    }

    public g I(boolean z10) {
        this.f38427q = z10 ? 1 : 0;
        return this;
    }

    public g J(@Nullable b bVar) {
        this.f38428r = bVar;
        return this;
    }

    public g K(boolean z10) {
        this.f38417g = z10 ? 1 : 0;
        return this;
    }

    public g a(@Nullable g gVar) {
        return r(gVar, true);
    }

    public int b() {
        if (this.f38415e) {
            return this.f38414d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public int c() {
        if (this.f38413c) {
            return this.f38412b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    @Nullable
    public String d() {
        return this.f38411a;
    }

    public float e() {
        return this.f38421k;
    }

    public int f() {
        return this.f38420j;
    }

    @Nullable
    public String g() {
        return this.f38422l;
    }

    @Nullable
    public Layout.Alignment h() {
        return this.f38426p;
    }

    public int i() {
        return this.f38424n;
    }

    public int j() {
        return this.f38423m;
    }

    public float k() {
        return this.f38429s;
    }

    public int l() {
        int i9 = this.f38418h;
        if (i9 == -1 && this.f38419i == -1) {
            return -1;
        }
        return (i9 == 1 ? 1 : 0) | (this.f38419i == 1 ? 2 : 0);
    }

    @Nullable
    public Layout.Alignment m() {
        return this.f38425o;
    }

    public boolean n() {
        return this.f38427q == 1;
    }

    @Nullable
    public b o() {
        return this.f38428r;
    }

    public boolean p() {
        return this.f38415e;
    }

    public boolean q() {
        return this.f38413c;
    }

    public boolean s() {
        return this.f38416f == 1;
    }

    public boolean t() {
        return this.f38417g == 1;
    }

    public g u(int i9) {
        this.f38414d = i9;
        this.f38415e = true;
        return this;
    }

    public g v(boolean z10) {
        this.f38418h = z10 ? 1 : 0;
        return this;
    }

    public g w(int i9) {
        this.f38412b = i9;
        this.f38413c = true;
        return this;
    }

    public g x(@Nullable String str) {
        this.f38411a = str;
        return this;
    }

    public g y(float f10) {
        this.f38421k = f10;
        return this;
    }

    public g z(int i9) {
        this.f38420j = i9;
        return this;
    }
}
