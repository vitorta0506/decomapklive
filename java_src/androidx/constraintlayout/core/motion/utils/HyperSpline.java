package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
/* loaded from: classes.dex */
public class HyperSpline {
    double[][] mCtl;
    Cubic[][] mCurve;
    double[] mCurveLength;
    int mDimensionality;
    int mPoints;
    double mTotalLength;

    /* loaded from: classes.dex */
    public static class Cubic {
        double mA;
        double mB;
        double mC;
        double mD;

        public Cubic(double d10, double d11, double d12, double d13) {
            this.mA = d10;
            this.mB = d11;
            this.mC = d12;
            this.mD = d13;
        }

        public double eval(double d10) {
            return (((((this.mD * d10) + this.mC) * d10) + this.mB) * d10) + this.mA;
        }

        public double vel(double d10) {
            return (((this.mD * 3.0d * d10) + (this.mC * 2.0d)) * d10) + this.mB;
        }
    }

    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    static Cubic[] calcNaturalCubic(int i9, double[] dArr) {
        double[] dArr2 = new double[i9];
        double[] dArr3 = new double[i9];
        double[] dArr4 = new double[i9];
        int i10 = i9 - 1;
        int i11 = 0;
        dArr2[0] = 0.5d;
        int i12 = 1;
        for (int i13 = 1; i13 < i10; i13++) {
            dArr2[i13] = 1.0d / (4.0d - dArr2[i13 - 1]);
        }
        int i14 = i10 - 1;
        dArr2[i10] = 1.0d / (2.0d - dArr2[i14]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (i12 < i10) {
            int i15 = i12 + 1;
            int i16 = i12 - 1;
            dArr3[i12] = (((dArr[i15] - dArr[i16]) * 3.0d) - dArr3[i16]) * dArr2[i12];
            i12 = i15;
        }
        dArr3[i10] = (((dArr[i10] - dArr[i14]) * 3.0d) - dArr3[i14]) * dArr2[i10];
        dArr4[i10] = dArr3[i10];
        while (i14 >= 0) {
            dArr4[i14] = dArr3[i14] - (dArr2[i14] * dArr4[i14 + 1]);
            i14--;
        }
        Cubic[] cubicArr = new Cubic[i10];
        while (i11 < i10) {
            int i17 = i11 + 1;
            cubicArr[i11] = new Cubic((float) dArr[i11], dArr4[i11], (((dArr[i17] - dArr[i11]) * 3.0d) - (dArr4[i11] * 2.0d)) - dArr4[i17], ((dArr[i11] - dArr[i17]) * 2.0d) + dArr4[i11] + dArr4[i17]);
            i11 = i17;
        }
        return cubicArr;
    }

    public double approxLength(Cubic[] cubicArr) {
        int i9;
        int length = cubicArr.length;
        double[] dArr = new double[cubicArr.length];
        double d10 = 0.0d;
        double d11 = 0.0d;
        double d12 = 0.0d;
        while (true) {
            i9 = 0;
            if (d11 >= 1.0d) {
                break;
            }
            double d13 = 0.0d;
            while (i9 < cubicArr.length) {
                double d14 = dArr[i9];
                double eval = cubicArr[i9].eval(d11);
                dArr[i9] = eval;
                double d15 = d14 - eval;
                d13 += d15 * d15;
                i9++;
            }
            if (d11 > 0.0d) {
                d12 += Math.sqrt(d13);
            }
            d11 += 0.1d;
        }
        while (i9 < cubicArr.length) {
            double d16 = dArr[i9];
            double eval2 = cubicArr[i9].eval(1.0d);
            dArr[i9] = eval2;
            double d17 = d16 - eval2;
            d10 += d17 * d17;
            i9++;
        }
        return d12 + Math.sqrt(d10);
    }

    public void getPos(double d10, double[] dArr) {
        double d11 = d10 * this.mTotalLength;
        int i9 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i9 >= dArr2.length - 1 || dArr2[i9] >= d11) {
                break;
            }
            d11 -= dArr2[i9];
            i9++;
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr[i10] = this.mCurve[i10][i9].eval(d11 / this.mCurveLength[i9]);
        }
    }

    public void getVelocity(double d10, double[] dArr) {
        double d11 = d10 * this.mTotalLength;
        int i9 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i9 >= dArr2.length - 1 || dArr2[i9] >= d11) {
                break;
            }
            d11 -= dArr2[i9];
            i9++;
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr[i10] = this.mCurve[i10][i9].vel(d11 / this.mCurveLength[i9]);
        }
    }

    public void setup(double[][] dArr) {
        int i9;
        int length = dArr[0].length;
        this.mDimensionality = length;
        int length2 = dArr.length;
        this.mPoints = length2;
        this.mCtl = (double[][]) Array.newInstance(double.class, length, length2);
        this.mCurve = new Cubic[this.mDimensionality];
        for (int i10 = 0; i10 < this.mDimensionality; i10++) {
            for (int i11 = 0; i11 < this.mPoints; i11++) {
                this.mCtl[i10][i11] = dArr[i11][i10];
            }
        }
        int i12 = 0;
        while (true) {
            i9 = this.mDimensionality;
            if (i12 >= i9) {
                break;
            }
            Cubic[][] cubicArr = this.mCurve;
            double[][] dArr2 = this.mCtl;
            cubicArr[i12] = calcNaturalCubic(dArr2[i12].length, dArr2[i12]);
            i12++;
        }
        this.mCurveLength = new double[this.mPoints - 1];
        this.mTotalLength = 0.0d;
        Cubic[] cubicArr2 = new Cubic[i9];
        for (int i13 = 0; i13 < this.mCurveLength.length; i13++) {
            for (int i14 = 0; i14 < this.mDimensionality; i14++) {
                cubicArr2[i14] = this.mCurve[i14][i13];
            }
            double d10 = this.mTotalLength;
            double[] dArr3 = this.mCurveLength;
            double approxLength = approxLength(cubicArr2);
            dArr3[i13] = approxLength;
            this.mTotalLength = d10 + approxLength;
        }
    }

    public HyperSpline() {
    }

    public void getPos(double d10, float[] fArr) {
        double d11 = d10 * this.mTotalLength;
        int i9 = 0;
        while (true) {
            double[] dArr = this.mCurveLength;
            if (i9 >= dArr.length - 1 || dArr[i9] >= d11) {
                break;
            }
            d11 -= dArr[i9];
            i9++;
        }
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr[i10] = (float) this.mCurve[i10][i9].eval(d11 / this.mCurveLength[i9]);
        }
    }

    public double getPos(double d10, int i9) {
        double[] dArr;
        double d11 = d10 * this.mTotalLength;
        int i10 = 0;
        while (true) {
            dArr = this.mCurveLength;
            if (i10 >= dArr.length - 1 || dArr[i10] >= d11) {
                break;
            }
            d11 -= dArr[i10];
            i10++;
        }
        return this.mCurve[i9][i10].eval(d11 / dArr[i10]);
    }
}
