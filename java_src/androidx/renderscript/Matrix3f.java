package androidx.renderscript;
/* loaded from: classes.dex */
public class Matrix3f {
    final float[] mMat;

    public Matrix3f() {
        this.mMat = new float[9];
        loadIdentity();
    }

    public float get(int i9, int i10) {
        return this.mMat[(i9 * 3) + i10];
    }

    public float[] getArray() {
        return this.mMat;
    }

    public void load(Matrix3f matrix3f) {
        float[] array = matrix3f.getArray();
        float[] fArr = this.mMat;
        System.arraycopy(array, 0, fArr, 0, fArr.length);
    }

    public void loadIdentity() {
        float[] fArr = this.mMat;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 1.0f;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    public void loadMultiply(Matrix3f matrix3f, Matrix3f matrix3f2) {
        for (int i9 = 0; i9 < 3; i9++) {
            float f10 = 0.0f;
            float f11 = 0.0f;
            float f12 = 0.0f;
            for (int i10 = 0; i10 < 3; i10++) {
                float f13 = matrix3f2.get(i9, i10);
                f10 += matrix3f.get(i10, 0) * f13;
                f11 += matrix3f.get(i10, 1) * f13;
                f12 += matrix3f.get(i10, 2) * f13;
            }
            set(i9, 0, f10);
            set(i9, 1, f11);
            set(i9, 2, f12);
        }
    }

    public void loadRotate(float f10, float f11, float f12, float f13) {
        double d10 = f10 * 0.017453292f;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float sqrt = (float) Math.sqrt((f11 * f11) + (f12 * f12) + (f13 * f13));
        if (sqrt == 1.0f) {
            float f14 = 1.0f / sqrt;
            f11 *= f14;
            f12 *= f14;
            f13 *= f14;
        }
        float f15 = 1.0f - cos;
        float f16 = f11 * sin;
        float f17 = f12 * sin;
        float f18 = sin * f13;
        float[] fArr = this.mMat;
        fArr[0] = (f11 * f11 * f15) + cos;
        float f19 = f11 * f12 * f15;
        fArr[3] = f19 - f18;
        float f20 = f13 * f11 * f15;
        fArr[6] = f20 + f17;
        fArr[1] = f19 + f18;
        fArr[4] = (f12 * f12 * f15) + cos;
        float f21 = f12 * f13 * f15;
        fArr[7] = f21 - f16;
        fArr[2] = f20 - f17;
        fArr[5] = f21 + f16;
        fArr[8] = (f13 * f13 * f15) + cos;
    }

    public void loadScale(float f10, float f11) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f10;
        fArr[4] = f11;
    }

    public void loadTranslate(float f10, float f11) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[6] = f10;
        fArr[7] = f11;
    }

    public void multiply(Matrix3f matrix3f) {
        Matrix3f matrix3f2 = new Matrix3f();
        matrix3f2.loadMultiply(this, matrix3f);
        load(matrix3f2);
    }

    public void rotate(float f10, float f11, float f12, float f13) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadRotate(f10, f11, f12, f13);
        multiply(matrix3f);
    }

    public void scale(float f10, float f11) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadScale(f10, f11);
        multiply(matrix3f);
    }

    public void set(int i9, int i10, float f10) {
        this.mMat[(i9 * 3) + i10] = f10;
    }

    public void translate(float f10, float f11) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadTranslate(f10, f11);
        multiply(matrix3f);
    }

    public void transpose() {
        int i9 = 0;
        while (i9 < 2) {
            int i10 = i9 + 1;
            for (int i11 = i10; i11 < 3; i11++) {
                float[] fArr = this.mMat;
                int i12 = (i9 * 3) + i11;
                float f10 = fArr[i12];
                int i13 = (i11 * 3) + i9;
                fArr[i12] = fArr[i13];
                fArr[i13] = f10;
            }
            i9 = i10;
        }
    }

    public Matrix3f(float[] fArr) {
        float[] fArr2 = new float[9];
        this.mMat = fArr2;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
    }

    public void loadScale(float f10, float f11, float f12) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f10;
        fArr[4] = f11;
        fArr[8] = f12;
    }

    public void rotate(float f10) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadRotate(f10);
        multiply(matrix3f);
    }

    public void scale(float f10, float f11, float f12) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadScale(f10, f11, f12);
        multiply(matrix3f);
    }

    public void loadRotate(float f10) {
        loadIdentity();
        double d10 = f10 * 0.017453292f;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float[] fArr = this.mMat;
        fArr[0] = cos;
        fArr[1] = -sin;
        fArr[3] = sin;
        fArr[4] = cos;
    }
}
