package com.youth.banner.transformer;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.View;
/* loaded from: classes5.dex */
public class TabletTransformer extends ABaseTransformer {
    private static final Matrix OFFSET_MATRIX = new Matrix();
    private static final Camera OFFSET_CAMERA = new Camera();
    private static final float[] OFFSET_TEMP_FLOAT = new float[2];

    protected static final float getOffsetXForRotation(float f10, int i9, int i10) {
        Matrix matrix = OFFSET_MATRIX;
        matrix.reset();
        Camera camera = OFFSET_CAMERA;
        camera.save();
        camera.rotateY(Math.abs(f10));
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate((-i9) * 0.5f, (-i10) * 0.5f);
        float f11 = i9;
        float f12 = i10;
        matrix.postTranslate(f11 * 0.5f, 0.5f * f12);
        float[] fArr = OFFSET_TEMP_FLOAT;
        fArr[0] = f11;
        fArr[1] = f12;
        matrix.mapPoints(fArr);
        return (f11 - fArr[0]) * (f10 > 0.0f ? 1.0f : -1.0f);
    }

    @Override // com.youth.banner.transformer.ABaseTransformer
    protected void onTransform(View view, float f10) {
        float abs = (f10 < 0.0f ? 30.0f : -30.0f) * Math.abs(f10);
        view.setTranslationX(getOffsetXForRotation(abs, view.getWidth(), view.getHeight()));
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(0.0f);
        view.setRotationY(abs);
    }
}
