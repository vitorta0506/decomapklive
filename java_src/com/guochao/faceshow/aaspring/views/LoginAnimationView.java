package com.guochao.faceshow.aaspring.views;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.ScreenTools;
/* loaded from: classes3.dex */
public class LoginAnimationView extends View implements DefaultLifecycleObserver {
    public static SparseArray<Bitmap> G = new SparseArray<>();
    private float A;
    boolean B;
    boolean C;
    private int D;
    private float E;
    ValueAnimator F;

    /* renamed from: a  reason: collision with root package name */
    private Bitmap f23830a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f23831b;

    /* renamed from: c  reason: collision with root package name */
    private Bitmap f23832c;

    /* renamed from: d  reason: collision with root package name */
    private Bitmap f23833d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f23834e;

    /* renamed from: f  reason: collision with root package name */
    Matrix f23835f;

    /* renamed from: g  reason: collision with root package name */
    Matrix f23836g;

    /* renamed from: h  reason: collision with root package name */
    Matrix f23837h;

    /* renamed from: i  reason: collision with root package name */
    Matrix f23838i;

    /* renamed from: j  reason: collision with root package name */
    private int f23839j;

    /* renamed from: k  reason: collision with root package name */
    private int f23840k;

    /* renamed from: l  reason: collision with root package name */
    private int f23841l;

    /* renamed from: m  reason: collision with root package name */
    private int f23842m;

    /* renamed from: n  reason: collision with root package name */
    private int f23843n;

    /* renamed from: o  reason: collision with root package name */
    private int f23844o;

    /* renamed from: p  reason: collision with root package name */
    private float f23845p;

    /* renamed from: q  reason: collision with root package name */
    private int f23846q;

    /* renamed from: r  reason: collision with root package name */
    private int f23847r;

    /* renamed from: s  reason: collision with root package name */
    private int f23848s;

    /* renamed from: t  reason: collision with root package name */
    private int f23849t;

    /* renamed from: u  reason: collision with root package name */
    private int f23850u;

    /* renamed from: v  reason: collision with root package name */
    private int f23851v;

    /* renamed from: w  reason: collision with root package name */
    private int f23852w;

    /* renamed from: x  reason: collision with root package name */
    private int f23853x;

    /* renamed from: y  reason: collision with root package name */
    int f23854y;

    /* renamed from: z  reason: collision with root package name */
    private float f23855z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends DecelerateInterpolator {
        a() {
        }

        @Override // android.view.animation.DecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return super.getInterpolation(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            LoginAnimationView loginAnimationView = LoginAnimationView.this;
            loginAnimationView.r(((Integer) loginAnimationView.F.getAnimatedValue()).intValue());
        }
    }

    public LoginAnimationView(Context context) {
        super(context);
        this.f23841l = 10;
        this.f23842m = 150;
        this.f23843n = 60;
        this.f23844o = 245;
        this.f23845p = (float) (b(60) / ((float) n(this.f23843n)));
        this.f23854y = 0;
        this.f23855z = 0.0f;
        this.A = 0.0f;
        this.B = true;
        this.C = false;
        this.D = 1;
        this.E = 100.0f;
        i(context);
    }

    public static void a() {
        G.clear();
    }

    private double b(int i9) {
        return Math.cos(Math.toRadians(i9));
    }

    private void c() {
        ValueAnimator valueAnimator = this.F;
        if (valueAnimator != null) {
            if (valueAnimator.isRunning()) {
                this.F.end();
            }
            this.F = null;
        }
    }

    private void d(Canvas canvas) {
        Bitmap bitmap = this.f23830a;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        Matrix matrix = this.f23835f;
        float f10 = this.f23855z;
        matrix.setTranslate((-this.f23846q) + this.f23842m + (this.f23845p * f10), (-this.f23847r) + f10);
        this.f23835f.preRotate(this.f23843n - 90);
        canvas.drawBitmap(this.f23830a, this.f23835f, this.f23834e);
        canvas.save();
        Matrix matrix2 = this.f23835f;
        float f11 = this.A;
        matrix2.setTranslate((-this.f23846q) + this.f23842m + (this.f23845p * f11), (-this.f23847r) + f11);
        this.f23835f.preRotate(this.f23843n - 90);
        canvas.drawBitmap(this.f23830a, this.f23835f, this.f23834e);
        canvas.save();
    }

    private void e(Canvas canvas) {
        Bitmap bitmap = this.f23831b;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        Matrix matrix = this.f23836g;
        float f10 = this.f23855z;
        matrix.setTranslate((this.f23850u + this.f23842m) - (this.f23845p * f10), this.f23849t - f10);
        this.f23836g.preRotate(this.f23843n - 90);
        canvas.drawBitmap(this.f23831b, this.f23836g, this.f23834e);
        canvas.save();
        Matrix matrix2 = this.f23836g;
        float f11 = this.A;
        matrix2.setTranslate((this.f23850u + this.f23842m) - (this.f23845p * f11), this.f23849t - f11);
        this.f23836g.preRotate(this.f23843n - 90);
        canvas.drawBitmap(this.f23831b, this.f23836g, this.f23834e);
        canvas.save();
    }

    private void f(Canvas canvas) {
        Bitmap bitmap = this.f23832c;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        Matrix matrix = this.f23837h;
        float f10 = this.f23855z;
        matrix.setTranslate((this.f23851v + this.f23842m) - (this.f23845p * f10), this.f23849t - f10);
        this.f23837h.preRotate(this.f23843n - 90);
        canvas.drawBitmap(this.f23832c, this.f23837h, this.f23834e);
        canvas.save();
        Matrix matrix2 = this.f23837h;
        float f11 = this.A;
        matrix2.setTranslate((this.f23851v + this.f23842m) - (this.f23845p * f11), this.f23849t - f11);
        this.f23837h.preRotate(this.f23843n - 90);
        canvas.drawBitmap(this.f23832c, this.f23837h, this.f23834e);
        canvas.save();
    }

    private void g(Canvas canvas) {
        Bitmap bitmap = this.f23833d;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        Matrix matrix = this.f23838i;
        float f10 = this.f23855z;
        matrix.setTranslate((-this.f23848s) + this.f23842m + (this.f23845p * f10), (-this.f23847r) + f10);
        this.f23838i.preRotate(this.f23843n - 90);
        canvas.drawBitmap(this.f23833d, this.f23838i, this.f23834e);
        canvas.save();
        Matrix matrix2 = this.f23838i;
        float f11 = this.A;
        matrix2.setTranslate((-this.f23848s) + this.f23842m + (this.f23845p * f11), (-this.f23847r) + f11);
        this.f23838i.preRotate(this.f23843n - 90);
        canvas.drawBitmap(this.f23833d, this.f23838i, this.f23834e);
        canvas.save();
    }

    private void h() {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 2000);
        this.F = ofInt;
        ofInt.setDuration(2000L);
        this.F.setRepeatCount(-1);
        this.F.setRepeatMode(1);
        this.F.setInterpolator(new a());
        this.F.addUpdateListener(new b());
    }

    public static boolean j(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    private void k() {
        ValueAnimator valueAnimator = this.F;
        if (valueAnimator == null || valueAnimator.isPaused()) {
            return;
        }
        this.F.pause();
    }

    private static Bitmap l(int i9) {
        Bitmap bitmap = G.get(i9);
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap decodeResource = BitmapFactory.decodeResource(BaseApplication.getInstance().getResources(), i9);
        G.put(i9, decodeResource);
        return decodeResource;
    }

    private void m() {
        ValueAnimator valueAnimator = this.F;
        if (valueAnimator == null || !valueAnimator.isPaused()) {
            return;
        }
        this.F.resume();
    }

    private double n(int i9) {
        return Math.sin(Math.toRadians(i9));
    }

    private void o() {
        ValueAnimator valueAnimator = this.F;
        if (valueAnimator == null || valueAnimator.isRunning()) {
            return;
        }
        this.F.start();
    }

    private void p() {
        ValueAnimator valueAnimator = this.F;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.F.end();
    }

    private void q(int i9) {
        if (this.E > 2.0f && i9 > 0) {
            this.E = i9;
        }
        float f10 = this.f23855z;
        int i10 = this.f23852w;
        if (f10 <= i10 && this.B) {
            this.f23855z = f10 + this.D + this.E;
        } else {
            this.f23855z = 0.0f;
            this.B = false;
        }
        float f11 = this.f23855z;
        int i11 = this.f23853x;
        if (f11 >= i11 && !this.C) {
            this.A = 0.0f;
            this.C = true;
        }
        float f12 = this.A;
        if (f12 >= i11 && !this.B) {
            this.f23855z = 0.0f;
            this.B = true;
        }
        if (f12 <= i10 && this.C) {
            this.A = f12 + this.D + this.E;
        } else if (f12 <= i10 || !this.C) {
        } else {
            this.A = 0.0f;
            this.C = false;
        }
    }

    public void i(Context context) {
        this.f23830a = l(R.mipmap.img_login1);
        this.f23831b = l(R.mipmap.img_login2);
        this.f23832c = l(R.mipmap.img_login3);
        this.f23833d = l(R.mipmap.img_login4);
        Paint paint = new Paint();
        this.f23834e = paint;
        paint.setAntiAlias(true);
        this.f23835f = new Matrix();
        this.f23836g = new Matrix();
        this.f23837h = new Matrix();
        this.f23838i = new Matrix();
        this.f23839j = this.f23830a.getHeight();
        this.f23840k = this.f23830a.getWidth();
        this.f23844o = ScreenTools.getScreenHeight();
        if (j(context)) {
            this.f23841l = 20;
            this.f23842m = 350;
        }
        int b10 = (int) ((this.f23839j * b(this.f23843n)) + ((this.f23840k / 2) / b(90 - this.f23843n)));
        this.f23846q = b10;
        this.f23848s = (int) (b10 + ((this.f23840k / b(90 - this.f23843n)) * 2.0d) + (this.f23841l * 2));
        this.f23847r = (int) (this.f23839j * n(this.f23843n));
        this.f23849t = (int) (this.f23844o + (this.f23840k * n(90 - this.f23843n)));
        float f10 = this.f23845p;
        this.f23850u = (int) ((this.f23844o * this.f23845p) + ((this.f23840k / 2.0f) / b(90 - this.f23843n)) + this.f23841l + (this.f23840k * n(90 - this.f23843n) * f10));
        this.f23851v = (int) ((((this.f23844o * f10) - ((this.f23840k / 2.0f) / b(90 - this.f23843n))) - (this.f23840k * b(90 - this.f23843n))) - this.f23841l);
        this.f23852w = (int) ((this.f23839j * n(this.f23843n)) + (this.f23840k * n(90 - this.f23843n)) + this.f23844o);
        this.f23853x = (int) (this.f23839j * n(this.f23843n));
        h();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.a(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onDestroy(@NonNull LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.b(this, lifecycleOwner);
        c();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        d(canvas);
        g(canvas);
        e(canvas);
        f(canvas);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onPause(@NonNull LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.c(this, lifecycleOwner);
        k();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onResume(@NonNull LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.d(this, lifecycleOwner);
        m();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onStart(@NonNull LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.e(this, lifecycleOwner);
        o();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onStop(@NonNull LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.f(this, lifecycleOwner);
        p();
    }

    public void r(int i9) {
        q(i9 - this.f23854y);
        this.f23854y = i9;
        invalidate();
    }

    public void setLayHeight(int i9) {
        this.f23844o = i9;
    }

    public LoginAnimationView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23841l = 10;
        this.f23842m = 150;
        this.f23843n = 60;
        this.f23844o = 245;
        this.f23845p = (float) (b(60) / ((float) n(this.f23843n)));
        this.f23854y = 0;
        this.f23855z = 0.0f;
        this.A = 0.0f;
        this.B = true;
        this.C = false;
        this.D = 1;
        this.E = 100.0f;
        i(context);
    }

    public LoginAnimationView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23841l = 10;
        this.f23842m = 150;
        this.f23843n = 60;
        this.f23844o = 245;
        this.f23845p = (float) (b(60) / ((float) n(this.f23843n)));
        this.f23854y = 0;
        this.f23855z = 0.0f;
        this.A = 0.0f;
        this.B = true;
        this.C = false;
        this.D = 1;
        this.E = 100.0f;
        i(context);
    }
}
