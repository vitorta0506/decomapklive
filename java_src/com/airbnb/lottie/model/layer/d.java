package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
/* loaded from: classes.dex */
public class d extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(com.airbnb.lottie.f fVar, Layer layer) {
        super(fVar, layer);
    }

    @Override // com.airbnb.lottie.model.layer.a, e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // com.airbnb.lottie.model.layer.a
    void t(Canvas canvas, Matrix matrix, int i9) {
    }
}
