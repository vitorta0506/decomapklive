package kd;

import androidx.annotation.NonNull;
import com.rd.animation.type.AnimationType;
import com.rd.draw.data.Orientation;
import com.rd.draw.data.RtlMode;
/* loaded from: classes4.dex */
public class a {
    private RtlMode A;

    /* renamed from: a  reason: collision with root package name */
    private int f53673a;

    /* renamed from: b  reason: collision with root package name */
    private int f53674b;

    /* renamed from: c  reason: collision with root package name */
    private int f53675c;

    /* renamed from: d  reason: collision with root package name */
    private int f53676d;

    /* renamed from: e  reason: collision with root package name */
    private int f53677e;

    /* renamed from: f  reason: collision with root package name */
    private int f53678f;

    /* renamed from: g  reason: collision with root package name */
    private int f53679g;

    /* renamed from: h  reason: collision with root package name */
    private int f53680h;

    /* renamed from: i  reason: collision with root package name */
    private int f53681i;

    /* renamed from: j  reason: collision with root package name */
    private float f53682j;

    /* renamed from: k  reason: collision with root package name */
    private int f53683k;

    /* renamed from: l  reason: collision with root package name */
    private int f53684l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f53685m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f53686n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f53687o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f53688p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f53689q;

    /* renamed from: r  reason: collision with root package name */
    private long f53690r;

    /* renamed from: s  reason: collision with root package name */
    private long f53691s;

    /* renamed from: u  reason: collision with root package name */
    private int f53693u;

    /* renamed from: v  reason: collision with root package name */
    private int f53694v;

    /* renamed from: w  reason: collision with root package name */
    private int f53695w;

    /* renamed from: y  reason: collision with root package name */
    private Orientation f53697y;

    /* renamed from: z  reason: collision with root package name */
    private AnimationType f53698z;

    /* renamed from: t  reason: collision with root package name */
    private int f53692t = 3;

    /* renamed from: x  reason: collision with root package name */
    private int f53696x = -1;

    public void A(long j10) {
        this.f53691s = j10;
    }

    public void B(AnimationType animationType) {
        this.f53698z = animationType;
    }

    public void C(boolean z10) {
        this.f53686n = z10;
    }

    public void D(int i9) {
        this.f53692t = i9;
    }

    public void E(boolean z10) {
        this.f53687o = z10;
    }

    public void F(boolean z10) {
        this.f53688p = z10;
    }

    public void G(int i9) {
        this.f53673a = i9;
    }

    public void H(boolean z10) {
        this.f53689q = z10;
    }

    public void I(long j10) {
        this.f53690r = j10;
    }

    public void J(boolean z10) {
        this.f53685m = z10;
    }

    public void K(int i9) {
        this.f53695w = i9;
    }

    public void L(Orientation orientation) {
        this.f53697y = orientation;
    }

    public void M(int i9) {
        this.f53676d = i9;
    }

    public void N(int i9) {
        this.f53680h = i9;
    }

    public void O(int i9) {
        this.f53677e = i9;
    }

    public void P(int i9) {
        this.f53679g = i9;
    }

    public void Q(int i9) {
        this.f53678f = i9;
    }

    public void R(int i9) {
        this.f53675c = i9;
    }

    public void S(RtlMode rtlMode) {
        this.A = rtlMode;
    }

    public void T(float f10) {
        this.f53682j = f10;
    }

    public void U(int i9) {
        this.f53684l = i9;
    }

    public void V(int i9) {
        this.f53693u = i9;
    }

    public void W(int i9) {
        this.f53694v = i9;
    }

    public void X(int i9) {
        this.f53681i = i9;
    }

    public void Y(int i9) {
        this.f53683k = i9;
    }

    public void Z(int i9) {
        this.f53696x = i9;
    }

    public long a() {
        return this.f53691s;
    }

    public void a0(int i9) {
        this.f53674b = i9;
    }

    @NonNull
    public AnimationType b() {
        if (this.f53698z == null) {
            this.f53698z = AnimationType.NONE;
        }
        return this.f53698z;
    }

    public int c() {
        return this.f53692t;
    }

    public int d() {
        return this.f53673a;
    }

    public long e() {
        return this.f53690r;
    }

    public int f() {
        return this.f53695w;
    }

    @NonNull
    public Orientation g() {
        if (this.f53697y == null) {
            this.f53697y = Orientation.HORIZONTAL;
        }
        return this.f53697y;
    }

    public int h() {
        return this.f53676d;
    }

    public int i() {
        return this.f53680h;
    }

    public int j() {
        return this.f53677e;
    }

    public int k() {
        return this.f53679g;
    }

    public int l() {
        return this.f53678f;
    }

    public int m() {
        return this.f53675c;
    }

    @NonNull
    public RtlMode n() {
        if (this.A == null) {
            this.A = RtlMode.Off;
        }
        return this.A;
    }

    public float o() {
        return this.f53682j;
    }

    public int p() {
        return this.f53684l;
    }

    public int q() {
        return this.f53693u;
    }

    public int r() {
        return this.f53694v;
    }

    public int s() {
        return this.f53681i;
    }

    public int t() {
        return this.f53683k;
    }

    public int u() {
        return this.f53696x;
    }

    public int v() {
        return this.f53674b;
    }

    public boolean w() {
        return this.f53686n;
    }

    public boolean x() {
        return this.f53687o;
    }

    public boolean y() {
        return this.f53688p;
    }

    public boolean z() {
        return this.f53685m;
    }
}
