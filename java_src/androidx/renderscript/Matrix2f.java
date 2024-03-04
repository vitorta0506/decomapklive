package androidx.renderscript;
/* loaded from: classes.dex */
public class Matrix2f {
    final float[] mMat;

    public Matrix2f() {
        this.mMat = new float[4];
        loadIdentity();
    }

    public float get(int i9, int i10) {
        return this.mMat[(i9 * 2) + i10];
    }

    public float[] getArray() {
        return this.mMat;
    }

    public void load(Matrix2f matrix2f) {
        float[] array = matrix2f.getArray();
        float[] fArr = this.mMat;
        System.arraycopy(array, 0, fArr, 0, fArr.length);
    }

    public void loadIdentity() {
        float[] fArr = this.mMat;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 1.0f;
    }

    public void loadMultiply(Matrix2f matrix2f, Matrix2f matrix2f2) {
        for (int i9 = 0; i9 < 2; i9++) {
            float f10 = 0.0f;
            float f11 = 0.0f;
            for (int i10 = 0; i10 < 2; i10++) {
                float f12 = matrix2f2.get(i9, i10);
                f10 += matrix2f.get(i10, 0) * f12;
                f11 += matrix2f.get(i10, 1) * f12;
            }
            set(i9, 0, f10);
            set(i9, 1, f11);
        }
    }

    public void loadRotate(float f10) {
        double d10 = f10 * 0.017453292f;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float[] fArr = this.mMat;
        fArr[0] = cos;
        fArr[1] = -sin;
        fArr[2] = sin;
        fArr[3] = cos;
    }

    public void loadScale(float f10, float f11) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f10;
        fArr[3] = f11;
    }

    public void multiply(Matrix2f matrix2f) {
        Matrix2f matrix2f2 = new Matrix2f();
        matrix2f2.loadMultiply(this, matrix2f);
        load(matrix2f2);
    }

    public void rotate(float f10) {
        Matrix2f matrix2f = new Matrix2f();
        matrix2f.loadRotate(f10);
        multiply(matrix2f);
    }

    public void scale(float f10, float f11) {
        Matrix2f matrix2f = new Matrix2f();
        matrix2f.loadScale(f10, f11);
        multiply(matrix2f);
    }

    public void set(int i9, int i10, float f10) {
        this.mMat[(i9 * 2) + i10] = f10;
    }

    public void transpose() {
        float[] fArr = this.mMat;
        float f10 = fArr[1];
        fArr[1] = fArr[2];
        fArr[2] = f10;
    }

    public Matrix2f(float[] fArr) {
        float[] fArr2 = new float[4];
        this.mMat = fArr2;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
    }
}
