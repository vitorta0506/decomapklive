package uk.co.senab2.photoview2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import java.lang.ref.WeakReference;
/* loaded from: classes7.dex */
public class c implements uk.co.senab2.photoview2.b, View.OnTouchListener, ll.e, ViewTreeObserver.OnGlobalLayoutListener {
    private static final boolean E = Log.isLoggable("PhotoViewAttacher", 3);
    static int F = 1;
    private int A;
    private float B;
    private boolean C;
    private ImageView.ScaleType D;

    /* renamed from: a  reason: collision with root package name */
    private Interpolator f58547a;

    /* renamed from: b  reason: collision with root package name */
    int f58548b;

    /* renamed from: c  reason: collision with root package name */
    private float f58549c;

    /* renamed from: d  reason: collision with root package name */
    private float f58550d;

    /* renamed from: e  reason: collision with root package name */
    private float f58551e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f58552f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f58553g;

    /* renamed from: h  reason: collision with root package name */
    private WeakReference<ImageView> f58554h;

    /* renamed from: i  reason: collision with root package name */
    private GestureDetector f58555i;

    /* renamed from: j  reason: collision with root package name */
    private ll.d f58556j;

    /* renamed from: k  reason: collision with root package name */
    private final Matrix f58557k;

    /* renamed from: l  reason: collision with root package name */
    private final Matrix f58558l;

    /* renamed from: m  reason: collision with root package name */
    private final Matrix f58559m;

    /* renamed from: n  reason: collision with root package name */
    private final RectF f58560n;

    /* renamed from: o  reason: collision with root package name */
    private final float[] f58561o;

    /* renamed from: p  reason: collision with root package name */
    private e f58562p;

    /* renamed from: q  reason: collision with root package name */
    private f f58563q;

    /* renamed from: r  reason: collision with root package name */
    private i f58564r;

    /* renamed from: s  reason: collision with root package name */
    private View.OnLongClickListener f58565s;

    /* renamed from: t  reason: collision with root package name */
    private g f58566t;

    /* renamed from: u  reason: collision with root package name */
    private h f58567u;

    /* renamed from: v  reason: collision with root package name */
    private int f58568v;

    /* renamed from: w  reason: collision with root package name */
    private int f58569w;

    /* renamed from: x  reason: collision with root package name */
    private int f58570x;

    /* renamed from: y  reason: collision with root package name */
    private int f58571y;

    /* renamed from: z  reason: collision with root package name */
    private d f58572z;

    /* loaded from: classes7.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            if (c.this.f58567u == null || c.this.C() > 1.0f || MotionEventCompat.getPointerCount(motionEvent) > c.F || MotionEventCompat.getPointerCount(motionEvent2) > c.F) {
                return false;
            }
            return c.this.f58567u.onFling(motionEvent, motionEvent2, f10, f11);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (c.this.u() == null || c.this.f58565s == null || c.this.u().getY() != 0.0f || c.this.u().getX() != 0.0f) {
                return;
            }
            c.this.f58565s.onLongClick(c.this.u());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f58574a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f58574a = iArr;
            try {
                iArr[ImageView.ScaleType.MATRIX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f58574a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f58574a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f58574a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f58574a[ImageView.ScaleType.FIT_XY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: uk.co.senab2.photoview2.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public class RunnableC0660c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final float f58575a;

        /* renamed from: b  reason: collision with root package name */
        private final float f58576b;

        /* renamed from: c  reason: collision with root package name */
        private final long f58577c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        private final float f58578d;

        /* renamed from: e  reason: collision with root package name */
        private final float f58579e;

        public RunnableC0660c(float f10, float f11, float f12, float f13) {
            this.f58575a = f12;
            this.f58576b = f13;
            this.f58578d = f10;
            this.f58579e = f11;
        }

        private float b() {
            return c.this.f58547a.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.f58577c)) * 1.0f) / c.this.f58548b));
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView u10 = c.this.u();
            if (u10 == null) {
                return;
            }
            float b10 = b();
            float f10 = this.f58578d;
            c.this.b((f10 + ((this.f58579e - f10) * b10)) / c.this.C(), this.f58575a, this.f58576b);
            if (b10 < 1.0f) {
                kl.a.c(u10, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final nl.c f58581a;

        /* renamed from: b  reason: collision with root package name */
        private int f58582b;

        /* renamed from: c  reason: collision with root package name */
        private int f58583c;

        public d(Context context) {
            this.f58581a = nl.c.f(context);
        }

        public void b() {
            if (c.E) {
                ml.a.a().d("PhotoViewAttacher", "Cancel Fling");
            }
            this.f58581a.c(true);
        }

        public void c(int i9, int i10, int i11, int i12) {
            int i13;
            int i14;
            int i15;
            int i16;
            RectF q10 = c.this.q();
            if (q10 == null) {
                return;
            }
            int round = Math.round(-q10.left);
            float f10 = i9;
            if (f10 < q10.width()) {
                i14 = Math.round(q10.width() - f10);
                i13 = 0;
            } else {
                i13 = round;
                i14 = i13;
            }
            int round2 = Math.round(-q10.top);
            float f11 = i10;
            if (f11 < q10.height()) {
                i16 = Math.round(q10.height() - f11);
                i15 = 0;
            } else {
                i15 = round2;
                i16 = i15;
            }
            this.f58582b = round;
            this.f58583c = round2;
            if (c.E) {
                ml.a.a().d("PhotoViewAttacher", "fling. StartX:" + round + " StartY:" + round2 + " MaxX:" + i14 + " MaxY:" + i16);
            }
            if (round == i14 && round2 == i16) {
                return;
            }
            this.f58581a.b(round, round2, i11, i12, i13, i14, i15, i16, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView u10;
            if (this.f58581a.g() || (u10 = c.this.u()) == null || !this.f58581a.a()) {
                return;
            }
            int d10 = this.f58581a.d();
            int e10 = this.f58581a.e();
            if (c.E) {
                ml.b a10 = ml.a.a();
                a10.d("PhotoViewAttacher", "fling run(). CurrentX:" + this.f58582b + " CurrentY:" + this.f58583c + " NewX:" + d10 + " NewY:" + e10);
            }
            c.this.f58559m.postTranslate(this.f58582b - d10, this.f58583c - e10);
            c cVar = c.this;
            cVar.K(cVar.s());
            this.f58582b = d10;
            this.f58583c = e10;
            kl.a.c(u10, this);
        }
    }

    /* loaded from: classes7.dex */
    public interface e {
        void a(RectF rectF);
    }

    /* loaded from: classes7.dex */
    public interface f {
        void a();

        void b(View view, float f10, float f11);
    }

    /* loaded from: classes7.dex */
    public interface g {
        void a(float f10, float f11, float f12);
    }

    /* loaded from: classes7.dex */
    public interface h {
        boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11);
    }

    /* loaded from: classes7.dex */
    public interface i {
        void a(View view, float f10, float f11);
    }

    public c(ImageView imageView) {
        this(imageView, true);
    }

    private float E(Matrix matrix, int i9) {
        matrix.getValues(this.f58561o);
        return this.f58561o[i9];
    }

    private static boolean G(ImageView imageView) {
        return (imageView == null || imageView.getDrawable() == null) ? false : true;
    }

    private static boolean H(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            return false;
        }
        if (b.f58574a[scaleType.ordinal()] != 1) {
            return true;
        }
        throw new IllegalArgumentException(scaleType.name() + " is not supported in PhotoView");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K(Matrix matrix) {
        RectF r10;
        ImageView u10 = u();
        if (u10 != null) {
            m();
            u10.setImageMatrix(matrix);
            if (this.f58562p == null || (r10 = r(matrix)) == null) {
                return;
            }
            this.f58562p.a(r10);
        }
    }

    private static void L(ImageView imageView) {
        if (imageView == null || (imageView instanceof uk.co.senab2.photoview2.b) || ImageView.ScaleType.MATRIX.equals(imageView.getScaleType())) {
            return;
        }
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
    }

    private void Y(Drawable drawable) {
        ImageView u10 = u();
        if (u10 == null || drawable == null) {
            return;
        }
        float w6 = w(u10);
        float v10 = v(u10);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.f58557k.reset();
        float f10 = intrinsicWidth;
        float f11 = w6 / f10;
        float f12 = intrinsicHeight;
        float f13 = v10 / f12;
        ImageView.ScaleType scaleType = this.D;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f58557k.postTranslate((w6 - f10) / 2.0f, (v10 - f12) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float max = Math.max(f11, f13);
            this.f58557k.postScale(max, max);
            this.f58557k.postTranslate((w6 - (f10 * max)) / 2.0f, (v10 - (f12 * max)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float min = Math.min(1.0f, Math.min(f11, f13));
            this.f58557k.postScale(min, min);
            this.f58557k.postTranslate((w6 - (f10 * min)) / 2.0f, (v10 - (f12 * min)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f10, f12);
            RectF rectF2 = new RectF(0.0f, 0.0f, w6, v10);
            if (((int) this.B) % 180 != 0) {
                rectF = new RectF(0.0f, 0.0f, f12, f10);
            }
            int i9 = b.f58574a[this.D.ordinal()];
            if (i9 == 2) {
                this.f58557k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i9 == 3) {
                this.f58557k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i9 == 4) {
                this.f58557k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i9 == 5) {
                this.f58557k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        I();
    }

    private void k() {
        d dVar = this.f58572z;
        if (dVar != null) {
            dVar.b();
            this.f58572z = null;
        }
    }

    private void l() {
        if (n()) {
            K(s());
        }
    }

    private void m() {
        ImageView u10 = u();
        if (u10 != null && !(u10 instanceof uk.co.senab2.photoview2.b) && !ImageView.ScaleType.MATRIX.equals(u10.getScaleType())) {
            throw new IllegalStateException("The ImageView's ScaleType has been changed since attaching a PhotoViewAttacher. You should call setScaleType on the PhotoViewAttacher instead of on the ImageView");
        }
    }

    private boolean n() {
        RectF r10;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        ImageView u10 = u();
        if (u10 == null || (r10 = r(s())) == null) {
            return false;
        }
        float height = r10.height();
        float width = r10.width();
        float v10 = v(u10);
        float f16 = 0.0f;
        if (height <= v10) {
            int i9 = b.f58574a[this.D.ordinal()];
            if (i9 != 2) {
                if (i9 != 3) {
                    v10 = (v10 - height) / 2.0f;
                    f11 = r10.top;
                } else {
                    v10 -= height;
                    f11 = r10.top;
                }
                f12 = v10 - f11;
            } else {
                f10 = r10.top;
                f12 = -f10;
            }
        } else {
            f10 = r10.top;
            if (f10 <= 0.0f) {
                f11 = r10.bottom;
                if (f11 >= v10) {
                    f12 = 0.0f;
                }
                f12 = v10 - f11;
            }
            f12 = -f10;
        }
        float w6 = w(u10);
        if (width <= w6) {
            int i10 = b.f58574a[this.D.ordinal()];
            if (i10 != 2) {
                if (i10 != 3) {
                    f14 = (w6 - width) / 2.0f;
                    f15 = r10.left;
                } else {
                    f14 = w6 - width;
                    f15 = r10.left;
                }
                f13 = f14 - f15;
            } else {
                f13 = -r10.left;
            }
            f16 = f13;
            this.A = 2;
        } else {
            float f17 = r10.left;
            if (f17 > 0.0f) {
                this.A = 0;
                f16 = -f17;
            } else {
                float f18 = r10.right;
                if (f18 < w6) {
                    f16 = w6 - f18;
                    this.A = 1;
                } else {
                    this.A = -1;
                }
            }
        }
        this.f58559m.postTranslate(f16, f12);
        return true;
    }

    private static void o(float f10, float f11, float f12) {
        if (f10 >= f11) {
            throw new IllegalArgumentException("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        }
        if (f11 >= f12) {
            throw new IllegalArgumentException("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }

    private RectF r(Matrix matrix) {
        Drawable drawable;
        ImageView u10 = u();
        if (u10 == null || (drawable = u10.getDrawable()) == null) {
            return null;
        }
        this.f58560n.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        matrix.mapRect(this.f58560n);
        return this.f58560n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Matrix s() {
        this.f58558l.set(this.f58557k);
        this.f58558l.postConcat(this.f58559m);
        return this.f58558l;
    }

    private int v(ImageView imageView) {
        if (imageView == null) {
            return 0;
        }
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    private int w(ImageView imageView) {
        if (imageView == null) {
            return 0;
        }
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public f A() {
        return this.f58563q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public i B() {
        return this.f58564r;
    }

    public float C() {
        return (float) Math.sqrt(((float) Math.pow(E(this.f58559m, 0), 2.0d)) + ((float) Math.pow(E(this.f58559m, 3), 2.0d)));
    }

    public ImageView.ScaleType D() {
        return this.D;
    }

    public Bitmap F() {
        ImageView u10 = u();
        if (u10 == null) {
            return null;
        }
        return u10.getDrawingCache();
    }

    public void I() {
        this.f58559m.reset();
        P(this.B);
        K(s());
        n();
    }

    public void J(boolean z10) {
        this.f58552f = z10;
    }

    public void M(float f10) {
        o(this.f58549c, this.f58550d, f10);
        this.f58551e = f10;
    }

    public void N(float f10) {
        o(this.f58549c, f10, this.f58551e);
        this.f58550d = f10;
    }

    public void O(float f10) {
        o(f10, this.f58550d, this.f58551e);
        this.f58549c = f10;
    }

    public void P(float f10) {
        this.f58559m.postRotate(f10 % 360.0f);
        l();
    }

    public void Q(float f10) {
        this.f58559m.setRotate(f10 % 360.0f);
        l();
    }

    public void R(float f10) {
        T(f10, false);
    }

    public void S(float f10, float f11, float f12, boolean z10) {
        ImageView u10 = u();
        if (u10 != null) {
            if (f10 < this.f58549c || f10 > this.f58551e) {
                ml.a.a().i("PhotoViewAttacher", "Scale must be within the range of minScale and maxScale");
            } else if (z10) {
                u10.post(new RunnableC0660c(C(), f10, f11, f12));
            } else {
                this.f58559m.setScale(f10, f10, f11, f12);
                l();
            }
        }
    }

    public void T(float f10, boolean z10) {
        ImageView u10 = u();
        if (u10 != null) {
            S(f10, u10.getRight() / 2, u10.getBottom() / 2, z10);
        }
    }

    public void U(ImageView.ScaleType scaleType) {
        if (!H(scaleType) || scaleType == this.D) {
            return;
        }
        this.D = scaleType;
        X();
    }

    public void V(int i9) {
        if (i9 < 0) {
            i9 = 200;
        }
        this.f58548b = i9;
    }

    public void W(boolean z10) {
        this.C = z10;
        X();
    }

    public void X() {
        ImageView u10 = u();
        if (u10 != null) {
            if (this.C) {
                L(u10);
                Y(u10.getDrawable());
                return;
            }
            I();
        }
    }

    @Override // ll.e
    public void a(float f10, float f11) {
        if (this.f58556j.b()) {
            return;
        }
        if (E) {
            ml.a.a().d("PhotoViewAttacher", String.format("onDrag: dx: %.2f. dy: %.2f", Float.valueOf(f10), Float.valueOf(f11)));
        }
        ImageView u10 = u();
        this.f58559m.postTranslate(f10, f11);
        l();
        ViewParent parent = u10.getParent();
        if (!this.f58552f || this.f58556j.b() || this.f58553g) {
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
                return;
            }
            return;
        }
        int i9 = this.A;
        if ((i9 == 2 || ((i9 == 0 && f10 >= 1.0f) || (i9 == 1 && f10 <= -1.0f))) && parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
    }

    @Override // ll.e
    public void b(float f10, float f11, float f12) {
        if (E) {
            ml.a.a().d("PhotoViewAttacher", String.format("onScale: scale: %.2f. fX: %.2f. fY: %.2f", Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f12)));
        }
        if (C() < this.f58551e || f10 < 1.0f) {
            if (C() > this.f58549c || f10 > 1.0f) {
                g gVar = this.f58566t;
                if (gVar != null) {
                    gVar.a(f10, f11, f12);
                }
                this.f58559m.postScale(f10, f10, f11, f12);
                l();
            }
        }
    }

    @Override // ll.e
    public void c(float f10, float f11, float f12, float f13) {
        if (E) {
            ml.b a10 = ml.a.a();
            a10.d("PhotoViewAttacher", "onFling. sX: " + f10 + " sY: " + f11 + " Vx: " + f12 + " Vy: " + f13);
        }
        ImageView u10 = u();
        d dVar = new d(u10.getContext());
        this.f58572z = dVar;
        dVar.c(w(u10), v(u10), (int) f12, (int) f13);
        u10.post(this.f58572z);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        ImageView u10 = u();
        if (u10 != null) {
            if (this.C) {
                int top = u10.getTop();
                int right = u10.getRight();
                int bottom = u10.getBottom();
                int left = u10.getLeft();
                if (top == this.f58568v && bottom == this.f58570x && left == this.f58571y && right == this.f58569w) {
                    return;
                }
                Y(u10.getDrawable());
                this.f58568v = top;
                this.f58569w = right;
                this.f58570x = bottom;
                this.f58571y = left;
                return;
            }
            Y(u10.getDrawable());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0095  */
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
            if (r0 == 0) goto La1
            r0 = r11
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            boolean r0 = G(r0)
            if (r0 == 0) goto La1
            android.view.ViewParent r0 = r11.getParent()
            int r3 = r12.getAction()
            if (r3 == 0) goto L49
            if (r3 == r2) goto L1f
            r0 = 3
            if (r3 == r0) goto L1f
            goto L5d
        L1f:
            float r0 = r10.C()
            float r3 = r10.f58549c
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L5d
            android.graphics.RectF r0 = r10.q()
            if (r0 == 0) goto L5d
            uk.co.senab2.photoview2.c$c r9 = new uk.co.senab2.photoview2.c$c
            float r5 = r10.C()
            float r6 = r10.f58549c
            float r7 = r0.centerX()
            float r8 = r0.centerY()
            r3 = r9
            r4 = r10
            r3.<init>(r5, r6, r7, r8)
            r11.post(r9)
            r11 = 1
            goto L5e
        L49:
            if (r0 == 0) goto L4f
            r0.requestDisallowInterceptTouchEvent(r2)
            goto L5a
        L4f:
            ml.b r11 = ml.a.a()
            java.lang.String r0 = "PhotoViewAttacher"
            java.lang.String r3 = "onTouch getParent() returned null"
            r11.i(r0, r3)
        L5a:
            r10.k()
        L5d:
            r11 = 0
        L5e:
            ll.d r0 = r10.f58556j
            if (r0 == 0) goto L95
            boolean r11 = r0.b()
            ll.d r0 = r10.f58556j
            boolean r0 = r0.a()
            ll.d r3 = r10.f58556j
            boolean r3 = r3.onTouchEvent(r12)
            if (r11 != 0) goto L7e
            ll.d r11 = r10.f58556j
            boolean r11 = r11.b()
            if (r11 != 0) goto L7e
            r11 = 1
            goto L7f
        L7e:
            r11 = 0
        L7f:
            if (r0 != 0) goto L8b
            ll.d r0 = r10.f58556j
            boolean r0 = r0.a()
            if (r0 != 0) goto L8b
            r0 = 1
            goto L8c
        L8b:
            r0 = 0
        L8c:
            if (r11 == 0) goto L91
            if (r0 == 0) goto L91
            r1 = 1
        L91:
            r10.f58553g = r1
            r1 = r3
            goto L96
        L95:
            r1 = r11
        L96:
            android.view.GestureDetector r11 = r10.f58555i
            if (r11 == 0) goto La1
            boolean r11 = r11.onTouchEvent(r12)
            if (r11 == 0) goto La1
            r1 = 1
        La1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: uk.co.senab2.photoview2.c.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void p() {
        WeakReference<ImageView> weakReference = this.f58554h;
        if (weakReference == null) {
            return;
        }
        ImageView imageView = weakReference.get();
        if (imageView != null) {
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            }
            imageView.setOnTouchListener(null);
            k();
        }
        GestureDetector gestureDetector = this.f58555i;
        if (gestureDetector != null) {
            gestureDetector.setOnDoubleTapListener(null);
        }
        this.f58562p = null;
        this.f58563q = null;
        this.f58564r = null;
        this.f58554h = null;
    }

    public RectF q() {
        n();
        return r(s());
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        if (onDoubleTapListener != null) {
            this.f58555i.setOnDoubleTapListener(onDoubleTapListener);
        } else {
            this.f58555i.setOnDoubleTapListener(new uk.co.senab2.photoview2.a(this));
        }
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f58565s = onLongClickListener;
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnMatrixChangeListener(e eVar) {
        this.f58562p = eVar;
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnPhotoTapListener(f fVar) {
        this.f58563q = fVar;
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnScaleChangeListener(g gVar) {
        this.f58566t = gVar;
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnSingleFlingListener(h hVar) {
        this.f58567u = hVar;
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnViewTapListener(i iVar) {
        this.f58564r = iVar;
    }

    public Matrix t() {
        return this.f58558l;
    }

    public ImageView u() {
        WeakReference<ImageView> weakReference = this.f58554h;
        ImageView imageView = weakReference != null ? weakReference.get() : null;
        if (imageView == null) {
            p();
            ml.a.a().i("PhotoViewAttacher", "ImageView no longer exists. You should not use this PhotoViewAttacher any more.");
        }
        return imageView;
    }

    public float x() {
        return this.f58551e;
    }

    public float y() {
        return this.f58550d;
    }

    public float z() {
        return this.f58549c;
    }

    public c(ImageView imageView, boolean z10) {
        this.f58547a = new AccelerateDecelerateInterpolator();
        this.f58548b = 200;
        this.f58549c = 1.0f;
        this.f58550d = 1.75f;
        this.f58551e = 3.0f;
        this.f58552f = true;
        this.f58553g = false;
        this.f58557k = new Matrix();
        this.f58558l = new Matrix();
        this.f58559m = new Matrix();
        this.f58560n = new RectF();
        this.f58561o = new float[9];
        this.A = 2;
        this.D = ImageView.ScaleType.FIT_CENTER;
        this.f58554h = new WeakReference<>(imageView);
        imageView.setDrawingCacheEnabled(true);
        imageView.setOnTouchListener(this);
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        L(imageView);
        if (imageView.isInEditMode()) {
            return;
        }
        this.f58556j = ll.f.a(imageView.getContext(), this);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new a());
        this.f58555i = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new uk.co.senab2.photoview2.a(this));
        this.B = 0.0f;
        W(z10);
    }
}
