package td;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.util.Random;
/* loaded from: classes4.dex */
public class a extends Animation {

    /* renamed from: a  reason: collision with root package name */
    public PointF f58123a;

    /* renamed from: b  reason: collision with root package name */
    public float f58124b;

    /* renamed from: c  reason: collision with root package name */
    public int f58125c;

    /* renamed from: d  reason: collision with root package name */
    protected final Paint f58126d;

    /* renamed from: e  reason: collision with root package name */
    protected float f58127e;

    /* renamed from: f  reason: collision with root package name */
    protected float f58128f;

    /* renamed from: g  reason: collision with root package name */
    protected PointF f58129g;

    /* renamed from: h  reason: collision with root package name */
    protected PointF f58130h;

    public a(int i9, PointF pointF, PointF pointF2, int i10, int i11) {
        Paint paint = new Paint();
        this.f58126d = paint;
        this.f58127e = 1.0f;
        this.f58128f = 0.4f;
        this.f58125c = i9;
        this.f58123a = new PointF((pointF.x + pointF2.x) / 2.0f, (pointF.y + pointF2.y) / 2.0f);
        float f10 = pointF.x;
        PointF pointF3 = this.f58123a;
        this.f58129g = new PointF(f10 - pointF3.x, pointF.y - pointF3.y);
        float f11 = pointF2.x;
        PointF pointF4 = this.f58123a;
        this.f58130h = new PointF(f11 - pointF4.x, pointF2.y - pointF4.y);
        e(i10);
        f(i11);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
    }

    public void a(Canvas canvas) {
        PointF pointF = this.f58129g;
        float f10 = pointF.x;
        float f11 = pointF.y;
        PointF pointF2 = this.f58130h;
        canvas.drawLine(f10, f11, pointF2.x, pointF2.y, this.f58126d);
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f10, Transformation transformation) {
        float f11 = this.f58127e;
        d(f11 + ((this.f58128f - f11) * f10));
    }

    public void b(int i9) {
        this.f58124b = (-new Random().nextInt(i9)) + i9;
    }

    public void d(float f10) {
        this.f58126d.setAlpha((int) (f10 * 255.0f));
    }

    public void e(int i9) {
        this.f58126d.setColor(i9);
    }

    public void f(int i9) {
        this.f58126d.setStrokeWidth(i9);
    }

    public void g(float f10, float f11) {
        this.f58127e = f10;
        this.f58128f = f11;
        super.start();
    }
}
