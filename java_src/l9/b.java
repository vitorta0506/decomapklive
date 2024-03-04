package l9;

import android.graphics.Color;
import android.view.View;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f54245a;

    /* renamed from: b  reason: collision with root package name */
    private float f54246b;

    /* renamed from: c  reason: collision with root package name */
    private float f54247c;

    /* renamed from: d  reason: collision with root package name */
    private float f54248d;

    /* renamed from: e  reason: collision with root package name */
    private float f54249e;

    /* renamed from: f  reason: collision with root package name */
    private float f54250f;

    /* renamed from: g  reason: collision with root package name */
    private float f54251g;

    /* renamed from: h  reason: collision with root package name */
    private float f54252h;

    /* renamed from: i  reason: collision with root package name */
    private float[] f54253i;

    /* renamed from: j  reason: collision with root package name */
    private View f54254j;

    public b() {
        this(0.0f, 0.0f, 0.0f, 1.0f, 0);
    }

    public int a() {
        int[] iArr = new int[4];
        for (int i9 = 0; i9 < 4; i9++) {
            iArr[i9] = (int) (this.f54253i[i9] * 255.0f);
        }
        return Color.argb(iArr[0], iArr[1], iArr[2], iArr[3]);
    }

    public float b() {
        return this.f54249e;
    }

    public float c() {
        return this.f54250f;
    }

    public float d() {
        return this.f54246b;
    }

    public float e() {
        return this.f54247c;
    }

    public float f() {
        return this.f54248d;
    }

    public int g() {
        return this.f54245a;
    }

    public float h() {
        float f10 = this.f54251g;
        return f10 * f10;
    }

    public View i() {
        return this.f54254j;
    }

    public void j(float f10) {
        this.f54252h = f10;
        this.f54253i[0] = f10;
    }

    public void k(float[] fArr) {
        if (fArr != null) {
            float[] fArr2 = this.f54253i;
            System.arraycopy(fArr, 0, fArr2, fArr2.length - fArr.length, fArr.length);
        }
    }

    public void l(float f10) {
        this.f54249e = f10;
    }

    public void m(float f10) {
        this.f54250f = f10;
    }

    public void n(float f10) {
        this.f54246b = f10;
    }

    public void o(float f10) {
        this.f54247c = f10;
    }

    public void p(float f10) {
        this.f54248d = f10;
    }

    public void q(float f10) {
        this.f54251g = f10;
    }

    public void r(View view) {
        this.f54254j = view;
    }

    public b(float f10, float f11, float f12, float f13, int i9) {
        this.f54246b = f10;
        this.f54247c = f11;
        this.f54248d = f12;
        this.f54249e = 0.0f;
        this.f54250f = 0.0f;
        this.f54253i = new float[]{1.0f, 0.5f, 0.5f, 0.5f};
        this.f54251g = f13;
        this.f54245a = i9;
    }

    public b(int i9) {
        this(0.0f, 0.0f, 0.0f, 1.0f, i9);
    }
}
