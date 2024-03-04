package cn.jpush.android.x;

import cn.jpush.android.helper.Logger;
/* loaded from: classes.dex */
public class c extends e {

    /* renamed from: w  reason: collision with root package name */
    private int f3494w;

    /* renamed from: x  reason: collision with root package name */
    private double f3495x;

    /* renamed from: y  reason: collision with root package name */
    private float f3496y;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f3497a;

        /* renamed from: b  reason: collision with root package name */
        private double f3498b;

        /* renamed from: c  reason: collision with root package name */
        private float f3499c;

        /* renamed from: d  reason: collision with root package name */
        private cn.jpush.android.d.d f3500d;

        public a a(float f10) {
            this.f3498b = Math.min(Math.max(f10, 0.0f), 1.0f);
            return this;
        }

        public a a(int i9) {
            int i10;
            i9 = (i9 > 1 || i9 < 0) ? 0 : 0;
            if (i9 != 0) {
                i10 = i9 == 1 ? 51 : 53;
                return this;
            }
            this.f3497a = i10;
            return this;
        }

        public a a(cn.jpush.android.d.d dVar) {
            this.f3500d = dVar;
            return this;
        }

        public c a() {
            Logger.d("InAppFloatMessage", "build InAppFloatMessage object, floatMarginYPer: " + this.f3498b);
            return new c(this.f3497a, this.f3498b, this.f3499c, this.f3500d);
        }

        public a b(float f10) {
            this.f3499c = f10 * 1000.0f;
            return this;
        }
    }

    private c(int i9, double d10, float f10, cn.jpush.android.d.d dVar) {
        super(dVar);
        this.f3494w = i9;
        this.f3495x = d10;
        this.f3496y = f10;
    }

    public static a d() {
        return new a();
    }

    public int a() {
        return this.f3494w;
    }

    public double b() {
        return this.f3495x;
    }

    public float c() {
        return this.f3496y;
    }
}
