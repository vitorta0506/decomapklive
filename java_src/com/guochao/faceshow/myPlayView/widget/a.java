package com.guochao.faceshow.myPlayView.widget;

import android.graphics.Matrix;
/* loaded from: classes4.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    private za.a f26079a;

    /* renamed from: b  reason: collision with root package name */
    private za.a f26080b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.myPlayView.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C0261a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26081a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f26082b;

        static {
            int[] iArr = new int[PivotPoint.values().length];
            f26082b = iArr;
            try {
                iArr[PivotPoint.LEFT_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26082b[PivotPoint.LEFT_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26082b[PivotPoint.LEFT_BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26082b[PivotPoint.CENTER_TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26082b[PivotPoint.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26082b[PivotPoint.CENTER_BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f26082b[PivotPoint.RIGHT_TOP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f26082b[PivotPoint.RIGHT_CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f26082b[PivotPoint.RIGHT_BOTTOM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[ScaleType.values().length];
            f26081a = iArr2;
            try {
                iArr2[ScaleType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f26081a[ScaleType.FIT_XY.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f26081a[ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f26081a[ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f26081a[ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f26081a[ScaleType.LEFT_TOP.ordinal()] = 6;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f26081a[ScaleType.LEFT_CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f26081a[ScaleType.LEFT_BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f26081a[ScaleType.CENTER_TOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f26081a[ScaleType.CENTER.ordinal()] = 10;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f26081a[ScaleType.CENTER_BOTTOM.ordinal()] = 11;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f26081a[ScaleType.RIGHT_TOP.ordinal()] = 12;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f26081a[ScaleType.RIGHT_CENTER.ordinal()] = 13;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f26081a[ScaleType.RIGHT_BOTTOM.ordinal()] = 14;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f26081a[ScaleType.LEFT_TOP_CROP.ordinal()] = 15;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f26081a[ScaleType.LEFT_CENTER_CROP.ordinal()] = 16;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f26081a[ScaleType.LEFT_BOTTOM_CROP.ordinal()] = 17;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f26081a[ScaleType.CENTER_TOP_CROP.ordinal()] = 18;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f26081a[ScaleType.CENTER_CROP.ordinal()] = 19;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f26081a[ScaleType.CENTER_BOTTOM_CROP.ordinal()] = 20;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f26081a[ScaleType.RIGHT_TOP_CROP.ordinal()] = 21;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f26081a[ScaleType.RIGHT_CENTER_CROP.ordinal()] = 22;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f26081a[ScaleType.RIGHT_BOTTOM_CROP.ordinal()] = 23;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f26081a[ScaleType.START_INSIDE.ordinal()] = 24;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f26081a[ScaleType.CENTER_INSIDE.ordinal()] = 25;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f26081a[ScaleType.END_INSIDE.ordinal()] = 26;
            } catch (NoSuchFieldError unused35) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(za.a aVar, za.a aVar2) {
        this.f26079a = aVar;
        this.f26080b = aVar2;
    }

    private Matrix a() {
        if (this.f26080b.a() <= this.f26079a.b() && this.f26080b.a() <= this.f26079a.a()) {
            return l(PivotPoint.CENTER);
        }
        return c();
    }

    private Matrix b() {
        if (this.f26080b.a() <= this.f26079a.b() && this.f26080b.a() <= this.f26079a.a()) {
            return l(PivotPoint.RIGHT_BOTTOM);
        }
        return d();
    }

    private Matrix c() {
        return h(PivotPoint.CENTER);
    }

    private Matrix d() {
        return h(PivotPoint.RIGHT_BOTTOM);
    }

    private Matrix e() {
        return h(PivotPoint.LEFT_TOP);
    }

    private Matrix f() {
        return j(1.0f, 1.0f, PivotPoint.LEFT_TOP);
    }

    private Matrix g(PivotPoint pivotPoint) {
        float b10 = this.f26079a.b() / this.f26080b.b();
        float a10 = this.f26079a.a() / this.f26080b.a();
        float max = Math.max(b10, a10);
        return j(max / b10, max / a10, pivotPoint);
    }

    private Matrix h(PivotPoint pivotPoint) {
        float b10 = this.f26079a.b() / this.f26080b.b();
        float a10 = this.f26079a.a() / this.f26080b.a();
        float min = Math.min(b10, a10);
        return j(min / b10, min / a10, pivotPoint);
    }

    private Matrix i(float f10, float f11, float f12, float f13) {
        Matrix matrix = new Matrix();
        matrix.setScale(f10, f11, f12, f13);
        return matrix;
    }

    private Matrix j(float f10, float f11, PivotPoint pivotPoint) {
        switch (C0261a.f26082b[pivotPoint.ordinal()]) {
            case 1:
                return i(f10, f11, 0.0f, 0.0f);
            case 2:
                return i(f10, f11, 0.0f, this.f26079a.a() / 2.0f);
            case 3:
                return i(f10, f11, 0.0f, this.f26079a.a());
            case 4:
                return i(f10, f11, this.f26079a.b() / 2.0f, 0.0f);
            case 5:
                return i(f10, f11, this.f26079a.b() / 2.0f, this.f26079a.a() / 2.0f);
            case 6:
                return i(f10, f11, this.f26079a.b() / 2.0f, this.f26079a.a());
            case 7:
                return i(f10, f11, this.f26079a.b(), 0.0f);
            case 8:
                return i(f10, f11, this.f26079a.b(), this.f26079a.a() / 2.0f);
            case 9:
                return i(f10, f11, this.f26079a.b(), this.f26079a.a());
            default:
                throw new IllegalArgumentException("Illegal PivotPoint");
        }
    }

    private Matrix k() {
        return j(this.f26080b.b() / this.f26079a.b(), this.f26080b.a() / this.f26079a.a(), PivotPoint.LEFT_TOP);
    }

    private Matrix l(PivotPoint pivotPoint) {
        return j(this.f26080b.b() / this.f26079a.b(), this.f26080b.a() / this.f26079a.a(), pivotPoint);
    }

    private Matrix n() {
        if (this.f26080b.a() <= this.f26079a.b() && this.f26080b.a() <= this.f26079a.a()) {
            return l(PivotPoint.LEFT_TOP);
        }
        return e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Matrix m(ScaleType scaleType) {
        switch (C0261a.f26081a[scaleType.ordinal()]) {
            case 1:
                return k();
            case 2:
                return f();
            case 3:
                return c();
            case 4:
                return e();
            case 5:
                return d();
            case 6:
                return l(PivotPoint.LEFT_TOP);
            case 7:
                return l(PivotPoint.LEFT_CENTER);
            case 8:
                return l(PivotPoint.LEFT_BOTTOM);
            case 9:
                return l(PivotPoint.CENTER_TOP);
            case 10:
                return l(PivotPoint.CENTER);
            case 11:
                return l(PivotPoint.CENTER_BOTTOM);
            case 12:
                return l(PivotPoint.RIGHT_TOP);
            case 13:
                return l(PivotPoint.RIGHT_CENTER);
            case 14:
                return l(PivotPoint.RIGHT_BOTTOM);
            case 15:
                return g(PivotPoint.LEFT_TOP);
            case 16:
                return g(PivotPoint.LEFT_CENTER);
            case 17:
                return g(PivotPoint.LEFT_BOTTOM);
            case 18:
                return g(PivotPoint.CENTER_TOP);
            case 19:
                return g(PivotPoint.CENTER);
            case 20:
                return g(PivotPoint.CENTER_BOTTOM);
            case 21:
                return g(PivotPoint.RIGHT_TOP);
            case 22:
                return g(PivotPoint.RIGHT_CENTER);
            case 23:
                return g(PivotPoint.RIGHT_BOTTOM);
            case 24:
                return n();
            case 25:
                return a();
            case 26:
                return b();
            default:
                return null;
        }
    }
}
