package com.guochao.faceshow.aaspring.views.loopView;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.guochao.faceshow.R$styleable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class LoopView extends View {
    private static final int R = (int) (Resources.getSystem().getDisplayMetrics().density * 15.0f);

    /* renamed from: a1  reason: collision with root package name */
    private static final int f24384a1 = (int) (Resources.getSystem().getDisplayMetrics().density * 16.0f);
    int A;
    int B;
    long C;
    private float D;
    private Context E;
    private GestureDetector F;
    private ScheduledFuture<?> G;
    private Paint H;
    private Paint I;
    private Paint J;
    private int K;
    private float L;
    private Rect M;
    private int N;
    private int O;
    private Typeface P;
    private boolean Q;

    /* renamed from: a  reason: collision with root package name */
    int f24385a;

    /* renamed from: b  reason: collision with root package name */
    int f24386b;

    /* renamed from: c  reason: collision with root package name */
    Handler f24387c;

    /* renamed from: d  reason: collision with root package name */
    na.b f24388d;

    /* renamed from: e  reason: collision with root package name */
    na.a f24389e;

    /* renamed from: f  reason: collision with root package name */
    ScheduledExecutorService f24390f;

    /* renamed from: g  reason: collision with root package name */
    List<a> f24391g;

    /* renamed from: h  reason: collision with root package name */
    int f24392h;

    /* renamed from: i  reason: collision with root package name */
    int f24393i;

    /* renamed from: j  reason: collision with root package name */
    int f24394j;

    /* renamed from: k  reason: collision with root package name */
    int f24395k;

    /* renamed from: l  reason: collision with root package name */
    int f24396l;

    /* renamed from: m  reason: collision with root package name */
    int f24397m;

    /* renamed from: n  reason: collision with root package name */
    int f24398n;

    /* renamed from: o  reason: collision with root package name */
    float f24399o;

    /* renamed from: p  reason: collision with root package name */
    boolean f24400p;

    /* renamed from: q  reason: collision with root package name */
    int f24401q;

    /* renamed from: r  reason: collision with root package name */
    int f24402r;

    /* renamed from: s  reason: collision with root package name */
    int f24403s;

    /* renamed from: t  reason: collision with root package name */
    int f24404t;

    /* renamed from: u  reason: collision with root package name */
    int f24405u;

    /* renamed from: v  reason: collision with root package name */
    int f24406v;

    /* renamed from: w  reason: collision with root package name */
    int f24407w;

    /* renamed from: x  reason: collision with root package name */
    HashMap<Integer, a> f24408x;

    /* renamed from: y  reason: collision with root package name */
    int f24409y;

    /* renamed from: z  reason: collision with root package name */
    int f24410z;

    /* loaded from: classes3.dex */
    public enum ACTION {
        CLICK,
        FLING,
        DRAG
    }

    public LoopView(Context context) {
        super(context);
        this.f24385a = 0;
        this.f24386b = 1;
        this.f24390f = Executors.newSingleThreadScheduledExecutor();
        this.C = 0L;
        this.D = 1.05f;
        this.K = 0;
        this.M = new Rect();
        this.P = Typeface.MONOSPACE;
        g(context, null);
    }

    private void b(int i9) {
        if (i9 == this.f24386b || this.f24387c.hasMessages(2001)) {
            return;
        }
        this.f24385a = this.f24386b;
        this.f24386b = i9;
    }

    private void d(Canvas canvas, int i9) {
        canvas.drawText(this.f24408x.get(Integer.valueOf(i9)).f24411a, f(this.f24408x.get(Integer.valueOf(i9)).f24411a, this.H, this.M), getDrawingY(), this.I);
    }

    private void e(Canvas canvas, int i9) {
        canvas.drawText(this.f24408x.get(Integer.valueOf(i9)).f24411a, f(this.f24408x.get(Integer.valueOf(i9)).f24411a, this.H, this.M), getDrawingY(), this.H);
    }

    private int f(String str, Paint paint, Rect rect) {
        paint.getTextBounds(str, 0, str.length(), rect);
        int i9 = this.f24410z;
        int i10 = this.N;
        return (((i9 - i10) - ((int) (rect.width() * this.D))) / 2) + i10;
    }

    private void g(Context context, AttributeSet attributeSet) {
        this.E = context;
        this.f24387c = new c(this);
        GestureDetector gestureDetector = new GestureDetector(context, new b(this));
        this.F = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LoopView);
        if (obtainStyledAttributes != null) {
            this.f24392h = obtainStyledAttributes.getInteger(10, R);
            this.f24392h = (int) (Resources.getSystem().getDisplayMetrics().density * this.f24392h);
            this.f24399o = obtainStyledAttributes.getFloat(6, 1.0f);
            this.f24397m = obtainStyledAttributes.getInteger(0, -13553359);
            this.f24396l = obtainStyledAttributes.getInteger(7, -5263441);
            this.f24398n = obtainStyledAttributes.getInteger(2, -3815995);
            this.Q = obtainStyledAttributes.getBoolean(9, false);
            this.f24393i = obtainStyledAttributes.getInteger(1, f24384a1);
            int integer = obtainStyledAttributes.getInteger(5, 9);
            this.f24407w = integer;
            if (integer % 2 == 0) {
                this.f24407w = 9;
            }
            this.f24400p = obtainStyledAttributes.getBoolean(4, true);
            obtainStyledAttributes.recycle();
        }
        this.f24408x = new HashMap<>();
        this.f24403s = 0;
        this.f24404t = -1;
    }

    private int getDrawingY() {
        int i9 = this.f24394j;
        int i10 = this.f24395k;
        return i9 > i10 ? i9 - ((i9 - i10) / 2) : i9;
    }

    private void h() {
        if (this.H == null) {
            Paint paint = new Paint();
            this.H = paint;
            paint.setColor(this.f24396l);
            this.H.setAntiAlias(true);
            this.H.setTypeface(this.P);
            this.H.setTextSize(this.f24392h);
        }
        if (this.I == null) {
            Paint paint2 = new Paint();
            this.I = paint2;
            paint2.setColor(this.f24397m);
            this.I.setAntiAlias(true);
            this.I.setTextScaleX(this.D);
            this.I.setTypeface(this.P);
            this.I.setTextSize(this.f24393i);
        }
        if (this.J == null) {
            Paint paint3 = new Paint();
            this.J = paint3;
            paint3.setColor(this.f24398n);
            this.J.setAntiAlias(true);
        }
    }

    private void j() {
        List<a> list = this.f24391g;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f24410z = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.f24409y = measuredHeight;
        if (this.f24410z == 0 || measuredHeight == 0) {
            return;
        }
        this.N = getPaddingLeft();
        int paddingRight = getPaddingRight();
        this.O = paddingRight;
        this.f24410z -= paddingRight;
        this.I.getTextBounds("星期", 0, 2, this.M);
        this.f24395k = this.M.height();
        int i9 = this.f24409y;
        int i10 = (int) ((i9 * 3.141592653589793d) / 2.0d);
        this.A = i10;
        float f10 = this.f24399o;
        int i11 = (int) (i10 / ((this.f24407w - 1) * f10));
        this.f24394j = i11;
        this.B = i9 / 2;
        this.f24401q = (int) ((i9 - (i11 * f10)) / 2.0f);
        this.f24402r = (int) ((i9 + (f10 * i11)) / 2.0f);
        if (this.f24404t == -1) {
            if (this.f24400p) {
                this.f24404t = (this.f24391g.size() + 1) / 2;
            } else {
                this.f24404t = 0;
            }
        }
        this.f24405u = this.f24404t;
    }

    public void a() {
        ScheduledFuture<?> scheduledFuture = this.G;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.G.cancel(true);
        this.G = null;
        b(0);
    }

    public List<a> c(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            arrayList.add(new a(i9, list.get(i9)));
        }
        return arrayList;
    }

    public final int getSelectedItem() {
        return this.f24405u;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i() {
        if (this.f24388d != null) {
            postDelayed(new d(this), 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void k(float f10) {
        a();
        this.G = this.f24390f.scheduleWithFixedDelay(new com.guochao.faceshow.aaspring.views.loopView.a(this, f10), 0L, 10, TimeUnit.MILLISECONDS);
        b(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(ACTION action) {
        a();
        if (action == ACTION.FLING || action == ACTION.DRAG) {
            float f10 = this.f24399o * this.f24394j;
            int i9 = (int) (((this.f24403s % f10) + f10) % f10);
            this.K = i9;
            if (i9 > f10 / 2.0f) {
                this.K = (int) (f10 - i9);
            } else {
                this.K = -i9;
            }
        }
        this.G = this.f24390f.scheduleWithFixedDelay(new e(this, this.K), 0L, 10L, TimeUnit.MILLISECONDS);
        b(3);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        na.a aVar;
        super.onDraw(canvas);
        List<a> list = this.f24391g;
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = (int) (this.f24403s / (this.f24399o * this.f24394j));
        this.f24406v = i9;
        int size = this.f24404t + (i9 % this.f24391g.size());
        this.f24405u = size;
        if (!this.f24400p) {
            if (size < 0) {
                this.f24405u = 0;
            }
            if (this.f24405u > this.f24391g.size() - 1) {
                this.f24405u = this.f24391g.size() - 1;
            }
        } else {
            if (size < 0) {
                this.f24405u = this.f24391g.size() + this.f24405u;
            }
            if (this.f24405u > this.f24391g.size() - 1) {
                this.f24405u -= this.f24391g.size();
            }
        }
        int i10 = (int) (this.f24403s % (this.f24399o * this.f24394j));
        int i11 = 0;
        while (true) {
            int i12 = this.f24407w;
            if (i11 >= i12) {
                break;
            }
            int i13 = this.f24405u - ((i12 / 2) - i11);
            if (this.f24400p) {
                while (i13 < 0) {
                    i13 += this.f24391g.size();
                }
                while (i13 > this.f24391g.size() - 1) {
                    i13 -= this.f24391g.size();
                }
                this.f24408x.put(Integer.valueOf(i11), this.f24391g.get(i13));
            } else if (i13 < 0) {
                this.f24408x.put(Integer.valueOf(i11), new a());
            } else if (i13 > this.f24391g.size() - 1) {
                this.f24408x.put(Integer.valueOf(i11), new a());
            } else {
                this.f24408x.put(Integer.valueOf(i11), this.f24391g.get(i13));
            }
            i11++;
        }
        if (this.Q) {
            canvas.drawRect(new RectF(this.N, this.f24401q, this.f24410z, this.f24402r), this.J);
        } else {
            float f10 = this.N;
            int i14 = this.f24401q;
            canvas.drawLine(f10, i14, this.f24410z, i14, this.J);
            float f11 = this.N;
            int i15 = this.f24402r;
            canvas.drawLine(f11, i15, this.f24410z, i15, this.J);
        }
        for (int i16 = 0; i16 < this.f24407w; i16++) {
            canvas.save();
            float f12 = this.f24394j * this.f24399o;
            double d10 = (((i16 * f12) - i10) * 3.141592653589793d) / this.A;
            if (d10 < 3.141592653589793d && d10 > 0.0d) {
                int cos = (int) ((this.B - (Math.cos(d10) * this.B)) - ((Math.sin(d10) * this.f24394j) / 2.0d));
                canvas.translate(0.0f, cos);
                canvas.scale(1.0f, (float) Math.sin(d10));
                int i17 = this.f24401q;
                if (cos <= i17 && this.f24394j + cos >= i17) {
                    canvas.save();
                    canvas.clipRect(0, 0, this.f24410z, this.f24401q - cos);
                    e(canvas, i16);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0, this.f24401q - cos, this.f24410z, (int) f12);
                    d(canvas, i16);
                    canvas.restore();
                } else {
                    int i18 = this.f24402r;
                    if (cos <= i18 && this.f24394j + cos >= i18) {
                        canvas.save();
                        canvas.clipRect(0, 0, this.f24410z, this.f24402r - cos);
                        d(canvas, i16);
                        canvas.restore();
                        canvas.save();
                        canvas.clipRect(0, this.f24402r - cos, this.f24410z, (int) f12);
                        e(canvas, i16);
                        canvas.restore();
                    } else if (cos >= i17 && this.f24394j + cos <= i18) {
                        canvas.clipRect(0, 0, this.f24410z, (int) f12);
                        d(canvas, i16);
                    } else {
                        canvas.clipRect(0, 0, this.f24410z, (int) f12);
                        e(canvas, i16);
                    }
                }
                canvas.restore();
            } else {
                canvas.restore();
            }
        }
        int i19 = this.f24386b;
        int i20 = this.f24385a;
        if (i19 != i20) {
            this.f24385a = i19;
            na.a aVar2 = this.f24389e;
            if (aVar2 != null) {
                aVar2.a(this, getSelectedItem(), i20, this.f24386b, this.f24403s);
            }
        }
        int i21 = this.f24386b;
        if ((i21 == 2 || i21 == 3) && (aVar = this.f24389e) != null) {
            aVar.b(this, getSelectedItem(), this.f24386b, this.f24403s);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        h();
        j();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = this.F.onTouchEvent(motionEvent);
        float f10 = this.f24399o * this.f24394j;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.C = System.currentTimeMillis();
            a();
            this.L = motionEvent.getRawY();
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (action != 2) {
            if (!onTouchEvent) {
                float y10 = motionEvent.getY();
                int i9 = this.B;
                this.K = (int) (((((int) (((Math.acos((i9 - y10) / i9) * this.B) + (f10 / 2.0f)) / f10)) - (this.f24407w / 2)) * f10) - (((this.f24403s % f10) + f10) % f10));
                if (System.currentTimeMillis() - this.C > 120) {
                    l(ACTION.DRAG);
                } else {
                    l(ACTION.CLICK);
                }
            }
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else {
            this.L = motionEvent.getRawY();
            this.f24403s = (int) (this.f24403s + (this.L - motionEvent.getRawY()));
            if (!this.f24400p) {
                float f11 = (-this.f24404t) * f10;
                float size = ((this.f24391g.size() - 1) - this.f24404t) * f10;
                int i10 = this.f24403s;
                if (i10 < f11) {
                    this.f24403s = (int) f11;
                } else if (i10 > size) {
                    this.f24403s = (int) size;
                }
            }
            b(2);
        }
        invalidate();
        return true;
    }

    public void setCenterTextColor(int i9) {
        this.f24397m = i9;
        Paint paint = this.I;
        if (paint != null) {
            paint.setColor(i9);
        }
    }

    public void setCenterTextSizeTextSize(int i9) {
        this.f24393i = i9;
        Paint paint = this.I;
        if (paint != null) {
            paint.setTextSize(i9);
        }
    }

    public void setCurrentPosition(int i9) {
        List<a> list = this.f24391g;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f24391g.size();
        if (i9 < 0 || i9 >= size) {
            return;
        }
        this.f24404t = i9;
        this.f24403s = 0;
        this.K = 0;
        b(1);
        invalidate();
    }

    public void setDividerColor(int i9) {
        this.f24398n = i9;
        Paint paint = this.J;
        if (paint != null) {
            paint.setColor(i9);
        }
    }

    public final void setInitPosition(int i9) {
        if (i9 < 0) {
            this.f24404t = 0;
            return;
        }
        List<a> list = this.f24391g;
        if (list == null || list.size() <= i9) {
            return;
        }
        this.f24404t = i9;
    }

    public final void setItems(List<String> list) {
        this.f24391g = c(list);
        j();
        invalidate();
    }

    public void setItemsVisibleCount(int i9) {
        if (i9 % 2 == 0 || i9 == this.f24407w) {
            return;
        }
        this.f24407w = i9;
        this.f24408x = new HashMap<>();
    }

    public void setLineSpacingMultiplier(float f10) {
        if (f10 > 1.0f) {
            this.f24399o = f10;
        }
    }

    public final void setListener(na.b bVar) {
        this.f24388d = bVar;
    }

    public final void setOnItemScrollListener(na.a aVar) {
        this.f24389e = aVar;
    }

    public void setOuterTextColor(int i9) {
        this.f24396l = i9;
        Paint paint = this.H;
        if (paint != null) {
            paint.setColor(i9);
        }
    }

    @Override // android.view.View
    public void setScaleX(float f10) {
        this.D = f10;
    }

    public final void setTextSize(float f10) {
        if (f10 > 0.0f) {
            int i9 = (int) (this.E.getResources().getDisplayMetrics().density * f10);
            this.f24392h = i9;
            Paint paint = this.H;
            if (paint != null) {
                paint.setTextSize(i9);
            }
            Paint paint2 = this.I;
            if (paint2 != null) {
                paint2.setTextSize(this.f24393i);
            }
        }
    }

    public void setTypeface(Typeface typeface) {
        this.P = typeface;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        private String f24411a;

        /* renamed from: b  reason: collision with root package name */
        private int f24412b;

        public a() {
            this.f24411a = "";
        }

        public a(int i9, String str) {
            this.f24412b = i9;
            this.f24411a = str;
        }
    }

    public LoopView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24385a = 0;
        this.f24386b = 1;
        this.f24390f = Executors.newSingleThreadScheduledExecutor();
        this.C = 0L;
        this.D = 1.05f;
        this.K = 0;
        this.M = new Rect();
        this.P = Typeface.MONOSPACE;
        g(context, attributeSet);
    }

    public LoopView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24385a = 0;
        this.f24386b = 1;
        this.f24390f = Executors.newSingleThreadScheduledExecutor();
        this.C = 0L;
        this.D = 1.05f;
        this.K = 0;
        this.M = new Rect();
        this.P = Typeface.MONOSPACE;
        g(context, attributeSet);
    }
}
