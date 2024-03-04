package com.previewlibrary.wight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.previewlibrary.R$id;
import uk.co.senab2.photoview2.PhotoView;
/* loaded from: classes4.dex */
public class SmoothImageView extends PhotoView {
    private static boolean A = false;

    /* renamed from: y  reason: collision with root package name */
    private static int f28945y = 400;

    /* renamed from: z  reason: collision with root package name */
    private static boolean f28946z = false;

    /* renamed from: c  reason: collision with root package name */
    private Status f28947c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f28948d;

    /* renamed from: e  reason: collision with root package name */
    private Matrix f28949e;

    /* renamed from: f  reason: collision with root package name */
    private i f28950f;

    /* renamed from: g  reason: collision with root package name */
    private i f28951g;

    /* renamed from: h  reason: collision with root package name */
    private i f28952h;

    /* renamed from: i  reason: collision with root package name */
    private Rect f28953i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28954j;

    /* renamed from: k  reason: collision with root package name */
    private int f28955k;

    /* renamed from: l  reason: collision with root package name */
    private int f28956l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f28957m;

    /* renamed from: n  reason: collision with root package name */
    ValueAnimator f28958n;

    /* renamed from: o  reason: collision with root package name */
    private float f28959o;

    /* renamed from: p  reason: collision with root package name */
    private int f28960p;

    /* renamed from: q  reason: collision with root package name */
    private int f28961q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f28962r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f28963s;

    /* renamed from: t  reason: collision with root package name */
    private int f28964t;

    /* renamed from: u  reason: collision with root package name */
    private g f28965u;

    /* renamed from: v  reason: collision with root package name */
    private h f28966v;

    /* renamed from: w  reason: collision with root package name */
    private i f28967w;

    /* renamed from: x  reason: collision with root package name */
    private j f28968x;

    /* loaded from: classes4.dex */
    public enum Status {
        STATE_NORMAL,
        STATE_IN,
        STATE_OUT,
        STATE_MOVE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        int f28969a = 0;

        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            int i9 = this.f28969a;
            if (i9 != 0) {
                SmoothImageView.this.offsetTopAndBottom(intValue - i9);
            }
            this.f28969a = intValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        int f28971a = 0;

        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            int i9 = this.f28971a;
            if (i9 != 0) {
                SmoothImageView.this.offsetLeftAndRight(intValue - i9);
            }
            this.f28971a = intValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (SmoothImageView.this.f28965u != null) {
                SmoothImageView.this.f28965u.a(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            SmoothImageView.this.setScaleX(floatValue);
            SmoothImageView.this.setScaleY(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements ValueAnimator.AnimatorUpdateListener {
        e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SmoothImageView.this.f28952h.f28981e = ((Integer) valueAnimator.getAnimatedValue("animAlpha")).intValue();
            SmoothImageView.this.f28952h.f28982f = ((Float) valueAnimator.getAnimatedValue("animScale")).floatValue();
            SmoothImageView.this.f28952h.f28977a = ((Float) valueAnimator.getAnimatedValue("animLeft")).floatValue();
            SmoothImageView.this.f28952h.f28978b = ((Float) valueAnimator.getAnimatedValue("animTop")).floatValue();
            SmoothImageView.this.f28952h.f28979c = ((Float) valueAnimator.getAnimatedValue("animWidth")).floatValue();
            SmoothImageView.this.f28952h.f28980d = ((Float) valueAnimator.getAnimatedValue("animHeight")).floatValue();
            SmoothImageView.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (SmoothImageView.this.f28968x != null) {
                SmoothImageView.this.f28968x.a(SmoothImageView.this.f28947c);
            }
            if (SmoothImageView.this.f28947c == Status.STATE_IN) {
                SmoothImageView.this.f28947c = Status.STATE_NORMAL;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            SmoothImageView smoothImageView = SmoothImageView.this;
            int i9 = R$id.item_image_key;
            if (smoothImageView.getTag(i9) != null) {
                SmoothImageView.this.setTag(i9, null);
                SmoothImageView.this.setOnLongClickListener(null);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface g {
        void a(int i9);
    }

    /* loaded from: classes4.dex */
    public interface h {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class i implements Cloneable {

        /* renamed from: a  reason: collision with root package name */
        float f28977a;

        /* renamed from: b  reason: collision with root package name */
        float f28978b;

        /* renamed from: c  reason: collision with root package name */
        float f28979c;

        /* renamed from: d  reason: collision with root package name */
        float f28980d;

        /* renamed from: e  reason: collision with root package name */
        int f28981e;

        /* renamed from: f  reason: collision with root package name */
        float f28982f;

        private i() {
        }

        /* renamed from: a */
        public i clone() {
            try {
                return (i) super.clone();
            } catch (CloneNotSupportedException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        /* synthetic */ i(SmoothImageView smoothImageView, a aVar) {
            this();
        }
    }

    /* loaded from: classes4.dex */
    public interface j {
        void a(Status status);
    }

    public SmoothImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28947c = Status.STATE_NORMAL;
        this.f28959o = 0.5f;
        this.f28962r = false;
        this.f28963s = false;
        this.f28964t = 0;
        m();
    }

    public static int getDuration() {
        return f28945y;
    }

    private boolean h() {
        if (o() <= this.f28959o) {
            p();
            return true;
        }
        k();
        setTag(R$id.item_image_key, Boolean.TRUE);
        h hVar = this.f28966v;
        if (hVar != null) {
            hVar.a();
            return true;
        }
        return true;
    }

    private void i(MotionEvent motionEvent) {
        this.f28960p = (int) motionEvent.getX();
        this.f28961q = (int) motionEvent.getY();
        if (this.f28967w == null) {
            n();
        }
        this.f28963s = false;
        i iVar = this.f28967w;
        if (iVar != null) {
            float f10 = iVar.f28978b;
            int i9 = (int) f10;
            int i10 = (int) (iVar.f28980d + f10);
            int i11 = this.f28961q;
            if (i11 >= i9 && i10 >= i11) {
                this.f28963s = true;
            }
        }
        this.f28962r = false;
    }

    private boolean j(MotionEvent motionEvent) {
        if (!this.f28963s && motionEvent.getPointerCount() == 1) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int x10 = ((int) motionEvent.getX()) - this.f28960p;
        int y10 = ((int) motionEvent.getY()) - this.f28961q;
        if (!this.f28962r && (Math.abs(x10) > Math.abs(y10) || Math.abs(y10) < 5)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.f28957m) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (motionEvent.getPointerCount() == 1) {
            this.f28947c = Status.STATE_MOVE;
            offsetLeftAndRight(x10);
            offsetTopAndBottom(y10);
            float o10 = o();
            float f10 = 1.0f - (0.1f * o10);
            setScaleY(f10);
            setScaleX(f10);
            this.f28962r = true;
            this.f28964t = (int) ((1.0f - (o10 * 0.5f)) * 255.0f);
            invalidate();
            if (this.f28964t < 0) {
                this.f28964t = 0;
            }
            g gVar = this.f28965u;
            if (gVar != null) {
                gVar.a(this.f28964t);
            }
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private void k() {
        i iVar = this.f28967w;
        if (iVar != null) {
            i clone = iVar.clone();
            clone.f28978b = this.f28967w.f28978b + getTop();
            clone.f28977a = this.f28967w.f28977a + getLeft();
            clone.f28981e = this.f28964t;
            clone.f28982f = this.f28967w.f28982f - ((1.0f - getScaleX()) * this.f28967w.f28982f);
            this.f28952h = clone.clone();
            this.f28951g = clone.clone();
        }
    }

    private void m() {
        Paint paint = new Paint();
        this.f28948d = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f28948d.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f28949e = new Matrix();
        setScaleType(ImageView.ScaleType.FIT_CENTER);
    }

    private void n() {
        if (getDrawable() == null) {
            return;
        }
        if ((this.f28950f != null && this.f28951g != null && this.f28952h != null) || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (getDrawable() instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) getDrawable()).getBitmap();
            this.f28955k = bitmap.getWidth();
            this.f28956l = bitmap.getHeight();
        } else if (getDrawable() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getDrawable();
            this.f28955k = colorDrawable.getIntrinsicWidth();
            this.f28956l = colorDrawable.getIntrinsicHeight();
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(getDrawable().getIntrinsicWidth(), getDrawable().getIntrinsicHeight(), Bitmap.Config.RGB_565);
            this.f28955k = createBitmap.getWidth();
            this.f28956l = createBitmap.getHeight();
        }
        i iVar = new i(this, null);
        this.f28950f = iVar;
        iVar.f28981e = 0;
        if (this.f28953i == null) {
            this.f28953i = new Rect();
        }
        i iVar2 = this.f28950f;
        Rect rect = this.f28953i;
        iVar2.f28977a = rect.left;
        if (f28946z) {
            iVar2.f28978b = rect.top;
        } else {
            iVar2.f28978b = rect.top - cd.a.a(getContext().getApplicationContext());
        }
        this.f28950f.f28979c = this.f28953i.width();
        this.f28950f.f28980d = this.f28953i.height();
        float width = this.f28953i.width() / this.f28955k;
        float height = this.f28953i.height() / this.f28956l;
        i iVar3 = this.f28950f;
        if (width <= height) {
            width = height;
        }
        iVar3.f28982f = width;
        float width2 = getWidth() / this.f28955k;
        float height2 = getHeight() / this.f28956l;
        i iVar4 = new i(this, null);
        this.f28951g = iVar4;
        if (width2 >= height2) {
            width2 = height2;
        }
        iVar4.f28982f = width2;
        iVar4.f28981e = 255;
        int i9 = (int) (this.f28955k * width2);
        int i10 = (int) (width2 * this.f28956l);
        iVar4.f28977a = (getWidth() - i9) / 2;
        this.f28951g.f28978b = (getHeight() - i10) / 2;
        i iVar5 = this.f28951g;
        iVar5.f28979c = i9;
        iVar5.f28980d = i10;
        Status status = this.f28947c;
        if (status == Status.STATE_IN) {
            this.f28952h = this.f28950f.clone();
        } else if (status == Status.STATE_OUT) {
            this.f28952h = iVar5.clone();
        }
        this.f28967w = this.f28951g;
    }

    private float o() {
        if (this.f28967w == null) {
            n();
        }
        return Math.abs(getTop() / this.f28967w.f28980d);
    }

    private void p() {
        ValueAnimator ofInt = ValueAnimator.ofInt(getTop(), 0);
        ofInt.addUpdateListener(new a());
        ValueAnimator ofInt2 = ValueAnimator.ofInt(getLeft(), 0);
        ofInt2.addUpdateListener(new b());
        ValueAnimator ofInt3 = ValueAnimator.ofInt(this.f28964t, 255);
        ofInt3.addUpdateListener(new c());
        ValueAnimator ofFloat = ValueAnimator.ofFloat(getScaleX(), 1.0f);
        ofFloat.addUpdateListener(new d());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(f28945y);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.playTogether(ofInt, ofInt2, ofFloat, ofInt3);
        animatorSet.start();
    }

    private void r() {
        this.f28954j = false;
        if (this.f28952h == null) {
            return;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f28958n = valueAnimator;
        valueAnimator.setDuration(f28945y);
        this.f28958n.setInterpolator(new AccelerateDecelerateInterpolator());
        Status status = this.f28947c;
        if (status == Status.STATE_IN) {
            this.f28958n.setValues(PropertyValuesHolder.ofFloat("animScale", this.f28950f.f28982f, this.f28951g.f28982f), PropertyValuesHolder.ofInt("animAlpha", this.f28950f.f28981e, this.f28951g.f28981e), PropertyValuesHolder.ofFloat("animLeft", this.f28950f.f28977a, this.f28951g.f28977a), PropertyValuesHolder.ofFloat("animTop", this.f28950f.f28978b, this.f28951g.f28978b), PropertyValuesHolder.ofFloat("animWidth", this.f28950f.f28979c, this.f28951g.f28979c), PropertyValuesHolder.ofFloat("animHeight", this.f28950f.f28980d, this.f28951g.f28980d));
        } else if (status == Status.STATE_OUT) {
            this.f28958n.setValues(PropertyValuesHolder.ofFloat("animScale", this.f28951g.f28982f, this.f28950f.f28982f), PropertyValuesHolder.ofInt("animAlpha", this.f28951g.f28981e, this.f28950f.f28981e), PropertyValuesHolder.ofFloat("animLeft", this.f28951g.f28977a, this.f28950f.f28977a), PropertyValuesHolder.ofFloat("animTop", this.f28951g.f28978b, this.f28950f.f28978b), PropertyValuesHolder.ofFloat("animWidth", this.f28951g.f28979c, this.f28950f.f28979c), PropertyValuesHolder.ofFloat("animHeight", this.f28951g.f28980d, this.f28950f.f28980d));
        }
        this.f28958n.addUpdateListener(new e());
        this.f28958n.addListener(new f());
        this.f28958n.start();
    }

    public static void setDuration(int i9) {
        f28945y = i9;
    }

    public static void setFullscreen(boolean z10) {
        f28946z = z10;
    }

    public static void setIsScale(boolean z10) {
        A = z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
        if (r0 != 3) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        if (r0 != 3) goto L9;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getAction()
            boolean r1 = com.previewlibrary.wight.SmoothImageView.A
            r2 = 2
            r3 = 3
            r4 = 1
            if (r1 == 0) goto L47
            float r1 = r6.getScale()
            r5 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r1 != 0) goto L34
            if (r0 == 0) goto L2c
            if (r0 == r4) goto L23
            if (r0 == r2) goto L1e
            if (r0 == r3) goto L23
            goto L2f
        L1e:
            boolean r7 = r6.j(r7)
            return r7
        L23:
            boolean r0 = r6.f28962r
            if (r0 == 0) goto L2f
            boolean r7 = r6.h()
            return r7
        L2c:
            r6.i(r7)
        L2f:
            boolean r7 = super.dispatchTouchEvent(r7)
            return r7
        L34:
            if (r0 == r4) goto L39
            if (r0 == r3) goto L39
            goto L42
        L39:
            boolean r0 = r6.f28962r
            if (r0 == 0) goto L42
            boolean r7 = r6.h()
            return r7
        L42:
            boolean r7 = super.dispatchTouchEvent(r7)
            return r7
        L47:
            if (r0 == 0) goto L5e
            if (r0 == r4) goto L55
            if (r0 == r2) goto L50
            if (r0 == r3) goto L55
            goto L61
        L50:
            boolean r7 = r6.j(r7)
            return r7
        L55:
            boolean r0 = r6.f28962r
            if (r0 == 0) goto L61
            boolean r7 = r6.h()
            return r7
        L5e:
            r6.i(r7)
        L61:
            boolean r7 = super.dispatchTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.previewlibrary.wight.SmoothImageView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean l() {
        if (getScale() != 1.0f) {
            b(1.0f, true);
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // uk.co.senab2.photoview2.PhotoView, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f28955k = 0;
        this.f28956l = 0;
        this.f28953i = null;
        f28946z = false;
        ValueAnimator valueAnimator = this.f28958n;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f28958n.clone();
            this.f28958n = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (getDrawable() == null) {
            return;
        }
        Status status = this.f28947c;
        if (status != Status.STATE_OUT && status != Status.STATE_IN) {
            if (status == Status.STATE_MOVE) {
                this.f28948d.setAlpha(0);
                canvas.drawPaint(this.f28948d);
                super.onDraw(canvas);
                return;
            }
            this.f28948d.setAlpha(255);
            canvas.drawPaint(this.f28948d);
            super.onDraw(canvas);
            return;
        }
        if (this.f28950f == null || this.f28951g == null || this.f28952h == null) {
            n();
        }
        i iVar = this.f28952h;
        if (iVar == null) {
            super.onDraw(canvas);
            return;
        }
        this.f28948d.setAlpha(iVar.f28981e);
        canvas.drawPaint(this.f28948d);
        int saveCount = canvas.getSaveCount();
        Matrix matrix = this.f28949e;
        float f10 = this.f28952h.f28982f;
        matrix.setScale(f10, f10);
        i iVar2 = this.f28952h;
        float f11 = iVar2.f28982f;
        this.f28949e.postTranslate((-((this.f28955k * f11) - iVar2.f28979c)) / 2.0f, (-((this.f28956l * f11) - iVar2.f28980d)) / 2.0f);
        i iVar3 = this.f28952h;
        canvas.translate(iVar3.f28977a, iVar3.f28978b);
        i iVar4 = this.f28952h;
        canvas.clipRect(0.0f, 0.0f, iVar4.f28979c, iVar4.f28980d);
        canvas.concat(this.f28949e);
        getDrawable().draw(canvas);
        canvas.restoreToCount(saveCount);
        if (this.f28954j) {
            r();
        }
    }

    public void q(boolean z10, float f10) {
        this.f28957m = z10;
        this.f28959o = f10;
    }

    public void s(j jVar) {
        setOnTransformListener(jVar);
        this.f28954j = true;
        this.f28947c = Status.STATE_IN;
        invalidate();
    }

    public void setAlphaChangeListener(g gVar) {
        this.f28965u = gVar;
    }

    public void setOnTransformListener(j jVar) {
        this.f28968x = jVar;
    }

    public void setThumbRect(Rect rect) {
        this.f28953i = rect;
    }

    public void setTransformOutListener(h hVar) {
        this.f28966v = hVar;
    }

    public void t(j jVar) {
        if (getTop() != 0) {
            offsetTopAndBottom(-getTop());
        }
        if (getLeft() != 0) {
            offsetLeftAndRight(-getLeft());
        }
        if (getScaleX() != 1.0f) {
            setScaleX(1.0f);
            setScaleY(1.0f);
        }
        setOnTransformListener(jVar);
        this.f28954j = true;
        this.f28947c = Status.STATE_OUT;
        invalidate();
    }

    public SmoothImageView(Context context) {
        super(context);
        this.f28947c = Status.STATE_NORMAL;
        this.f28959o = 0.5f;
        this.f28962r = false;
        this.f28963s = false;
        this.f28964t = 0;
        m();
    }
}
