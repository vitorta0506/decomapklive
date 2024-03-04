package androidx.renderscript;
/* loaded from: classes.dex */
public class Matrix4f {
    final float[] mMat;

    public Matrix4f() {
        this.mMat = new float[16];
        loadIdentity();
    }

    private float computeCofactor(int i9, int i10) {
        int i11 = (i9 + 1) % 4;
        int i12 = (i9 + 2) % 4;
        int i13 = (i9 + 3) % 4;
        float[] fArr = this.mMat;
        int i14 = ((i10 + 1) % 4) * 4;
        int i15 = ((i10 + 2) % 4) * 4;
        int i16 = i12 + i15;
        int i17 = ((i10 + 3) % 4) * 4;
        int i18 = i13 + i17;
        int i19 = i12 + i17;
        int i20 = i13 + i15;
        int i21 = i12 + i14;
        int i22 = i13 + i14;
        float f10 = ((fArr[i11 + i14] * ((fArr[i16] * fArr[i18]) - (fArr[i19] * fArr[i20]))) - (fArr[i15 + i11] * ((fArr[i21] * fArr[i18]) - (fArr[i19] * fArr[i22])))) + (fArr[i11 + i17] * ((fArr[i21] * fArr[i20]) - (fArr[i16] * fArr[i22])));
        return ((i9 + i10) & 1) != 0 ? -f10 : f10;
    }

    public float get(int i9, int i10) {
        return this.mMat[(i9 * 4) + i10];
    }

    public float[] getArray() {
        return this.mMat;
    }

    public boolean inverse() {
        Matrix4f matrix4f = new Matrix4f();
        for (int i9 = 0; i9 < 4; i9++) {
            for (int i10 = 0; i10 < 4; i10++) {
                matrix4f.mMat[(i9 * 4) + i10] = computeCofactor(i9, i10);
            }
        }
        float[] fArr = this.mMat;
        float f10 = fArr[0];
        float[] fArr2 = matrix4f.mMat;
        float f11 = (f10 * fArr2[0]) + (fArr[4] * fArr2[1]) + (fArr[8] * fArr2[2]) + (fArr[12] * fArr2[3]);
        if (Math.abs(f11) < 1.0E-6d) {
            return false;
        }
        float f12 = 1.0f / f11;
        for (int i11 = 0; i11 < 16; i11++) {
            this.mMat[i11] = matrix4f.mMat[i11] * f12;
        }
        return true;
    }

    public boolean inverseTranspose() {
        Matrix4f matrix4f = new Matrix4f();
        for (int i9 = 0; i9 < 4; i9++) {
            for (int i10 = 0; i10 < 4; i10++) {
                matrix4f.mMat[(i10 * 4) + i9] = computeCofactor(i9, i10);
            }
        }
        float[] fArr = this.mMat;
        float f10 = fArr[0];
        float[] fArr2 = matrix4f.mMat;
        float f11 = (f10 * fArr2[0]) + (fArr[4] * fArr2[4]) + (fArr[8] * fArr2[8]) + (fArr[12] * fArr2[12]);
        if (Math.abs(f11) < 1.0E-6d) {
            return false;
        }
        float f12 = 1.0f / f11;
        for (int i11 = 0; i11 < 16; i11++) {
            this.mMat[i11] = matrix4f.mMat[i11] * f12;
        }
        return true;
    }

    public void load(Matrix4f matrix4f) {
        float[] array = matrix4f.getArray();
        float[] fArr = this.mMat;
        System.arraycopy(array, 0, fArr, 0, fArr.length);
    }

    public void loadFrustum(float f10, float f11, float f12, float f13, float f14, float f15) {
        loadIdentity();
        float[] fArr = this.mMat;
        float f16 = 2.0f * f14;
        float f17 = f11 - f10;
        fArr[0] = f16 / f17;
        float f18 = f13 - f12;
        fArr[5] = f16 / f18;
        fArr[8] = (f11 + f10) / f17;
        fArr[9] = (f13 + f12) / f18;
        float f19 = f15 - f14;
        fArr[10] = (-(f15 + f14)) / f19;
        fArr[11] = -1.0f;
        fArr[14] = ((f15 * (-2.0f)) * f14) / f19;
        fArr[15] = 0.0f;
    }

    public void loadIdentity() {
        float[] fArr = this.mMat;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 1.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    public void loadMultiply(Matrix4f matrix4f, Matrix4f matrix4f2) {
        for (int i9 = 0; i9 < 4; i9++) {
            float f10 = 0.0f;
            float f11 = 0.0f;
            float f12 = 0.0f;
            float f13 = 0.0f;
            for (int i10 = 0; i10 < 4; i10++) {
                float f14 = matrix4f2.get(i9, i10);
                f10 += matrix4f.get(i10, 0) * f14;
                f11 += matrix4f.get(i10, 1) * f14;
                f12 += matrix4f.get(i10, 2) * f14;
                f13 += matrix4f.get(i10, 3) * f14;
            }
            set(i9, 0, f10);
            set(i9, 1, f11);
            set(i9, 2, f12);
            set(i9, 3, f13);
        }
    }

    public void loadOrtho(float f10, float f11, float f12, float f13, float f14, float f15) {
        loadIdentity();
        float[] fArr = this.mMat;
        float f16 = f11 - f10;
        fArr[0] = 2.0f / f16;
        float f17 = f13 - f12;
        fArr[5] = 2.0f / f17;
        float f18 = f15 - f14;
        fArr[10] = (-2.0f) / f18;
        fArr[12] = (-(f11 + f10)) / f16;
        fArr[13] = (-(f13 + f12)) / f17;
        fArr[14] = (-(f15 + f14)) / f18;
    }

    public void loadOrthoWindow(int i9, int i10) {
        loadOrtho(0.0f, i9, i10, 0.0f, -1.0f, 1.0f);
    }

    public void loadPerspective(float f10, float f11, float f12, float f13) {
        float tan = f12 * ((float) Math.tan((float) ((f10 * 3.141592653589793d) / 360.0d)));
        float f14 = -tan;
        loadFrustum(f14 * f11, tan * f11, f14, tan, f12, f13);
    }

    public void loadProjectionNormalized(int i9, int i10) {
        Matrix4f matrix4f = new Matrix4f();
        Matrix4f matrix4f2 = new Matrix4f();
        if (i9 > i10) {
            float f10 = i9 / i10;
            matrix4f.loadFrustum(-f10, f10, -1.0f, 1.0f, 1.0f, 100.0f);
        } else {
            float f11 = i10 / i9;
            matrix4f.loadFrustum(-1.0f, 1.0f, -f11, f11, 1.0f, 100.0f);
        }
        matrix4f2.loadRotate(180.0f, 0.0f, 1.0f, 0.0f);
        matrix4f.loadMultiply(matrix4f, matrix4f2);
        matrix4f2.loadScale(-2.0f, 2.0f, 1.0f);
        matrix4f.loadMultiply(matrix4f, matrix4f2);
        matrix4f2.loadTranslate(0.0f, 0.0f, 2.0f);
        matrix4f.loadMultiply(matrix4f, matrix4f2);
        load(matrix4f);
    }

    public void loadRotate(float f10, float f11, float f12, float f13) {
        float[] fArr = this.mMat;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
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
        float[] fArr2 = this.mMat;
        fArr2[0] = (f11 * f11 * f15) + cos;
        float f19 = f11 * f12 * f15;
        fArr2[4] = f19 - f18;
        float f20 = f13 * f11 * f15;
        fArr2[8] = f20 + f17;
        fArr2[1] = f19 + f18;
        fArr2[5] = (f12 * f12 * f15) + cos;
        float f21 = f12 * f13 * f15;
        fArr2[9] = f21 - f16;
        fArr2[2] = f20 - f17;
        fArr2[6] = f21 + f16;
        fArr2[10] = (f13 * f13 * f15) + cos;
    }

    public void loadScale(float f10, float f11, float f12) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f10;
        fArr[5] = f11;
        fArr[10] = f12;
    }

    public void loadTranslate(float f10, float f11, float f12) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[12] = f10;
        fArr[13] = f11;
        fArr[14] = f12;
    }

    public void multiply(Matrix4f matrix4f) {
        Matrix4f matrix4f2 = new Matrix4f();
        matrix4f2.loadMultiply(this, matrix4f);
        load(matrix4f2);
    }

    public void rotate(float f10, float f11, float f12, float f13) {
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.loadRotate(f10, f11, f12, f13);
        multiply(matrix4f);
    }

    public void scale(float f10, float f11, float f12) {
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.loadScale(f10, f11, f12);
        multiply(matrix4f);
    }

    public void set(int i9, int i10, float f10) {
        this.mMat[(i9 * 4) + i10] = f10;
    }

    public void translate(float f10, float f11, float f12) {
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.loadTranslate(f10, f11, f12);
        multiply(matrix4f);
    }

    public void transpose() {
        int i9 = 0;
        while (i9 < 3) {
            int i10 = i9 + 1;
            for (int i11 = i10; i11 < 4; i11++) {
                float[] fArr = this.mMat;
                int i12 = (i9 * 4) + i11;
                float f10 = fArr[i12];
                int i13 = (i11 * 4) + i9;
                fArr[i12] = fArr[i13];
                fArr[i13] = f10;
            }
            i9 = i10;
        }
    }

    public void load(Matrix3f matrix3f) {
        float[] fArr = this.mMat;
        float[] fArr2 = matrix3f.mMat;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        fArr[3] = 0.0f;
        fArr[4] = fArr2[3];
        fArr[5] = fArr2[4];
        fArr[6] = fArr2[5];
        fArr[7] = 0.0f;
        fArr[8] = fArr2[6];
        fArr[9] = fArr2[7];
        fArr[10] = fArr2[8];
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    public Matrix4f(float[] fArr) {
        float[] fArr2 = new float[16];
        this.mMat = fArr2;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
    }
}
