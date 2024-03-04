package e;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.model.content.GradientType;
/* loaded from: classes.dex */
public class i extends a {
    private final f.a<PointF, PointF> A;
    @Nullable
    private f.q B;

    /* renamed from: r  reason: collision with root package name */
    private final String f38237r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f38238s;

    /* renamed from: t  reason: collision with root package name */
    private final LongSparseArray<LinearGradient> f38239t;

    /* renamed from: u  reason: collision with root package name */
    private final LongSparseArray<RadialGradient> f38240u;

    /* renamed from: v  reason: collision with root package name */
    private final RectF f38241v;

    /* renamed from: w  reason: collision with root package name */
    private final GradientType f38242w;

    /* renamed from: x  reason: collision with root package name */
    private final int f38243x;

    /* renamed from: y  reason: collision with root package name */
    private final f.a<j.d, j.d> f38244y;

    /* renamed from: z  reason: collision with root package name */
    private final f.a<PointF, PointF> f38245z;

    public i(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.a aVar2) {
        super(fVar, aVar, aVar2.b().toPaintCap(), aVar2.g().toPaintJoin(), aVar2.i(), aVar2.k(), aVar2.m(), aVar2.h(), aVar2.c());
        this.f38239t = new LongSparseArray<>();
        this.f38240u = new LongSparseArray<>();
        this.f38241v = new RectF();
        this.f38237r = aVar2.j();
        this.f38242w = aVar2.f();
        this.f38238s = aVar2.n();
        this.f38243x = (int) (fVar.q().d() / 32.0f);
        f.a<j.d, j.d> a10 = aVar2.e().a();
        this.f38244y = a10;
        a10.a(this);
        aVar.i(a10);
        f.a<PointF, PointF> a11 = aVar2.l().a();
        this.f38245z = a11;
        a11.a(this);
        aVar.i(a11);
        f.a<PointF, PointF> a12 = aVar2.d().a();
        this.A = a12;
        a12.a(this);
        aVar.i(a12);
    }

    private int[] i(int[] iArr) {
        f.q qVar = this.B;
        if (qVar != null) {
            Integer[] numArr = (Integer[]) qVar.h();
            int i9 = 0;
            if (iArr.length == numArr.length) {
                while (i9 < iArr.length) {
                    iArr[i9] = numArr[i9].intValue();
                    i9++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i9 < numArr.length) {
                    iArr[i9] = numArr[i9].intValue();
                    i9++;
                }
            }
        }
        return iArr;
    }

    private int j() {
        int round = Math.round(this.f38245z.f() * this.f38243x);
        int round2 = Math.round(this.A.f() * this.f38243x);
        int round3 = Math.round(this.f38244y.f() * this.f38243x);
        int i9 = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i9 = i9 * 31 * round2;
        }
        return round3 != 0 ? i9 * 31 * round3 : i9;
    }

    private LinearGradient k() {
        long j10 = j();
        LinearGradient linearGradient = this.f38239t.get(j10);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF h10 = this.f38245z.h();
        PointF h11 = this.A.h();
        j.d h12 = this.f38244y.h();
        LinearGradient linearGradient2 = new LinearGradient(h10.x, h10.y, h11.x, h11.y, i(h12.a()), h12.b(), Shader.TileMode.CLAMP);
        this.f38239t.put(j10, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient l() {
        float f10;
        float f11;
        long j10 = j();
        RadialGradient radialGradient = this.f38240u.get(j10);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF h10 = this.f38245z.h();
        PointF h11 = this.A.h();
        j.d h12 = this.f38244y.h();
        int[] i9 = i(h12.a());
        float[] b10 = h12.b();
        RadialGradient radialGradient2 = new RadialGradient(h10.x, h10.y, (float) Math.hypot(h11.x - f10, h11.y - f11), i9, b10, Shader.TileMode.CLAMP);
        this.f38240u.put(j10, radialGradient2);
        return radialGradient2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // e.a, h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        super.c(t10, cVar);
        if (t10 == com.airbnb.lottie.k.L) {
            f.q qVar = this.B;
            if (qVar != null) {
                this.f38169f.F(qVar);
            }
            if (cVar == null) {
                this.B = null;
                return;
            }
            f.q qVar2 = new f.q(cVar);
            this.B = qVar2;
            qVar2.a(this);
            this.f38169f.i(this.B);
        }
    }

    @Override // e.a, e.e
    public void g(Canvas canvas, Matrix matrix, int i9) {
        Shader l10;
        if (this.f38238s) {
            return;
        }
        d(this.f38241v, matrix, false);
        if (this.f38242w == GradientType.LINEAR) {
            l10 = k();
        } else {
            l10 = l();
        }
        l10.setLocalMatrix(matrix);
        this.f38172i.setShader(l10);
        super.g(canvas, matrix, i9);
    }

    @Override // e.c
    public String getName() {
        return this.f38237r;
    }
}
