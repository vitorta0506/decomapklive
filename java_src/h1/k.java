package h1;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
/* loaded from: classes.dex */
public class k implements View.OnTouchListener, View.OnLayoutChangeListener {
    private static float F = 3.0f;
    private static float G = 1.75f;
    private static float H = 1.0f;
    private static int I = 200;
    private static int J = 1;
    private float B;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f40291h;

    /* renamed from: i  reason: collision with root package name */
    private GestureDetector f40292i;

    /* renamed from: j  reason: collision with root package name */
    private h1.b f40293j;

    /* renamed from: p  reason: collision with root package name */
    private h1.d f40299p;

    /* renamed from: q  reason: collision with root package name */
    private h1.f f40300q;

    /* renamed from: r  reason: collision with root package name */
    private h1.e f40301r;

    /* renamed from: s  reason: collision with root package name */
    private j f40302s;

    /* renamed from: t  reason: collision with root package name */
    private View.OnClickListener f40303t;

    /* renamed from: u  reason: collision with root package name */
    private View.OnLongClickListener f40304u;

    /* renamed from: v  reason: collision with root package name */
    private g f40305v;

    /* renamed from: w  reason: collision with root package name */
    private h f40306w;

    /* renamed from: x  reason: collision with root package name */
    private i f40307x;

    /* renamed from: y  reason: collision with root package name */
    private f f40308y;

    /* renamed from: a  reason: collision with root package name */
    private Interpolator f40284a = new AccelerateDecelerateInterpolator();

    /* renamed from: b  reason: collision with root package name */
    private int f40285b = I;

    /* renamed from: c  reason: collision with root package name */
    private float f40286c = H;

    /* renamed from: d  reason: collision with root package name */
    private float f40287d = G;

    /* renamed from: e  reason: collision with root package name */
    private float f40288e = F;

    /* renamed from: f  reason: collision with root package name */
    private boolean f40289f = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f40290g = false;

    /* renamed from: k  reason: collision with root package name */
    private final Matrix f40294k = new Matrix();

    /* renamed from: l  reason: collision with root package name */
    private final Matrix f40295l = new Matrix();

    /* renamed from: m  reason: collision with root package name */
    private final Matrix f40296m = new Matrix();

    /* renamed from: n  reason: collision with root package name */
    private final RectF f40297n = new RectF();

    /* renamed from: o  reason: collision with root package name */
    private final float[] f40298o = new float[9];

    /* renamed from: z  reason: collision with root package name */
    private int f40309z = 2;
    private int A = 2;
    private boolean C = true;
    private ImageView.ScaleType D = ImageView.ScaleType.FIT_CENTER;
    private h1.c E = new a();

    /* loaded from: classes.dex */
    class a implements h1.c {
        a() {
        }

        @Override // h1.c
        public void a(float f10, float f11) {
            if (k.this.f40293j.e()) {
                return;
            }
            if (k.this.f40307x != null) {
                k.this.f40307x.a(f10, f11);
            }
            k.this.f40296m.postTranslate(f10, f11);
            k.this.B();
            ViewParent parent = k.this.f40291h.getParent();
            if (!k.this.f40289f || k.this.f40293j.e() || k.this.f40290g) {
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            } else if ((k.this.f40309z == 2 || ((k.this.f40309z == 0 && f10 >= 1.0f) || ((k.this.f40309z == 1 && f10 <= -1.0f) || ((k.this.A == 0 && f11 >= 1.0f) || (k.this.A == 1 && f11 <= -1.0f))))) && parent != null) {
                parent.requestDisallowInterceptTouchEvent(false);
            }
        }

        @Override // h1.c
        public void b(float f10, float f11, float f12) {
            if (k.this.M() < k.this.f40288e || f10 < 1.0f) {
                if (k.this.f40305v != null) {
                    k.this.f40305v.a(f10, f11, f12);
                }
                k.this.f40296m.postScale(f10, f10, f11, f12);
                k.this.B();
            }
        }

        @Override // h1.c
        public void c(float f10, float f11, float f12, float f13) {
            k kVar = k.this;
            kVar.f40308y = new f(kVar.f40291h.getContext());
            f fVar = k.this.f40308y;
            k kVar2 = k.this;
            int I = kVar2.I(kVar2.f40291h);
            k kVar3 = k.this;
            fVar.c(I, kVar3.H(kVar3.f40291h), (int) f12, (int) f13);
            k.this.f40291h.post(k.this.f40308y);
        }
    }

    /* loaded from: classes.dex */
    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            if (k.this.f40306w == null || k.this.M() > k.H || motionEvent.getPointerCount() > k.J || motionEvent2.getPointerCount() > k.J) {
                return false;
            }
            return k.this.f40306w.onFling(motionEvent, motionEvent2, f10, f11);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (k.this.f40304u != null) {
                k.this.f40304u.onLongClick(k.this.f40291h);
            }
        }
    }

    /* loaded from: classes.dex */
    class c implements GestureDetector.OnDoubleTapListener {
        c() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float M = k.this.M();
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (M < k.this.K()) {
                    k kVar = k.this;
                    kVar.Z(kVar.K(), x10, y10, true);
                } else if (M >= k.this.K() && M < k.this.J()) {
                    k kVar2 = k.this;
                    kVar2.Z(kVar2.J(), x10, y10, true);
                } else {
                    k kVar3 = k.this;
                    kVar3.Z(kVar3.L(), x10, y10, true);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (k.this.f40303t != null) {
                k.this.f40303t.onClick(k.this.f40291h);
            }
            RectF D = k.this.D();
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (k.this.f40302s != null) {
                k.this.f40302s.a(k.this.f40291h, x10, y10);
            }
            if (D != null) {
                if (D.contains(x10, y10)) {
                    float width = (x10 - D.left) / D.width();
                    float height = (y10 - D.top) / D.height();
                    if (k.this.f40300q != null) {
                        k.this.f40300q.onPhotoTap(k.this.f40291h, width, height);
                        return true;
                    }
                    return true;
                } else if (k.this.f40301r != null) {
                    k.this.f40301r.a(k.this.f40291h);
                    return false;
                } else {
                    return false;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f40313a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f40313a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40313a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40313a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f40313a[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final float f40314a;

        /* renamed from: b  reason: collision with root package name */
        private final float f40315b;

        /* renamed from: c  reason: collision with root package name */
        private final long f40316c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        private final float f40317d;

        /* renamed from: e  reason: collision with root package name */
        private final float f40318e;

        public e(float f10, float f11, float f12, float f13) {
            this.f40314a = f12;
            this.f40315b = f13;
            this.f40317d = f10;
            this.f40318e = f11;
        }

        private float b() {
            return k.this.f40284a.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.f40316c)) * 1.0f) / k.this.f40285b));
        }

        @Override // java.lang.Runnable
        public void run() {
            float b10 = b();
            float f10 = this.f40317d;
            k.this.E.b((f10 + ((this.f40318e - f10) * b10)) / k.this.M(), this.f40314a, this.f40315b);
            if (b10 < 1.0f) {
                h1.a.a(k.this.f40291h, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final OverScroller f40320a;

        /* renamed from: b  reason: collision with root package name */
        private int f40321b;

        /* renamed from: c  reason: collision with root package name */
        private int f40322c;

        public f(Context context) {
            this.f40320a = new OverScroller(context);
        }

        public void b() {
            this.f40320a.forceFinished(true);
        }

        public void c(int i9, int i10, int i11, int i12) {
            int i13;
            int i14;
            int i15;
            int i16;
            RectF D = k.this.D();
            if (D == null) {
                return;
            }
            int round = Math.round(-D.left);
            float f10 = i9;
            if (f10 < D.width()) {
                i14 = Math.round(D.width() - f10);
                i13 = 0;
            } else {
                i13 = round;
                i14 = i13;
            }
            int round2 = Math.round(-D.top);
            float f11 = i10;
            if (f11 < D.height()) {
                i16 = Math.round(D.height() - f11);
                i15 = 0;
            } else {
                i15 = round2;
                i16 = i15;
            }
            this.f40321b = round;
            this.f40322c = round2;
            if (round == i14 && round2 == i16) {
                return;
            }
            this.f40320a.fling(round, round2, i11, i12, i13, i14, i15, i16, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f40320a.isFinished() && this.f40320a.computeScrollOffset()) {
                int currX = this.f40320a.getCurrX();
                int currY = this.f40320a.getCurrY();
                k.this.f40296m.postTranslate(this.f40321b - currX, this.f40322c - currY);
                k.this.B();
                this.f40321b = currX;
                this.f40322c = currY;
                h1.a.a(k.this.f40291h, this);
            }
        }
    }

    public k(ImageView imageView) {
        this.f40291h = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (imageView.isInEditMode()) {
            return;
        }
        this.B = 0.0f;
        this.f40293j = new h1.b(imageView.getContext(), this.E);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new b());
        this.f40292i = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new c());
    }

    private void A() {
        f fVar = this.f40308y;
        if (fVar != null) {
            fVar.b();
            this.f40308y = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (C()) {
            S(F());
        }
    }

    private boolean C() {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        RectF E = E(F());
        if (E == null) {
            return false;
        }
        float height = E.height();
        float width = E.width();
        float H2 = H(this.f40291h);
        float f15 = 0.0f;
        if (height <= H2) {
            int i9 = d.f40313a[this.D.ordinal()];
            if (i9 != 2) {
                if (i9 != 3) {
                    f13 = (H2 - height) / 2.0f;
                    f14 = E.top;
                } else {
                    f13 = H2 - height;
                    f14 = E.top;
                }
                f10 = f13 - f14;
            } else {
                f10 = -E.top;
            }
            this.A = 2;
        } else {
            float f16 = E.top;
            if (f16 > 0.0f) {
                this.A = 0;
                f10 = -f16;
            } else {
                float f17 = E.bottom;
                if (f17 < H2) {
                    this.A = 1;
                    f10 = H2 - f17;
                } else {
                    this.A = -1;
                    f10 = 0.0f;
                }
            }
        }
        float I2 = I(this.f40291h);
        if (width <= I2) {
            int i10 = d.f40313a[this.D.ordinal()];
            if (i10 != 2) {
                if (i10 != 3) {
                    f11 = (I2 - width) / 2.0f;
                    f12 = E.left;
                } else {
                    f11 = I2 - width;
                    f12 = E.left;
                }
                f15 = f11 - f12;
            } else {
                f15 = -E.left;
            }
            this.f40309z = 2;
        } else {
            float f18 = E.left;
            if (f18 > 0.0f) {
                this.f40309z = 0;
                f15 = -f18;
            } else {
                float f19 = E.right;
                if (f19 < I2) {
                    f15 = I2 - f19;
                    this.f40309z = 1;
                } else {
                    this.f40309z = -1;
                }
            }
        }
        this.f40296m.postTranslate(f15, f10);
        return true;
    }

    private RectF E(Matrix matrix) {
        Drawable drawable = this.f40291h.getDrawable();
        if (drawable != null) {
            this.f40297n.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(this.f40297n);
            return this.f40297n;
        }
        return null;
    }

    private Matrix F() {
        this.f40295l.set(this.f40294k);
        this.f40295l.postConcat(this.f40296m);
        return this.f40295l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int H(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int I(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    private float P(Matrix matrix, int i9) {
        matrix.getValues(this.f40298o);
        return this.f40298o[i9];
    }

    private void Q() {
        this.f40296m.reset();
        W(this.B);
        S(F());
        C();
    }

    private void S(Matrix matrix) {
        RectF E;
        this.f40291h.setImageMatrix(matrix);
        if (this.f40299p == null || (E = E(matrix)) == null) {
            return;
        }
        this.f40299p.a(E);
    }

    private void g0(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        float I2 = I(this.f40291h);
        float H2 = H(this.f40291h);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.f40294k.reset();
        float f10 = intrinsicWidth;
        float f11 = I2 / f10;
        float f12 = intrinsicHeight;
        float f13 = H2 / f12;
        ImageView.ScaleType scaleType = this.D;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f40294k.postTranslate((I2 - f10) / 2.0f, (H2 - f12) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float max = Math.max(f11, f13);
            this.f40294k.postScale(max, max);
            this.f40294k.postTranslate((I2 - (f10 * max)) / 2.0f, (H2 - (f12 * max)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float min = Math.min(1.0f, Math.min(f11, f13));
            this.f40294k.postScale(min, min);
            this.f40294k.postTranslate((I2 - (f10 * min)) / 2.0f, (H2 - (f12 * min)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f10, f12);
            RectF rectF2 = new RectF(0.0f, 0.0f, I2, H2);
            if (((int) this.B) % 180 != 0) {
                rectF = new RectF(0.0f, 0.0f, f12, f10);
            }
            int i9 = d.f40313a[this.D.ordinal()];
            if (i9 == 1) {
                this.f40294k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i9 == 2) {
                this.f40294k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i9 == 3) {
                this.f40294k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i9 == 4) {
                this.f40294k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        Q();
    }

    public RectF D() {
        C();
        return E(F());
    }

    public Matrix G() {
        return this.f40295l;
    }

    public float J() {
        return this.f40288e;
    }

    public float K() {
        return this.f40287d;
    }

    public float L() {
        return this.f40286c;
    }

    public float M() {
        return (float) Math.sqrt(((float) Math.pow(P(this.f40296m, 0), 2.0d)) + ((float) Math.pow(P(this.f40296m, 3), 2.0d)));
    }

    public ImageView.ScaleType N() {
        return this.D;
    }

    public void O(Matrix matrix) {
        matrix.set(this.f40296m);
    }

    public void R(boolean z10) {
        this.f40289f = z10;
    }

    public void T(float f10) {
        l.a(this.f40286c, this.f40287d, f10);
        this.f40288e = f10;
    }

    public void U(float f10) {
        l.a(this.f40286c, f10, this.f40288e);
        this.f40287d = f10;
    }

    public void V(float f10) {
        l.a(f10, this.f40287d, this.f40288e);
        this.f40286c = f10;
    }

    public void W(float f10) {
        this.f40296m.postRotate(f10 % 360.0f);
        B();
    }

    public void X(float f10) {
        this.f40296m.setRotate(f10 % 360.0f);
        B();
    }

    public void Y(float f10) {
        a0(f10, false);
    }

    public void Z(float f10, float f11, float f12, boolean z10) {
        if (f10 < this.f40286c || f10 > this.f40288e) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        }
        if (z10) {
            this.f40291h.post(new e(M(), f10, f11, f12));
            return;
        }
        this.f40296m.setScale(f10, f10, f11, f12);
        B();
    }

    public void a0(float f10, boolean z10) {
        Z(f10, this.f40291h.getRight() / 2, this.f40291h.getBottom() / 2, z10);
    }

    public void b0(float f10, float f11, float f12) {
        l.a(f10, f11, f12);
        this.f40286c = f10;
        this.f40287d = f11;
        this.f40288e = f12;
    }

    public void c0(ImageView.ScaleType scaleType) {
        if (!l.d(scaleType) || scaleType == this.D) {
            return;
        }
        this.D = scaleType;
        f0();
    }

    public void d0(int i9) {
        this.f40285b = i9;
    }

    public void e0(boolean z10) {
        this.C = z10;
        f0();
    }

    public void f0() {
        if (this.C) {
            g0(this.f40291h.getDrawable());
        } else {
            Q();
        }
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        if (i9 == i13 && i10 == i14 && i11 == i15 && i12 == i16) {
            return;
        }
        g0(this.f40291h.getDrawable());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
        /*
            r10 = this;
            boolean r0 = r10.C
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lbe
            r0 = r11
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            boolean r0 = h1.l.c(r0)
            if (r0 == 0) goto Lbe
            int r0 = r12.getAction()
            if (r0 == 0) goto L6e
            if (r0 == r2) goto L1b
            r3 = 3
            if (r0 == r3) goto L1b
            goto L7a
        L1b:
            float r0 = r10.M()
            float r3 = r10.f40286c
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L44
            android.graphics.RectF r0 = r10.D()
            if (r0 == 0) goto L7a
            h1.k$e r9 = new h1.k$e
            float r5 = r10.M()
            float r6 = r10.f40286c
            float r7 = r0.centerX()
            float r8 = r0.centerY()
            r3 = r9
            r4 = r10
            r3.<init>(r5, r6, r7, r8)
            r11.post(r9)
            goto L6c
        L44:
            float r0 = r10.M()
            float r3 = r10.f40288e
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto L7a
            android.graphics.RectF r0 = r10.D()
            if (r0 == 0) goto L7a
            h1.k$e r9 = new h1.k$e
            float r5 = r10.M()
            float r6 = r10.f40288e
            float r7 = r0.centerX()
            float r8 = r0.centerY()
            r3 = r9
            r4 = r10
            r3.<init>(r5, r6, r7, r8)
            r11.post(r9)
        L6c:
            r11 = 1
            goto L7b
        L6e:
            android.view.ViewParent r11 = r11.getParent()
            if (r11 == 0) goto L77
            r11.requestDisallowInterceptTouchEvent(r2)
        L77:
            r10.A()
        L7a:
            r11 = 0
        L7b:
            h1.b r0 = r10.f40293j
            if (r0 == 0) goto Lb2
            boolean r11 = r0.e()
            h1.b r0 = r10.f40293j
            boolean r0 = r0.d()
            h1.b r3 = r10.f40293j
            boolean r3 = r3.f(r12)
            if (r11 != 0) goto L9b
            h1.b r11 = r10.f40293j
            boolean r11 = r11.e()
            if (r11 != 0) goto L9b
            r11 = 1
            goto L9c
        L9b:
            r11 = 0
        L9c:
            if (r0 != 0) goto La8
            h1.b r0 = r10.f40293j
            boolean r0 = r0.d()
            if (r0 != 0) goto La8
            r0 = 1
            goto La9
        La8:
            r0 = 0
        La9:
            if (r11 == 0) goto Lae
            if (r0 == 0) goto Lae
            r1 = 1
        Lae:
            r10.f40290g = r1
            r1 = r3
            goto Lb3
        Lb2:
            r1 = r11
        Lb3:
            android.view.GestureDetector r11 = r10.f40292i
            if (r11 == 0) goto Lbe
            boolean r11 = r11.onTouchEvent(r12)
            if (r11 == 0) goto Lbe
            r1 = 1
        Lbe:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: h1.k.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f40303t = onClickListener;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f40292i.setOnDoubleTapListener(onDoubleTapListener);
    }

    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f40304u = onLongClickListener;
    }

    public void setOnMatrixChangeListener(h1.d dVar) {
        this.f40299p = dVar;
    }

    public void setOnOutsidePhotoTapListener(h1.e eVar) {
        this.f40301r = eVar;
    }

    public void setOnPhotoTapListener(h1.f fVar) {
        this.f40300q = fVar;
    }

    public void setOnScaleChangeListener(g gVar) {
        this.f40305v = gVar;
    }

    public void setOnSingleFlingListener(h hVar) {
        this.f40306w = hVar;
    }

    public void setOnViewDragListener(i iVar) {
        this.f40307x = iVar;
    }

    public void setOnViewTapListener(j jVar) {
        this.f40302s = jVar;
    }
}
