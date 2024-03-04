package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.guochao.faceshow.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class AddZanHeartView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Interpolator f23446a;

    /* renamed from: b  reason: collision with root package name */
    private Interpolator f23447b;

    /* renamed from: c  reason: collision with root package name */
    private Interpolator f23448c;

    /* renamed from: d  reason: collision with root package name */
    private List<c> f23449d;

    /* renamed from: e  reason: collision with root package name */
    Random f23450e;

    /* renamed from: f  reason: collision with root package name */
    private int f23451f;

    /* renamed from: g  reason: collision with root package name */
    private int f23452g;

    /* renamed from: h  reason: collision with root package name */
    b f23453h;

    /* renamed from: i  reason: collision with root package name */
    d f23454i;

    /* renamed from: j  reason: collision with root package name */
    List<Drawable> f23455j;

    /* renamed from: k  reason: collision with root package name */
    final List<c> f23456k;

    /* renamed from: l  reason: collision with root package name */
    boolean f23457l;

    /* renamed from: m  reason: collision with root package name */
    boolean f23458m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b {
        private b() {
        }

        public float a(float f10, float f11, float f12, float f13, float f14) {
            float f15 = 1.0f - f10;
            float f16 = f15 * f15 * f15 * f11;
            float f17 = 3.0f * f15;
            return f16 + (f15 * f17 * f10 * f13) + (f17 * f10 * f10 * f14) + (f10 * f10 * f10 * f12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        Drawable f23459a;

        /* renamed from: b  reason: collision with root package name */
        int f23460b;

        /* renamed from: c  reason: collision with root package name */
        float f23461c;

        /* renamed from: d  reason: collision with root package name */
        float f23462d;

        /* renamed from: e  reason: collision with root package name */
        int f23463e;

        /* renamed from: f  reason: collision with root package name */
        int f23464f;

        /* renamed from: g  reason: collision with root package name */
        long f23465g;

        /* renamed from: h  reason: collision with root package name */
        PointF f23466h;

        /* renamed from: i  reason: collision with root package name */
        PointF f23467i;

        /* renamed from: j  reason: collision with root package name */
        PointF f23468j;

        /* renamed from: k  reason: collision with root package name */
        PointF f23469k;

        /* renamed from: l  reason: collision with root package name */
        float f23470l;

        /* renamed from: m  reason: collision with root package name */
        Interpolator f23471m;

        c() {
            this.f23471m = AddZanHeartView.this.f23446a;
        }

        public void a(Drawable drawable) {
            this.f23459a = drawable;
            this.f23463e = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            this.f23464f = intrinsicHeight;
            this.f23459a.setBounds(0, 0, this.f23463e, intrinsicHeight);
            this.f23460b = AddZanHeartView.this.f23450e.nextInt() % 30;
            this.f23465g = System.currentTimeMillis();
            this.f23469k = AddZanHeartView.this.i(1);
            this.f23468j = AddZanHeartView.this.i(2);
            this.f23466h = new PointF((AddZanHeartView.this.f23451f - this.f23463e) / 2, AddZanHeartView.this.f23452g - this.f23464f);
            AddZanHeartView addZanHeartView = AddZanHeartView.this;
            this.f23467i = new PointF(addZanHeartView.f23450e.nextInt(addZanHeartView.getWidth() > 0 ? AddZanHeartView.this.getWidth() : 1), 0.0f);
            int nextInt = AddZanHeartView.this.f23450e.nextInt(3);
            if (nextInt == 0) {
                this.f23471m = AddZanHeartView.this.f23447b;
            } else if (nextInt == 1) {
                this.f23471m = AddZanHeartView.this.f23448c;
            } else if (nextInt != 2) {
            } else {
                this.f23471m = AddZanHeartView.this.f23446a;
            }
        }

        public boolean b(Canvas canvas) {
            long currentTimeMillis = System.currentTimeMillis() - this.f23465g;
            if (currentTimeMillis < 3500) {
                canvas.save();
                float f10 = (float) currentTimeMillis;
                float f11 = f10 / 3500.0f;
                this.f23461c = AddZanHeartView.this.f23453h.a(this.f23471m.getInterpolation(f11), this.f23466h.x, this.f23467i.x, this.f23468j.x, this.f23469k.x);
                float a10 = AddZanHeartView.this.f23453h.a(this.f23471m.getInterpolation(f11), this.f23466h.y, this.f23467i.y, this.f23468j.y, this.f23469k.y);
                this.f23462d = a10;
                if (currentTimeMillis < 500) {
                    float f12 = f10 / 500.0f;
                    this.f23470l = f12;
                    canvas.translate(this.f23461c, a10);
                    canvas.rotate(this.f23460b * f12, this.f23463e / 2.0f, this.f23464f / 2.0f);
                    float f13 = this.f23470l;
                    canvas.scale(f13 * 1.0f, f13 * 1.0f, this.f23463e / 2.0f, this.f23464f / 2.0f);
                    this.f23459a.setAlpha((int) (this.f23470l * 255.0f));
                } else {
                    canvas.translate(this.f23461c, a10);
                    canvas.scale(1.0f, 1.0f, this.f23463e / 2.0f, this.f23464f / 2.0f);
                    canvas.rotate(this.f23460b, this.f23463e / 2.0f, this.f23464f / 2.0f);
                    this.f23459a.setAlpha((int) ((1.0f - f11) * 255.0f));
                }
                this.f23459a.draw(canvas);
                canvas.restore();
                return false;
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private List<c> f23473a = new CopyOnWriteArrayList();

        protected void a(List<c> list) {
            this.f23473a.addAll(list);
        }

        protected c b(AddZanHeartView addZanHeartView) {
            if (this.f23473a.size() != 0) {
                c remove = this.f23473a.remove(0);
                remove.f23465g = System.currentTimeMillis();
                return remove;
            }
            Objects.requireNonNull(addZanHeartView);
            return new c();
        }
    }

    public AddZanHeartView(Context context) {
        super(context);
        this.f23446a = new LinearInterpolator();
        this.f23447b = new AccelerateInterpolator();
        this.f23448c = new AccelerateDecelerateInterpolator();
        this.f23449d = new CopyOnWriteArrayList();
        this.f23453h = new b();
        this.f23456k = new ArrayList();
        this.f23457l = false;
        this.f23458m = false;
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointF i(int i9) {
        PointF pointF = new PointF();
        int i10 = this.f23451f;
        int i11 = i10 <= 100 ? 1 : i10 - 100;
        int i12 = this.f23452g;
        int i13 = i12 > 100 ? i12 - 100 : 1;
        pointF.x = this.f23450e.nextInt(i11);
        pointF.y = this.f23450e.nextInt(i13) / i9;
        return pointF;
    }

    private void j() {
        this.f23450e = new Random();
        this.f23455j = new ArrayList();
        Drawable drawable = getResources().getDrawable(R.mipmap.heart_01);
        Drawable drawable2 = getResources().getDrawable(R.mipmap.heart_02);
        Drawable drawable3 = getResources().getDrawable(R.mipmap.heart_03);
        Drawable drawable4 = getResources().getDrawable(R.mipmap.heart_04);
        Drawable drawable5 = getResources().getDrawable(R.mipmap.heart_05);
        Drawable drawable6 = getResources().getDrawable(R.mipmap.heart_06);
        this.f23455j.add(drawable);
        this.f23455j.add(drawable2);
        this.f23455j.add(drawable3);
        this.f23455j.add(drawable4);
        this.f23455j.add(drawable5);
        this.f23455j.add(drawable6);
    }

    public void g(Drawable drawable) {
        if (this.f23457l || this.f23458m) {
            return;
        }
        if (this.f23454i == null) {
            this.f23454i = new d();
        }
        c b10 = this.f23454i.b(this);
        if (drawable == null) {
            drawable = this.f23455j.get(this.f23450e.nextInt(this.f23455j.size()));
        }
        b10.a(drawable);
        this.f23449d.add(b10);
        postInvalidateOnAnimation();
    }

    public void h() {
        this.f23449d.clear();
    }

    public void k() {
        this.f23457l = true;
    }

    public void l() {
        this.f23457l = false;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        List<c> list = this.f23449d;
        int size = list.size();
        if (size == 0) {
            this.f23458m = false;
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        List<c> list2 = this.f23456k;
        for (int i9 = 0; i9 < size; i9++) {
            c cVar = list.get(i9);
            if (cVar.b(canvas)) {
                list2.add(cVar);
            }
        }
        list.removeAll(list2);
        d dVar = this.f23454i;
        if (dVar != null) {
            dVar.a(list2);
        }
        list2.clear();
        this.f23458m = System.currentTimeMillis() - currentTimeMillis > 6;
        postInvalidateOnAnimation();
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        this.f23451f = getMeasuredWidth();
        this.f23452g = getMeasuredHeight();
    }

    public AddZanHeartView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23446a = new LinearInterpolator();
        this.f23447b = new AccelerateInterpolator();
        this.f23448c = new AccelerateDecelerateInterpolator();
        this.f23449d = new CopyOnWriteArrayList();
        this.f23453h = new b();
        this.f23456k = new ArrayList();
        this.f23457l = false;
        this.f23458m = false;
        j();
    }

    public AddZanHeartView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23446a = new LinearInterpolator();
        this.f23447b = new AccelerateInterpolator();
        this.f23448c = new AccelerateDecelerateInterpolator();
        this.f23449d = new CopyOnWriteArrayList();
        this.f23453h = new b();
        this.f23456k = new ArrayList();
        this.f23457l = false;
        this.f23458m = false;
        j();
    }
}
