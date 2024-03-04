package com.guochao.faceshow.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.guochao.faceshow.R$styleable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public class TCLayerOperationView extends View {
    private Path A;
    private Paint B;
    private float B3;
    private int C;
    private float C4;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private DisplayMetrics H;
    private PointF I;
    private PointF J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private long V1;
    private float V2;
    private float V3;

    /* renamed from: a  reason: collision with root package name */
    private boolean f26777a;

    /* renamed from: a1  reason: collision with root package name */
    private long f26778a1;

    /* renamed from: a2  reason: collision with root package name */
    private a f26779a2;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f26780b;

    /* renamed from: c  reason: collision with root package name */
    private PointF f26781c;

    /* renamed from: d  reason: collision with root package name */
    private int f26782d;

    /* renamed from: e  reason: collision with root package name */
    private int f26783e;

    /* renamed from: f  reason: collision with root package name */
    private float f26784f;

    /* renamed from: g  reason: collision with root package name */
    private float f26785g;

    /* renamed from: h  reason: collision with root package name */
    private Matrix f26786h;

    /* renamed from: i  reason: collision with root package name */
    private int f26787i;

    /* renamed from: j  reason: collision with root package name */
    private int f26788j;

    /* renamed from: k  reason: collision with root package name */
    private Point f26789k;

    /* renamed from: l  reason: collision with root package name */
    private Point f26790l;

    /* renamed from: m  reason: collision with root package name */
    private Point f26791m;

    /* renamed from: n  reason: collision with root package name */
    private Point f26792n;

    /* renamed from: o  reason: collision with root package name */
    private Point f26793o;

    /* renamed from: p  reason: collision with root package name */
    private Drawable f26794p;

    /* renamed from: q  reason: collision with root package name */
    private int f26795q;

    /* renamed from: r  reason: collision with root package name */
    private int f26796r;

    /* renamed from: s  reason: collision with root package name */
    private Point f26797s;

    /* renamed from: t  reason: collision with root package name */
    private Drawable f26798t;

    /* renamed from: u  reason: collision with root package name */
    private int f26799u;

    /* renamed from: v  reason: collision with root package name */
    private int f26800v;

    /* renamed from: w  reason: collision with root package name */
    private Point f26801w;

    /* renamed from: x  reason: collision with root package name */
    private Drawable f26802x;

    /* renamed from: y  reason: collision with root package name */
    private int f26803y;

    /* renamed from: z  reason: collision with root package name */
    private int f26804z;

    /* loaded from: classes4.dex */
    public interface a {
        void E();

        void O();

        void g();
    }

    public TCLayerOperationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a() {
        PointF pointF = this.f26781c;
        if (pointF.x <= 0.0f || pointF.y <= 0.0f) {
            pointF.set(this.V3, this.C4);
        }
        int i9 = this.f26782d + this.f26803y;
        int i10 = this.f26783e + this.f26804z;
        PointF pointF2 = this.f26781c;
        int i11 = (int) (pointF2.x - (i9 / 2));
        int i12 = (int) (pointF2.y - (i10 / 2));
        if (this.f26787i != i11 || this.f26788j != i12) {
            this.f26787i = i11;
            this.f26788j = i12;
        }
        layout(i11, i12, i9 + i11, i10 + i12);
        this.P = i11 + (this.f26803y / 2);
        this.Q = i12 + (this.f26804z / 2);
        this.R = this.f26782d;
    }

    private void b(int i9, int i10, int i11, int i12, float f10) {
        Point point = new Point(i9, i10);
        Point point2 = new Point(i11, i10);
        Point point3 = new Point(i11, i12);
        Point point4 = new Point(i9, i12);
        Point point5 = new Point((i9 + i11) / 2, (i10 + i12) / 2);
        this.f26789k = k(point5, point, f10);
        this.f26790l = k(point5, point2, f10);
        this.f26791m = k(point5, point3, f10);
        this.f26792n = k(point5, point4, f10);
        int f11 = f(Integer.valueOf(this.f26789k.x), Integer.valueOf(this.f26790l.x), Integer.valueOf(this.f26791m.x), Integer.valueOf(this.f26792n.x));
        int g10 = g(Integer.valueOf(this.f26789k.x), Integer.valueOf(this.f26790l.x), Integer.valueOf(this.f26791m.x), Integer.valueOf(this.f26792n.x));
        this.f26782d = f11 - g10;
        int f12 = f(Integer.valueOf(this.f26789k.y), Integer.valueOf(this.f26790l.y), Integer.valueOf(this.f26791m.y), Integer.valueOf(this.f26792n.y));
        int g11 = g(Integer.valueOf(this.f26789k.y), Integer.valueOf(this.f26790l.y), Integer.valueOf(this.f26791m.y), Integer.valueOf(this.f26792n.y));
        this.f26783e = f12 - g11;
        Point point6 = new Point((f11 + g10) / 2, (f12 + g11) / 2);
        int i13 = (this.f26782d / 2) - point6.x;
        this.K = i13;
        int i14 = (this.f26783e / 2) - point6.y;
        this.L = i14;
        int i15 = this.f26803y / 2;
        int i16 = this.f26804z / 2;
        Point point7 = this.f26789k;
        point7.x += i13 + i15;
        Point point8 = this.f26790l;
        point8.x += i13 + i15;
        Point point9 = this.f26791m;
        point9.x += i13 + i15;
        Point point10 = this.f26792n;
        point10.x += i13 + i15;
        point7.y += i14 + i16;
        point8.y += i14 + i16;
        point9.y += i14 + i16;
        point10.y += i14 + i16;
        this.f26801w = j(this.M);
        this.f26793o = j(this.N);
        this.f26797s = j(this.O);
    }

    private double c(double d10) {
        return (d10 * 3.141592653589793d) / 180.0d;
    }

    private float d(PointF pointF, PointF pointF2) {
        float f10 = pointF2.x - pointF.x;
        float f11 = pointF2.y - pointF.y;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    private Bitmap e(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        try {
            if (drawable instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawable).getBitmap();
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth <= 0) {
                intrinsicWidth = 50;
            }
            if (intrinsicHeight <= 0) {
                intrinsicHeight = 50;
            }
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    private void h() {
        Paint paint = new Paint();
        this.B = paint;
        paint.setAntiAlias(true);
        this.B.setColor(this.E);
        this.B.setStrokeWidth(this.F);
        this.B.setStyle(Paint.Style.STROKE);
        Drawable drawable = this.f26802x;
        if (drawable != null) {
            this.f26803y = (int) (drawable.getIntrinsicWidth() * 1.5d);
            this.f26804z = (int) (this.f26802x.getIntrinsicHeight() * 1.5d);
        }
        Drawable drawable2 = this.f26794p;
        if (drawable2 != null) {
            this.f26795q = (int) (drawable2.getIntrinsicWidth() * 1.5d);
            this.f26796r = (int) (this.f26794p.getIntrinsicHeight() * 1.5d);
        }
        Drawable drawable3 = this.f26798t;
        if (drawable3 != null) {
            this.f26799u = (int) (drawable3.getIntrinsicWidth() * 1.5d);
            this.f26800v = (int) (this.f26798t.getIntrinsicHeight() * 1.5d);
        }
        o();
    }

    private int i(float f10, float f11) {
        PointF pointF = new PointF(f10, f11);
        if (d(pointF, new PointF(this.f26801w)) < Math.min(this.f26803y / 2, this.f26804z / 2)) {
            return 2;
        }
        if (d(pointF, new PointF(this.f26793o)) < Math.min(this.f26795q / 2, this.f26796r / 2)) {
            return 3;
        }
        return d(pointF, new PointF(this.f26797s)) < ((float) Math.min(this.f26799u / 2, this.f26800v / 2)) ? 4 : 1;
    }

    private Point j(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return this.f26789k;
                    }
                    return this.f26792n;
                }
                return this.f26791m;
            }
            return this.f26790l;
        }
        return this.f26789k;
    }

    private Point k(Point point, Point point2, float f10) {
        double d10;
        double asin;
        double d11;
        int i9;
        int i10;
        Point point3 = new Point();
        point3.x = point2.x - point.x;
        point3.y = point2.y - point.y;
        Point point4 = new Point();
        int i11 = point3.x;
        int i12 = point3.y;
        double sqrt = Math.sqrt((i11 * i11) + (i12 * i12));
        int i13 = point3.x;
        if (i13 == 0 && point3.y == 0) {
            return point;
        }
        if (i13 >= 0 && (i10 = point3.y) >= 0) {
            d10 = Math.asin(i10 / sqrt);
        } else {
            if (i13 < 0 && point3.y >= 0) {
                asin = Math.asin(Math.abs(i13) / sqrt);
                d11 = 1.5707963267948966d;
            } else if (i13 < 0 && (i9 = point3.y) < 0) {
                asin = Math.asin(Math.abs(i9) / sqrt);
                d11 = 3.141592653589793d;
            } else if (i13 < 0 || point3.y >= 0) {
                d10 = 0.0d;
            } else {
                asin = Math.asin(i13 / sqrt);
                d11 = 4.71238898038469d;
            }
            d10 = asin + d11;
        }
        double c10 = c(m(d10) + f10);
        point4.x = (int) Math.round(Math.cos(c10) * sqrt);
        int round = (int) Math.round(sqrt * Math.sin(c10));
        point4.y = round;
        point4.x += point.x;
        point4.y = round + point.y;
        return point4;
    }

    private void l(AttributeSet attributeSet) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.H = displayMetrics;
        this.D = (int) TypedValue.applyDimension(1, 0.0f, displayMetrics);
        this.F = (int) TypedValue.applyDimension(1, 2.0f, this.H);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.TCLayerOperationView);
        this.f26780b = e(obtainStyledAttributes.getDrawable(12));
        this.D = obtainStyledAttributes.getDimensionPixelSize(9, this.D);
        this.F = obtainStyledAttributes.getDimensionPixelSize(10, this.F);
        this.E = obtainStyledAttributes.getColor(8, -1);
        this.f26785g = obtainStyledAttributes.getFloat(11, 1.0f);
        this.f26784f = obtainStyledAttributes.getFloat(2, 0.0f);
        this.f26802x = obtainStyledAttributes.getDrawable(0);
        this.M = obtainStyledAttributes.getInt(1, 2);
        this.f26794p = obtainStyledAttributes.getDrawable(5);
        this.N = obtainStyledAttributes.getInt(6, 1);
        this.f26798t = obtainStyledAttributes.getDrawable(3);
        this.O = obtainStyledAttributes.getInt(4, 0);
        this.G = obtainStyledAttributes.getBoolean(7, true);
        obtainStyledAttributes.recycle();
    }

    private double m(double d10) {
        return (d10 * 180.0d) / 3.141592653589793d;
    }

    private void o() {
        Bitmap bitmap = this.f26780b;
        if (bitmap == null) {
            return;
        }
        int width = (int) (bitmap.getWidth() * this.f26785g);
        int height = (int) (this.f26780b.getHeight() * this.f26785g);
        int i9 = this.D;
        b(-i9, -i9, width + i9, height + i9, this.f26784f);
        Matrix matrix = this.f26786h;
        float f10 = this.f26785g;
        matrix.setScale(f10, f10);
        this.f26786h.postRotate(this.f26784f % 360.0f, width / 2, height / 2);
        this.f26786h.postTranslate(this.K + (this.f26803y / 2), this.L + (this.f26804z / 2));
        a();
    }

    public int f(Integer... numArr) {
        List asList = Arrays.asList(numArr);
        Collections.sort(asList);
        return ((Integer) asList.get(asList.size() - 1)).intValue();
    }

    public int g(Integer... numArr) {
        List asList = Arrays.asList(numArr);
        Collections.sort(asList);
        return ((Integer) asList.get(0)).intValue();
    }

    public float getCenterX() {
        return this.f26781c.x;
    }

    public float getCenterY() {
        return this.f26781c.y;
    }

    public long getEndTime() {
        return this.V1;
    }

    public Bitmap getImageBitmap() {
        return this.f26780b;
    }

    public float getImageRotate() {
        return this.f26784f;
    }

    public float getImageScale() {
        return this.f26785g;
    }

    public int getImageWidth() {
        return this.R;
    }

    public int getImageX() {
        return this.P;
    }

    public int getImageY() {
        return this.Q;
    }

    public Bitmap getRotateBitmap() {
        Bitmap bitmap = this.f26780b;
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), this.f26780b.getHeight(), this.f26786h, true);
    }

    public long getStartTime() {
        return this.f26778a1;
    }

    public void n(long j10, long j11) {
        this.f26778a1 = j10;
        this.V1 = j11;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.f26780b;
        if (bitmap == null) {
            return;
        }
        canvas.drawBitmap(bitmap, this.f26786h, this.B);
        if (this.G) {
            this.A.reset();
            Path path = this.A;
            Point point = this.f26789k;
            path.moveTo(point.x, point.y);
            Path path2 = this.A;
            Point point2 = this.f26790l;
            path2.lineTo(point2.x, point2.y);
            Path path3 = this.A;
            Point point3 = this.f26791m;
            path3.lineTo(point3.x, point3.y);
            Path path4 = this.A;
            Point point4 = this.f26792n;
            path4.lineTo(point4.x, point4.y);
            Path path5 = this.A;
            Point point5 = this.f26789k;
            path5.lineTo(point5.x, point5.y);
            Path path6 = this.A;
            Point point6 = this.f26790l;
            path6.lineTo(point6.x, point6.y);
            canvas.drawPath(this.A, this.B);
            Drawable drawable = this.f26802x;
            if (drawable != null) {
                Point point7 = this.f26801w;
                int i9 = point7.x;
                int i10 = this.f26803y;
                int i11 = point7.y;
                int i12 = this.f26804z;
                drawable.setBounds(i9 - (i10 / 2), i11 - (i12 / 2), i9 + (i10 / 2), i11 + (i12 / 2));
                this.f26802x.draw(canvas);
            }
            Drawable drawable2 = this.f26794p;
            if (drawable2 != null) {
                Point point8 = this.f26793o;
                int i13 = point8.x;
                int i14 = this.f26803y;
                int i15 = point8.y;
                int i16 = this.f26804z;
                drawable2.setBounds(i13 - (i14 / 2), i15 - (i16 / 2), i13 + (i14 / 2), i15 + (i16 / 2));
                this.f26794p.draw(canvas);
            }
            Drawable drawable3 = this.f26798t;
            if (drawable3 != null) {
                Point point9 = this.f26797s;
                int i17 = point9.x;
                int i18 = this.f26803y;
                int i19 = point9.y;
                int i20 = this.f26804z;
                drawable3.setBounds(i17 - (i18 / 2), i19 - (i20 / 2), i17 + (i18 / 2), i19 + (i20 / 2));
                this.f26798t.draw(canvas);
            }
        }
        a();
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        if (this.f26777a) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            this.f26781c.set(viewGroup.getWidth() / 2, viewGroup.getHeight() / 2);
        }
        this.f26777a = true;
        a();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.G) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.I.set(motionEvent.getX() + this.f26787i, motionEvent.getY() + this.f26788j);
            int i9 = i(motionEvent.getX(), motionEvent.getY());
            this.C = i9;
            if (i9 == 1) {
                this.V2 = motionEvent.getX();
                this.B3 = motionEvent.getY();
            }
        } else if (action == 1) {
            if (this.f26779a2 != null) {
                int i10 = i(motionEvent.getX(), motionEvent.getY());
                int i11 = this.C;
                if (i11 == 3 && i10 == i11) {
                    this.f26779a2.E();
                }
                int i12 = this.C;
                if (i12 == 4 && i10 == i12) {
                    this.f26779a2.g();
                }
                int i13 = this.C;
                if (i13 == 2 || i13 == 1) {
                    this.f26779a2.O();
                }
            }
            if (this.C == 1 && this.V2 == motionEvent.getX() && this.B3 == motionEvent.getY()) {
                performClick();
            }
            this.C = 0;
        } else if (action == 2) {
            this.J.set(motionEvent.getX() + this.f26787i, motionEvent.getY() + this.f26788j);
            int i14 = this.C;
            if (i14 == 2) {
                int width = this.f26780b.getWidth() / 2;
                int height = this.f26780b.getHeight() / 2;
                float d10 = d(this.f26781c, this.J) / ((float) Math.sqrt((width * width) + (height * height)));
                if (d10 <= 0.3f) {
                    d10 = 0.3f;
                } else if (d10 >= 4.0f) {
                    d10 = 4.0f;
                }
                double d11 = d(this.f26781c, this.I);
                double d12 = d(this.I, this.J);
                double d13 = d(this.f26781c, this.J);
                double d14 = (((d11 * d11) + (d13 * d13)) - (d12 * d12)) / ((d11 * 2.0d) * d13);
                if (d14 >= 1.0d) {
                    d14 = 1.0d;
                }
                float m10 = (float) m(Math.acos(d14));
                PointF pointF = this.I;
                float f10 = pointF.x;
                PointF pointF2 = this.f26781c;
                PointF pointF3 = new PointF(f10 - pointF2.x, pointF.y - pointF2.y);
                PointF pointF4 = this.J;
                float f11 = pointF4.x;
                PointF pointF5 = this.f26781c;
                PointF pointF6 = new PointF(f11 - pointF5.x, pointF4.y - pointF5.y);
                if ((pointF3.x * pointF6.y) - (pointF3.y * pointF6.x) < 0.0f) {
                    m10 = -m10;
                }
                this.f26784f += m10;
                this.f26785g = d10;
                o();
            } else if (i14 == 1) {
                PointF pointF7 = this.f26781c;
                float f12 = pointF7.x;
                PointF pointF8 = this.J;
                float f13 = pointF8.x;
                PointF pointF9 = this.I;
                pointF7.x = f12 + (f13 - pointF9.x);
                pointF7.y += pointF8.y - pointF9.y;
                a();
            }
            this.I.set(this.J);
        }
        return true;
    }

    public void setCenterX(float f10) {
        this.V3 = f10;
    }

    public void setCenterY(float f10) {
        this.C4 = f10;
    }

    public void setEditable(boolean z10) {
        this.G = z10;
        invalidate();
    }

    public void setIOperationViewClickListener(a aVar) {
        this.f26779a2 = aVar;
    }

    public void setImageBitamp(Bitmap bitmap) {
        Bitmap bitmap2 = this.f26780b;
        if (bitmap2 != null && bitmap != null && !bitmap2.equals(bitmap)) {
            this.f26780b.recycle();
        }
        this.f26780b = bitmap;
        o();
    }

    public void setImageDrawable(Drawable drawable) {
        this.f26780b = e(drawable);
        o();
    }

    public void setImageResource(int i9) {
        setImageDrawable(getContext().getResources().getDrawable(i9));
    }

    public void setImageRotate(float f10) {
        if (this.f26784f != f10) {
            this.f26784f = f10;
            o();
        }
    }

    public void setImageScale(float f10) {
        if (this.f26785g != f10) {
            this.f26785g = f10;
            o();
        }
    }

    public void setParentHeight(int i9) {
        this.C4 = i9 / 2;
    }

    public void setParentWidth(int i9) {
        this.V3 = i9 / 2;
    }

    public TCLayerOperationView(Context context) {
        this(context, null);
    }

    public TCLayerOperationView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26781c = new PointF();
        this.f26784f = 0.0f;
        this.f26785g = 1.0f;
        this.f26786h = new Matrix();
        this.f26793o = new Point();
        this.f26797s = new Point();
        this.f26801w = new Point();
        this.A = new Path();
        this.C = 0;
        this.D = 0;
        this.E = -1;
        this.F = 2;
        this.G = true;
        this.I = new PointF();
        this.J = new PointF();
        this.M = 2;
        this.N = 1;
        this.O = 0;
        this.f26779a2 = null;
        l(attributeSet);
        h();
    }
}
