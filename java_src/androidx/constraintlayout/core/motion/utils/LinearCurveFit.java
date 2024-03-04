package androidx.constraintlayout.core.motion.utils;
/* loaded from: classes.dex */
public class LinearCurveFit extends CurveFit {
    private static final String TAG = "LinearCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double mTotalLength;
    private double[][] mY;

    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        this.mTotalLength = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        this.mT = dArr;
        this.mY = dArr2;
        if (length2 > 2) {
            double d10 = 0.0d;
            double d11 = 0.0d;
            int i9 = 0;
            while (i9 < dArr.length) {
                double d12 = dArr2[i9][0];
                double d13 = dArr2[i9][0];
                if (i9 > 0) {
                    Math.hypot(d12 - d10, d13 - d11);
                }
                i9++;
                d10 = d12;
                d11 = d13;
            }
            this.mTotalLength = 0.0d;
        }
    }

    private double getLength2D(double d10) {
        if (Double.isNaN(this.mTotalLength)) {
            return 0.0d;
        }
        double[] dArr = this.mT;
        int length = dArr.length;
        if (d10 <= dArr[0]) {
            return 0.0d;
        }
        int i9 = length - 1;
        if (d10 >= dArr[i9]) {
            return this.mTotalLength;
        }
        double d11 = 0.0d;
        double d12 = 0.0d;
        double d13 = 0.0d;
        int i10 = 0;
        while (i10 < i9) {
            double[][] dArr2 = this.mY;
            double d14 = dArr2[i10][0];
            double d15 = dArr2[i10][1];
            if (i10 > 0) {
                d11 += Math.hypot(d14 - d12, d15 - d13);
            }
            double[] dArr3 = this.mT;
            if (d10 == dArr3[i10]) {
                return d11;
            }
            int i11 = i10 + 1;
            if (d10 < dArr3[i11]) {
                double d16 = (d10 - dArr3[i10]) / (dArr3[i11] - dArr3[i10]);
                double[][] dArr4 = this.mY;
                double d17 = 1.0d - d16;
                return d11 + Math.hypot(d15 - ((dArr4[i10][1] * d17) + (dArr4[i11][1] * d16)), d14 - ((dArr4[i10][0] * d17) + (dArr4[i11][0] * d16)));
            }
            i10 = i11;
            d12 = d14;
            d13 = d15;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d10, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int i9 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            if (d10 <= dArr2[0]) {
                getSlope(dArr2[0], this.mSlopeTemp);
                for (int i10 = 0; i10 < length2; i10++) {
                    dArr[i10] = this.mY[0][i10] + ((d10 - this.mT[0]) * this.mSlopeTemp[i10]);
                }
                return;
            }
            int i11 = length - 1;
            if (d10 >= dArr2[i11]) {
                getSlope(dArr2[i11], this.mSlopeTemp);
                while (i9 < length2) {
                    dArr[i9] = this.mY[i11][i9] + ((d10 - this.mT[i11]) * this.mSlopeTemp[i9]);
                    i9++;
                }
                return;
            }
        } else if (d10 <= dArr2[0]) {
            for (int i12 = 0; i12 < length2; i12++) {
                dArr[i12] = this.mY[0][i12];
            }
            return;
        } else {
            int i13 = length - 1;
            if (d10 >= dArr2[i13]) {
                while (i9 < length2) {
                    dArr[i9] = this.mY[i13][i9];
                    i9++;
                }
                return;
            }
        }
        int i14 = 0;
        while (i14 < length - 1) {
            if (d10 == this.mT[i14]) {
                for (int i15 = 0; i15 < length2; i15++) {
                    dArr[i15] = this.mY[i14][i15];
                }
            }
            double[] dArr3 = this.mT;
            int i16 = i14 + 1;
            if (d10 < dArr3[i16]) {
                double d11 = (d10 - dArr3[i14]) / (dArr3[i16] - dArr3[i14]);
                while (i9 < length2) {
                    double[][] dArr4 = this.mY;
                    dArr[i9] = (dArr4[i14][i9] * (1.0d - d11)) + (dArr4[i16][i9] * d11);
                    i9++;
                }
                return;
            }
            i14 = i16;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d10, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        if (d10 <= dArr2[0]) {
            d10 = dArr2[0];
        } else {
            int i9 = length - 1;
            if (d10 >= dArr2[i9]) {
                d10 = dArr2[i9];
            }
        }
        int i10 = 0;
        while (i10 < length - 1) {
            double[] dArr3 = this.mT;
            int i11 = i10 + 1;
            if (d10 <= dArr3[i11]) {
                double d11 = dArr3[i11] - dArr3[i10];
                double d12 = dArr3[i10];
                for (int i12 = 0; i12 < length2; i12++) {
                    double[][] dArr4 = this.mY;
                    dArr[i12] = (dArr4[i11][i12] - dArr4[i10][i12]) / d11;
                }
                return;
            }
            i10 = i11;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mT;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d10, int i9) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i10 = 0;
        if (d10 < dArr[0]) {
            d10 = dArr[0];
        } else {
            int i11 = length - 1;
            if (d10 >= dArr[i11]) {
                d10 = dArr[i11];
            }
        }
        while (i10 < length - 1) {
            double[] dArr2 = this.mT;
            int i12 = i10 + 1;
            if (d10 <= dArr2[i12]) {
                double d11 = dArr2[i12] - dArr2[i10];
                double d12 = dArr2[i10];
                double[][] dArr3 = this.mY;
                return (dArr3[i12][i9] - dArr3[i10][i9]) / d11;
            }
            i10 = i12;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d10, float[] fArr) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i9 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            if (d10 <= dArr[0]) {
                getSlope(dArr[0], this.mSlopeTemp);
                for (int i10 = 0; i10 < length2; i10++) {
                    fArr[i10] = (float) (this.mY[0][i10] + ((d10 - this.mT[0]) * this.mSlopeTemp[i10]));
                }
                return;
            }
            int i11 = length - 1;
            if (d10 >= dArr[i11]) {
                getSlope(dArr[i11], this.mSlopeTemp);
                while (i9 < length2) {
                    fArr[i9] = (float) (this.mY[i11][i9] + ((d10 - this.mT[i11]) * this.mSlopeTemp[i9]));
                    i9++;
                }
                return;
            }
        } else if (d10 <= dArr[0]) {
            for (int i12 = 0; i12 < length2; i12++) {
                fArr[i12] = (float) this.mY[0][i12];
            }
            return;
        } else {
            int i13 = length - 1;
            if (d10 >= dArr[i13]) {
                while (i9 < length2) {
                    fArr[i9] = (float) this.mY[i13][i9];
                    i9++;
                }
                return;
            }
        }
        int i14 = 0;
        while (i14 < length - 1) {
            if (d10 == this.mT[i14]) {
                for (int i15 = 0; i15 < length2; i15++) {
                    fArr[i15] = (float) this.mY[i14][i15];
                }
            }
            double[] dArr2 = this.mT;
            int i16 = i14 + 1;
            if (d10 < dArr2[i16]) {
                double d11 = (d10 - dArr2[i14]) / (dArr2[i16] - dArr2[i14]);
                while (i9 < length2) {
                    double[][] dArr3 = this.mY;
                    fArr[i9] = (float) ((dArr3[i14][i9] * (1.0d - d11)) + (dArr3[i16][i9] * d11));
                    i9++;
                }
                return;
            }
            i14 = i16;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d10, int i9) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i10 = 0;
        if (this.mExtrapolate) {
            if (d10 <= dArr[0]) {
                return this.mY[0][i9] + ((d10 - dArr[0]) * getSlope(dArr[0], i9));
            }
            int i11 = length - 1;
            if (d10 >= dArr[i11]) {
                return this.mY[i11][i9] + ((d10 - dArr[i11]) * getSlope(dArr[i11], i9));
            }
        } else if (d10 <= dArr[0]) {
            return this.mY[0][i9];
        } else {
            int i12 = length - 1;
            if (d10 >= dArr[i12]) {
                return this.mY[i12][i9];
            }
        }
        while (i10 < length - 1) {
            double[] dArr2 = this.mT;
            if (d10 == dArr2[i10]) {
                return this.mY[i10][i9];
            }
            int i13 = i10 + 1;
            if (d10 < dArr2[i13]) {
                double d11 = (d10 - dArr2[i10]) / (dArr2[i13] - dArr2[i10]);
                double[][] dArr3 = this.mY;
                return (dArr3[i10][i9] * (1.0d - d11)) + (dArr3[i13][i9] * d11);
            }
            i10 = i13;
        }
        return 0.0d;
    }
}
