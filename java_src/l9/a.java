package l9;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.threeten.bp.chrono.HijrahDate;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: s  reason: collision with root package name */
    private static final float[] f54225s = {0.886f, 0.725f, 0.188f, 1.0f};

    /* renamed from: t  reason: collision with root package name */
    private static final float[] f54226t = {0.3f, 0.3f, 0.3f, 1.0f};

    /* renamed from: a  reason: collision with root package name */
    private float f54227a;

    /* renamed from: b  reason: collision with root package name */
    private float f54228b;

    /* renamed from: c  reason: collision with root package name */
    private List<l9.b> f54229c;

    /* renamed from: d  reason: collision with root package name */
    private int f54230d;

    /* renamed from: e  reason: collision with root package name */
    private float[] f54231e;

    /* renamed from: f  reason: collision with root package name */
    private float[] f54232f;

    /* renamed from: g  reason: collision with root package name */
    private float f54233g;

    /* renamed from: h  reason: collision with root package name */
    private float f54234h;

    /* renamed from: i  reason: collision with root package name */
    private float f54235i;

    /* renamed from: j  reason: collision with root package name */
    private float f54236j;

    /* renamed from: k  reason: collision with root package name */
    private float f54237k;

    /* renamed from: l  reason: collision with root package name */
    private float f54238l;

    /* renamed from: m  reason: collision with root package name */
    private float f54239m;

    /* renamed from: n  reason: collision with root package name */
    private float f54240n;

    /* renamed from: o  reason: collision with root package name */
    private float f54241o;

    /* renamed from: p  reason: collision with root package name */
    private int f54242p;

    /* renamed from: q  reason: collision with root package name */
    private int f54243q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f54244r;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b implements Comparator<l9.b> {
        private b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(l9.b bVar, l9.b bVar2) {
            return bVar.h() > bVar2.h() ? 1 : 0;
        }
    }

    public a() {
        this(3);
    }

    private float[] e(float f10) {
        float[] fArr = this.f54232f;
        float f11 = 1.0f - f10;
        float[] fArr2 = this.f54231e;
        return new float[]{1.0f, (fArr[0] * f10) + (fArr2[0] * f11), (fArr[1] * f10) + (fArr2[1] * f11), (f10 * fArr[2]) + (f11 * fArr2[2])};
    }

    private float f(l9.b bVar) {
        int g10 = bVar.g();
        int i9 = this.f54242p;
        int i10 = this.f54243q;
        if (i9 == i10) {
            return 1.0f;
        }
        return (g10 - i9) / (i10 - i9);
    }

    private void h(l9.b bVar) {
        bVar.k(e(f(bVar)));
    }

    private void i(l9.b bVar) {
        double random = Math.random() * 3.141592653589793d;
        double random2 = Math.random() * 6.283185307179586d;
        bVar.n((int) (this.f54230d * Math.cos(random2) * Math.sin(random)));
        bVar.o((int) (this.f54230d * Math.sin(random2) * Math.sin(random)));
        bVar.p((int) (this.f54230d * Math.cos(random)));
    }

    private void j(boolean z10) {
        double random;
        double random2;
        double d10;
        int size = this.f54229c.size();
        for (int i9 = 1; i9 < size + 1; i9++) {
            if (z10) {
                random = Math.acos((((i9 * 2.0d) - 1.0d) / d10) - 1.0d);
                random2 = Math.sqrt(size * 3.141592653589793d) * random;
            } else {
                random = Math.random() * 3.141592653589793d;
                random2 = Math.random() * 6.283185307179586d;
            }
            int i10 = i9 - 1;
            this.f54229c.get(i10).n((float) (this.f54230d * Math.cos(random2) * Math.sin(random)));
            this.f54229c.get(i10).o((float) (this.f54230d * Math.sin(random2) * Math.sin(random)));
            this.f54229c.get(i10).p((float) (this.f54230d * Math.cos(random)));
        }
    }

    private void p(float f10, float f11, float f12) {
        double d10 = f10 * 0.017453292519943295d;
        this.f54233g = (float) Math.sin(d10);
        this.f54234h = (float) Math.cos(d10);
        double d11 = f11 * 0.017453292519943295d;
        this.f54235i = (float) Math.sin(d11);
        this.f54236j = (float) Math.cos(d11);
        double d12 = f12 * 0.017453292519943295d;
        this.f54237k = (float) Math.sin(d12);
        this.f54238l = (float) Math.cos(d12);
    }

    private void s() {
        int size = this.f54229c.size();
        for (int i9 = 0; i9 < size; i9++) {
            l9.b bVar = this.f54229c.get(i9);
            float d10 = bVar.d();
            float e10 = (bVar.e() * this.f54234h) + (bVar.f() * (-this.f54233g));
            float e11 = (bVar.e() * this.f54233g) + (bVar.f() * this.f54234h);
            float f10 = this.f54236j;
            float f11 = this.f54235i;
            float f12 = (d10 * f10) + (e11 * f11);
            float f13 = (d10 * (-f11)) + (e11 * f10);
            float f14 = this.f54238l;
            float f15 = this.f54237k;
            float f16 = (f12 * f14) + ((-f15) * e10);
            float f17 = (f12 * f15) + (e10 * f14);
            bVar.n(f16);
            bVar.o(f17);
            bVar.p(f13);
            float f18 = this.f54230d * 2;
            float f19 = f13 + f18;
            bVar.l(f16);
            bVar.m(f17);
            bVar.q(f18 / f19);
            this.f54227a = Math.max(this.f54227a, f19);
            float min = Math.min(this.f54228b, f19);
            this.f54228b = min;
            bVar.j(1.0f - ((f19 - min) / (this.f54227a - min)));
        }
        q();
    }

    public void a(l9.b bVar) {
        h(bVar);
        i(bVar);
        this.f54229c.add(bVar);
    }

    public void b() {
        this.f54229c.clear();
    }

    public void c(boolean z10) {
        this.f54244r = z10;
        j(z10);
        p(this.f54240n, this.f54241o, this.f54239m);
        s();
        this.f54242p = HijrahDate.MAX_VALUE_OF_ERA;
        this.f54243q = 0;
        for (int i9 = 0; i9 < this.f54229c.size(); i9++) {
            int g10 = this.f54229c.get(i9).g();
            this.f54243q = Math.max(this.f54243q, g10);
            this.f54242p = Math.min(this.f54242p, g10);
        }
        for (int i10 = 0; i10 < this.f54229c.size(); i10++) {
            h(this.f54229c.get(i10));
        }
    }

    public l9.b d(int i9) {
        return this.f54229c.get(i9);
    }

    public List<l9.b> g() {
        return this.f54229c;
    }

    public void k(float f10) {
        this.f54240n = f10;
    }

    public void l(float f10) {
        this.f54241o = f10;
    }

    public void m(int i9) {
        this.f54230d = i9;
    }

    public void n(float[] fArr) {
        this.f54232f = fArr;
    }

    public void o(float[] fArr) {
        this.f54231e = fArr;
    }

    public void q() {
        Collections.sort(this.f54229c, new b());
    }

    public void r() {
        if (Math.abs(this.f54240n) > 0.1d || Math.abs(this.f54241o) > 0.1d) {
            p(this.f54240n, this.f54241o, this.f54239m);
            s();
        }
    }

    public a(int i9) {
        this(new ArrayList(), i9);
    }

    public a(List<l9.b> list, int i9) {
        this(list, i9, f54225s, f54226t);
    }

    public a(List<l9.b> list, int i9, float[] fArr, float[] fArr2) {
        this.f54227a = Float.MIN_VALUE;
        this.f54228b = Float.MAX_VALUE;
        this.f54239m = 0.0f;
        this.f54240n = 0.0f;
        this.f54241o = 0.0f;
        this.f54244r = true;
        this.f54229c = list;
        this.f54230d = i9;
        this.f54231e = fArr;
        this.f54232f = fArr2;
    }
}
