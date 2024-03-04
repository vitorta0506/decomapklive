package androidx.constraintlayout.core.motion.utils;
/* loaded from: classes.dex */
public abstract class CurveFit {
    public static final int CONSTANT = 2;
    public static final int LINEAR = 1;
    public static final int SPLINE = 0;

    /* loaded from: classes.dex */
    static class Constant extends CurveFit {
        double mTime;
        double[] mValue;

        Constant(double d10, double[] dArr) {
            this.mTime = d10;
            this.mValue = dArr;
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void getPos(double d10, double[] dArr) {
            double[] dArr2 = this.mValue;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double getSlope(double d10, int i9) {
            return 0.0d;
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void getSlope(double d10, double[] dArr) {
            for (int i9 = 0; i9 < this.mValue.length; i9++) {
                dArr[i9] = 0.0d;
            }
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double[] getTimePoints() {
            return new double[]{this.mTime};
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void getPos(double d10, float[] fArr) {
            int i9 = 0;
            while (true) {
                double[] dArr = this.mValue;
                if (i9 >= dArr.length) {
                    return;
                }
                fArr[i9] = (float) dArr[i9];
                i9++;
            }
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double getPos(double d10, int i9) {
            return this.mValue[i9];
        }
    }

    public static CurveFit get(int i9, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i9 = 2;
        }
        if (i9 != 0) {
            if (i9 != 2) {
                return new LinearCurveFit(dArr, dArr2);
            }
            return new Constant(dArr[0], dArr2[0]);
        }
        return new MonotonicCurveFit(dArr, dArr2);
    }

    public static CurveFit getArc(int[] iArr, double[] dArr, double[][] dArr2) {
        return new ArcCurveFit(iArr, dArr, dArr2);
    }

    public abstract double getPos(double d10, int i9);

    public abstract void getPos(double d10, double[] dArr);

    public abstract void getPos(double d10, float[] fArr);

    public abstract double getSlope(double d10, int i9);

    public abstract void getSlope(double d10, double[] dArr);

    public abstract double[] getTimePoints();
}
