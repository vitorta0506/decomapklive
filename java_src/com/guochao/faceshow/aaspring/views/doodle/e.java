package com.guochao.faceshow.aaspring.views.doodle;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import com.guochao.faceshow.aaspring.views.doodle.DoodleColor;
import java.util.HashMap;
import java.util.WeakHashMap;
/* loaded from: classes3.dex */
public class e extends f {
    private static WeakHashMap<la.a, HashMap<Integer, Bitmap>> Q = new WeakHashMap<>();
    private final Path E;
    private final Path F;
    private final Matrix G;
    private PointF H;
    private PointF I;
    private Paint J;
    private a K;
    private Rect L;
    private Matrix M;
    private RectF N;
    private Path O;
    private int P;

    public e(la.a aVar) {
        super(aVar, 0, 0.0f, 0.0f);
        this.E = new Path();
        this.F = new Path();
        this.G = new Matrix();
        this.H = new PointF();
        this.I = new PointF();
        this.J = new Paint();
        this.L = new Rect();
        this.M = new Matrix();
        this.N = new RectF();
    }

    private void M() {
        if (getPen() == DoodlePen.MOSAIC && (getColor() instanceof DoodleColor)) {
            DoodleColor doodleColor = (DoodleColor) getColor();
            Matrix c10 = doodleColor.c();
            c10.reset();
            c10.preScale(1.0f / f(), 1.0f / f(), g(), h());
            c10.preTranslate((-r().x) * f(), (-r().y) * f());
            c10.preRotate(-m(), g(), h());
            c10.preScale(doodleColor.b(), doodleColor.b());
            doodleColor.f(c10);
            w();
        }
    }

    private void N(boolean z10) {
        float f10;
        R(this.L);
        this.E.reset();
        this.E.addPath(this.F);
        this.G.reset();
        Matrix matrix = this.G;
        Rect rect = this.L;
        matrix.setTranslate(-rect.left, -rect.top);
        this.E.transform(this.G);
        if (z10) {
            Rect rect2 = this.L;
            B(rect2.left + (rect2.width() / 2));
            Rect rect3 = this.L;
            C(rect3.top + (rect3.height() / 2));
            Rect rect4 = this.L;
            y(rect4.left, rect4.top, false);
        }
        if (getColor() instanceof DoodleColor) {
            DoodleColor doodleColor = (DoodleColor) getColor();
            if (doodleColor.d() == DoodleColor.Type.BITMAP && doodleColor.a() != null) {
                this.M.reset();
                if (getPen() == DoodlePen.MOSAIC) {
                    M();
                } else {
                    if (getPen() == DoodlePen.COPY) {
                        a O = O();
                        float f11 = 0.0f;
                        if (O != null) {
                            f11 = O.f() - O.d();
                            f10 = O.g() - O.e();
                        } else {
                            f10 = 0.0f;
                        }
                        R(this.L);
                        Matrix matrix2 = this.M;
                        Rect rect5 = this.L;
                        matrix2.setTranslate(f11 - rect5.left, f10 - rect5.top);
                    } else {
                        Matrix matrix3 = this.M;
                        Rect rect6 = this.L;
                        matrix3.setTranslate(-rect6.left, -rect6.top);
                    }
                    float b10 = doodleColor.b();
                    this.M.preScale(b10, b10);
                    doodleColor.f(this.M);
                    w();
                }
            }
        }
        w();
    }

    public static DoodleColor P(la.a aVar, int i9) {
        HashMap<Integer, Bitmap> hashMap = Q.get(aVar);
        if (hashMap == null) {
            hashMap = new HashMap<>();
            Q.put(aVar, hashMap);
        }
        Matrix matrix = new Matrix();
        float f10 = i9;
        float f11 = 1.0f / f10;
        matrix.setScale(f11, f11);
        Bitmap bitmap = hashMap.get(Integer.valueOf(i9));
        if (bitmap == null) {
            bitmap = Bitmap.createBitmap(aVar.getBitmap(), 0, 0, aVar.getBitmap().getWidth(), aVar.getBitmap().getHeight(), matrix, true);
            hashMap.put(Integer.valueOf(i9), bitmap);
        }
        matrix.reset();
        matrix.setScale(f10, f10);
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        DoodleColor doodleColor = new DoodleColor(bitmap, matrix, tileMode, tileMode);
        doodleColor.e(i9);
        return doodleColor;
    }

    private void R(Rect rect) {
        if (this.F == null) {
            return;
        }
        int v10 = (int) ((v() / 2.0f) + 0.5f);
        this.F.computeBounds(this.N, false);
        if (getShape() == DoodleShape.ARROW || getShape() == DoodleShape.FILL_CIRCLE || getShape() == DoodleShape.FILL_RECT) {
            v10 = (int) k().getUnitSize();
        }
        RectF rectF = this.N;
        float f10 = v10;
        rect.set((int) (rectF.left - f10), (int) (rectF.top - f10), (int) (rectF.right + f10), (int) (rectF.bottom + f10));
    }

    public static e S(la.a aVar, Path path) {
        e eVar = new e(aVar);
        eVar.A(aVar.getPen().copy());
        eVar.D(aVar.getShape().copy());
        eVar.setSize(aVar.getSize());
        eVar.setColor(aVar.getColor().copy());
        eVar.X(path);
        if (aVar instanceof DoodleView) {
            eVar.K = DoodlePen.COPY.getCopyLocation().b();
        } else {
            eVar.K = null;
        }
        return eVar;
    }

    public static e T(la.a aVar, float f10, float f11, float f12, float f13) {
        e eVar = new e(aVar);
        eVar.A(aVar.getPen().copy());
        eVar.D(aVar.getShape().copy());
        eVar.setSize(aVar.getSize());
        eVar.setColor(aVar.getColor().copy());
        eVar.Z(f10, f11, f12, f13);
        la.e pen = eVar.getPen();
        DoodlePen doodlePen = DoodlePen.COPY;
        if (pen == doodlePen && (aVar instanceof DoodleView)) {
            eVar.K = doodlePen.getCopyLocation().b();
        }
        return eVar;
    }

    private void U(Path path, float f10, float f11, float f12, float f13, float f14) {
        double d10 = f14;
        double d11 = f14 / 2.0f;
        double d12 = d11 / 2.0d;
        double atan = Math.atan(d12 / d10);
        double d13 = d10 * d10;
        double sqrt = Math.sqrt(((d12 * d11) / 2.0d) + d13) - 5.0d;
        float f15 = f12 - f10;
        float f16 = f13 - f11;
        double[] e10 = ma.a.e(f15, f16, atan, true, sqrt);
        double[] e11 = ma.a.e(f15, f16, -atan, true, sqrt);
        double d14 = f12;
        double d15 = f13;
        path.moveTo(f10, f11);
        path.lineTo((float) (d14 - e10[0]), (float) (d15 - e10[1]));
        path.lineTo((float) (d14 - e11[0]), (float) (d15 - e11[1]));
        path.close();
        double atan2 = Math.atan(d11 / d10);
        double sqrt2 = Math.sqrt((d11 * d11) + d13);
        double[] e12 = ma.a.e(f15, f16, atan2, true, sqrt2);
        double[] e13 = ma.a.e(f15, f16, -atan2, true, sqrt2);
        float f17 = (float) (d14 - e12[0]);
        float f18 = (float) (d15 - e12[1]);
        float f19 = (float) (d14 - e13[0]);
        float f20 = (float) (d15 - e13[1]);
        if (this.O == null) {
            this.O = new Path();
        }
        this.O.reset();
        this.O.moveTo(f12, f13);
        this.O.lineTo(f19, f20);
        this.O.lineTo(f17, f18);
        this.O.close();
        path.addPath(this.O);
    }

    private void V(Path path, float f10, float f11, float f12, float f13, float f14) {
        float f15 = f10 - f12;
        float f16 = f11 - f13;
        path.addCircle(f10, f11, (float) Math.sqrt((f15 * f15) + (f16 * f16)), Path.Direction.CCW);
    }

    private void W(Path path, float f10, float f11, float f12, float f13, float f14) {
        path.moveTo(f10, f11);
        path.lineTo(f12, f13);
    }

    private void Y(Path path, float f10, float f11, float f12, float f13, float f14) {
        if (f10 < f12) {
            if (f11 < f13) {
                path.addRect(f10, f11, f12, f13, Path.Direction.CCW);
            } else {
                path.addRect(f10, f13, f12, f11, Path.Direction.CCW);
            }
        } else if (f11 < f13) {
            path.addRect(f12, f11, f10, f13, Path.Direction.CCW);
        } else {
            path.addRect(f12, f13, f10, f11, Path.Direction.CCW);
        }
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.g
    protected void G(Rect rect) {
        R(rect);
        rect.set(0, 0, rect.width(), rect.height());
    }

    public a O() {
        return this.K;
    }

    public Path Q() {
        return this.E;
    }

    public void X(Path path) {
        this.F.reset();
        this.F.addPath(path);
        N(true);
    }

    public void Z(float f10, float f11, float f12, float f13) {
        this.H.set(f10, f11);
        this.I.set(f12, f13);
        this.F.reset();
        if (DoodleShape.ARROW.equals(getShape())) {
            Path path = this.F;
            PointF pointF = this.H;
            float f14 = pointF.x;
            float f15 = pointF.y;
            PointF pointF2 = this.I;
            U(path, f14, f15, pointF2.x, pointF2.y, v());
        } else if (DoodleShape.LINE.equals(getShape())) {
            Path path2 = this.F;
            PointF pointF3 = this.H;
            float f16 = pointF3.x;
            float f17 = pointF3.y;
            PointF pointF4 = this.I;
            W(path2, f16, f17, pointF4.x, pointF4.y, v());
        } else if (!DoodleShape.FILL_CIRCLE.equals(getShape()) && !DoodleShape.HOLLOW_CIRCLE.equals(getShape())) {
            if (DoodleShape.FILL_RECT.equals(getShape()) || DoodleShape.HOLLOW_RECT.equals(getShape())) {
                Path path3 = this.F;
                PointF pointF5 = this.H;
                float f18 = pointF5.x;
                float f19 = pointF5.y;
                PointF pointF6 = this.I;
                Y(path3, f18, f19, pointF6.x, pointF6.y, v());
            }
        } else {
            Path path4 = this.F;
            PointF pointF7 = this.H;
            float f20 = pointF7.x;
            float f21 = pointF7.y;
            PointF pointF8 = this.I;
            V(path4, f20, f21, pointF8.x, pointF8.y, v());
        }
        N(true);
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public void b(int i9) {
        this.P = i9;
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.g, com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public boolean c() {
        if (getPen() == DoodlePen.ERASER) {
            return false;
        }
        return super.c();
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public void d(float f10) {
        super.d(f10);
        M();
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public int getPosition() {
        return this.P;
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.g, com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public void i(float f10) {
        super.i(f10);
        M();
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b
    protected void s(Canvas canvas) {
        this.J.reset();
        this.J.setStrokeWidth(v());
        this.J.setStyle(Paint.Style.STROKE);
        this.J.setStrokeCap(Paint.Cap.ROUND);
        this.J.setAntiAlias(true);
        getPen().config(this, this.J);
        getColor().config(this, this.J);
        getShape().config(this, this.J);
        canvas.drawPath(Q(), this.J);
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public void setColor(la.b bVar) {
        super.setColor(bVar);
        if (getPen() == DoodlePen.MOSAIC) {
            y(r().x, r().y, false);
        }
        N(false);
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.g, com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public void setSize(float f10) {
        super.setSize(f10);
        if (this.G == null) {
            return;
        }
        if (DoodleShape.ARROW.equals(getShape())) {
            this.F.reset();
            Path path = this.F;
            PointF pointF = this.H;
            float f11 = pointF.x;
            float f12 = pointF.y;
            PointF pointF2 = this.I;
            U(path, f11, f12, pointF2.x, pointF2.y, v());
        }
        N(false);
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b
    public void y(float f10, float f11, boolean z10) {
        super.y(f10, f11, z10);
        M();
    }
}
