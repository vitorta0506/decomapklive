package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.k;
import f.q;
import m.h;
/* loaded from: classes.dex */
public class c extends a {
    private final Paint B;
    private final Rect C;
    private final Rect D;
    @Nullable
    private f.a<ColorFilter, ColorFilter> E;
    @Nullable
    private f.a<Bitmap, Bitmap> F;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(com.airbnb.lottie.f fVar, Layer layer) {
        super(fVar, layer);
        this.B = new d.a(3);
        this.C = new Rect();
        this.D = new Rect();
    }

    @Nullable
    private Bitmap N() {
        Bitmap h10;
        f.a<Bitmap, Bitmap> aVar = this.F;
        return (aVar == null || (h10 = aVar.h()) == null) ? this.f3836n.u(this.f3837o.m()) : h10;
    }

    @Override // com.airbnb.lottie.model.layer.a, h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        super.c(t10, cVar);
        if (t10 == k.K) {
            if (cVar == null) {
                this.E = null;
            } else {
                this.E = new q(cVar);
            }
        } else if (t10 == k.N) {
            if (cVar == null) {
                this.F = null;
            } else {
                this.F = new q(cVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        Bitmap N = N();
        if (N != null) {
            rectF.set(0.0f, 0.0f, N.getWidth() * h.e(), N.getHeight() * h.e());
            this.f3835m.mapRect(rectF);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void t(@NonNull Canvas canvas, Matrix matrix, int i9) {
        Bitmap N = N();
        if (N == null || N.isRecycled()) {
            return;
        }
        float e10 = h.e();
        this.B.setAlpha(i9);
        f.a<ColorFilter, ColorFilter> aVar = this.E;
        if (aVar != null) {
            this.B.setColorFilter(aVar.h());
        }
        canvas.save();
        canvas.concat(matrix);
        this.C.set(0, 0, N.getWidth(), N.getHeight());
        this.D.set(0, 0, (int) (N.getWidth() * e10), (int) (N.getHeight() * e10));
        canvas.drawBitmap(N, this.C, this.D, this.B);
        canvas.restore();
    }
}
