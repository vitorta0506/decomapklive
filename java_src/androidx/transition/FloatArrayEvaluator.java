package androidx.transition;

import android.animation.TypeEvaluator;
/* loaded from: classes.dex */
class FloatArrayEvaluator implements TypeEvaluator<float[]> {
    private float[] mArray;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FloatArrayEvaluator(float[] fArr) {
        this.mArray = fArr;
    }

    @Override // android.animation.TypeEvaluator
    public float[] evaluate(float f10, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.mArray;
        if (fArr3 == null) {
            fArr3 = new float[fArr.length];
        }
        for (int i9 = 0; i9 < fArr3.length; i9++) {
            float f11 = fArr[i9];
            fArr3[i9] = f11 + ((fArr2[i9] - f11) * f10);
        }
        return fArr3;
    }
}
