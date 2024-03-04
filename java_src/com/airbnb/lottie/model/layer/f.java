package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.k;
import f.q;
/* loaded from: classes.dex */
public class f extends a {
    private final RectF B;
    private final Paint C;
    private final float[] D;
    private final Path E;
    private final Layer F;
    @Nullable
    private f.a<ColorFilter, ColorFilter> G;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(com.airbnb.lottie.f fVar, Layer layer) {
        super(fVar, layer);
        this.B = new RectF();
        d.a aVar = new d.a();
        this.C = aVar;
        this.D = new float[8];
        this.E = new Path();
        this.F = layer;
        aVar.setAlpha(0);
        aVar.setStyle(Paint.Style.FILL);
        aVar.setColor(layer.o());
    }

    @Override // com.airbnb.lottie.model.layer.a, h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        super.c(t10, cVar);
        if (t10 == k.K) {
            if (cVar == null) {
                this.G = null;
            } else {
                this.G = new q(cVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        this.B.set(0.0f, 0.0f, this.F.q(), this.F.p());
        this.f3835m.mapRect(this.B);
        rectF.set(this.B);
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void t(Canvas canvas, Matrix matrix, int i9) {
        int alpha = Color.alpha(this.F.o());
        if (alpha == 0) {
            return;
        }
        int intValue = (int) ((i9 / 255.0f) * (((alpha / 255.0f) * (this.f3844v.h() == null ? 100 : this.f3844v.h().h().intValue())) / 100.0f) * 255.0f);
        this.C.setAlpha(intValue);
        f.a<ColorFilter, ColorFilter> aVar = this.G;
        if (aVar != null) {
            this.C.setColorFilter(aVar.h());
        }
        if (intValue > 0) {
            float[] fArr = this.D;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.F.q();
            float[] fArr2 = this.D;
            fArr2[3] = 0.0f;
            fArr2[4] = this.F.q();
            this.D[5] = this.F.p();
            float[] fArr3 = this.D;
            fArr3[6] = 0.0f;
            fArr3[7] = this.F.p();
            matrix.mapPoints(this.D);
            this.E.reset();
            Path path = this.E;
            float[] fArr4 = this.D;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.E;
            float[] fArr5 = this.D;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.E;
            float[] fArr6 = this.D;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.E;
            float[] fArr7 = this.D;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.E;
            float[] fArr8 = this.D;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.E.close();
            canvas.drawPath(this.E, this.C);
        }
    }
}
