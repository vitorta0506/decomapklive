package cn.jpush.android.x;

import cn.jpush.android.helper.Logger;
/* loaded from: classes.dex */
public class b extends e {
    private int A;
    private int B;
    private int C;
    private int D;

    /* renamed from: w  reason: collision with root package name */
    private float f3481w;

    /* renamed from: x  reason: collision with root package name */
    private float f3482x;

    /* renamed from: y  reason: collision with root package name */
    private float f3483y;

    /* renamed from: z  reason: collision with root package name */
    private int f3484z;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f3485a = 0;

        /* renamed from: b  reason: collision with root package name */
        private float f3486b;

        /* renamed from: c  reason: collision with root package name */
        private float f3487c;

        /* renamed from: d  reason: collision with root package name */
        private float f3488d;

        /* renamed from: e  reason: collision with root package name */
        private int f3489e;

        /* renamed from: f  reason: collision with root package name */
        private int f3490f;

        /* renamed from: g  reason: collision with root package name */
        private int f3491g;

        /* renamed from: h  reason: collision with root package name */
        private int f3492h;

        /* renamed from: i  reason: collision with root package name */
        private cn.jpush.android.d.d f3493i;

        public a a(float f10) {
            this.f3486b = f10 * 1000.0f;
            return this;
        }

        public a a(int i9) {
            this.f3489e = i9;
            return this;
        }

        public a a(cn.jpush.android.d.d dVar) {
            this.f3493i = dVar;
            return this;
        }

        public b a() {
            Logger.d("InAppBannerMessage", "build InAppBannerMessage object");
            return new b(this.f3486b, this.f3487c, this.f3488d, this.f3489e, this.f3490f, this.f3491g, this.f3492h, this.f3485a, this.f3493i);
        }

        public a b(float f10) {
            this.f3487c = f10 * 1000.0f;
            return this;
        }

        public a b(int i9) {
            this.f3490f = i9;
            return this;
        }

        public a c(float f10) {
            this.f3488d = f10 * 1000.0f;
            return this;
        }

        public a c(int i9) {
            this.f3491g = i9;
            return this;
        }

        public a d(int i9) {
            this.f3492h = i9;
            return this;
        }

        public a e(int i9) {
            this.f3485a = i9;
            return this;
        }
    }

    private b(float f10, float f11, float f12, int i9, int i10, int i11, int i12, int i13, cn.jpush.android.d.d dVar) {
        super(dVar);
        this.f3481w = f10;
        this.f3482x = f11;
        this.f3483y = f12;
        this.f3484z = i9;
        this.A = i10;
        this.B = i11;
        this.C = i12;
        this.D = i13;
    }

    public static a j() {
        return new a();
    }

    public boolean a() {
        return this.C == 1;
    }

    public boolean b() {
        return this.D == 1;
    }

    public int c() {
        return this.f3484z;
    }

    public int d() {
        return this.A;
    }

    public int e() {
        return this.B;
    }

    public boolean f() {
        return this.f3481w > 0.0f;
    }

    public float g() {
        return this.f3481w;
    }

    public float h() {
        return this.f3482x;
    }

    public float i() {
        return this.f3483y;
    }
}
