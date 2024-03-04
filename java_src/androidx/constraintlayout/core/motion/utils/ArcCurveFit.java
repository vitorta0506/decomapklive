package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
/* loaded from: classes.dex */
public class ArcCurveFit extends CurveFit {
    public static final int ARC_START_FLIP = 3;
    public static final int ARC_START_HORIZONTAL = 2;
    public static final int ARC_START_LINEAR = 0;
    public static final int ARC_START_VERTICAL = 1;
    private static final int START_HORIZONTAL = 2;
    private static final int START_LINEAR = 3;
    private static final int START_VERTICAL = 1;
    Arc[] mArcs;
    private boolean mExtrapolate = true;
    private final double[] mTime;

    /* loaded from: classes.dex */
    private static class Arc {
        private static final double EPSILON = 0.001d;
        private static final String TAG = "Arc";
        private static double[] ourPercent = new double[91];
        boolean linear;
        double mArcDistance;
        double mArcVelocity;
        double mEllipseA;
        double mEllipseB;
        double mEllipseCenterX;
        double mEllipseCenterY;
        double[] mLut;
        double mOneOverDeltaTime;
        double mTime1;
        double mTime2;
        double mTmpCosAngle;
        double mTmpSinAngle;
        boolean mVertical;
        double mX1;
        double mX2;
        double mY1;
        double mY2;

        Arc(int i9, double d10, double d11, double d12, double d13, double d14, double d15) {
            this.linear = false;
            this.mVertical = i9 == 1;
            this.mTime1 = d10;
            this.mTime2 = d11;
            this.mOneOverDeltaTime = 1.0d / (d11 - d10);
            if (3 == i9) {
                this.linear = true;
            }
            double d16 = d14 - d12;
            double d17 = d15 - d13;
            if (!this.linear && Math.abs(d16) >= EPSILON && Math.abs(d17) >= EPSILON) {
                this.mLut = new double[101];
                boolean z10 = this.mVertical;
                this.mEllipseA = d16 * (z10 ? -1 : 1);
                this.mEllipseB = d17 * (z10 ? 1 : -1);
                this.mEllipseCenterX = z10 ? d14 : d12;
                this.mEllipseCenterY = z10 ? d13 : d15;
                buildTable(d12, d13, d14, d15);
                this.mArcVelocity = this.mArcDistance * this.mOneOverDeltaTime;
                return;
            }
            this.linear = true;
            this.mX1 = d12;
            this.mX2 = d14;
            this.mY1 = d13;
            this.mY2 = d15;
            double hypot = Math.hypot(d17, d16);
            this.mArcDistance = hypot;
            this.mArcVelocity = hypot * this.mOneOverDeltaTime;
            double d18 = this.mTime2;
            double d19 = this.mTime1;
            this.mEllipseCenterX = d16 / (d18 - d19);
            this.mEllipseCenterY = d17 / (d18 - d19);
        }

        private void buildTable(double d10, double d11, double d12, double d13) {
            double[] dArr;
            double[] dArr2;
            double d14;
            double d15 = d12 - d10;
            double d16 = d11 - d13;
            int i9 = 0;
            double d17 = 0.0d;
            double d18 = 0.0d;
            double d19 = 0.0d;
            while (true) {
                if (i9 >= ourPercent.length) {
                    break;
                }
                double d20 = d17;
                double radians = Math.toRadians((i9 * 90.0d) / (dArr.length - 1));
                double sin = Math.sin(radians) * d15;
                double cos = Math.cos(radians) * d16;
                if (i9 > 0) {
                    d14 = Math.hypot(sin - d18, cos - d19) + d20;
                    ourPercent[i9] = d14;
                } else {
                    d14 = d20;
                }
                i9++;
                d19 = cos;
                d17 = d14;
                d18 = sin;
            }
            double d21 = d17;
            this.mArcDistance = d21;
            int i10 = 0;
            while (true) {
                double[] dArr3 = ourPercent;
                if (i10 >= dArr3.length) {
                    break;
                }
                dArr3[i10] = dArr3[i10] / d21;
                i10++;
            }
            int i11 = 0;
            while (true) {
                if (i11 >= this.mLut.length) {
                    return;
                }
                double length = i11 / (dArr2.length - 1);
                int binarySearch = Arrays.binarySearch(ourPercent, length);
                if (binarySearch >= 0) {
                    this.mLut[i11] = binarySearch / (ourPercent.length - 1);
                } else if (binarySearch == -1) {
                    this.mLut[i11] = 0.0d;
                } else {
                    int i12 = -binarySearch;
                    int i13 = i12 - 2;
                    double[] dArr4 = ourPercent;
                    this.mLut[i11] = (i13 + ((length - dArr4[i13]) / (dArr4[i12 - 1] - dArr4[i13]))) / (dArr4.length - 1);
                }
                i11++;
            }
        }

        double getDX() {
            double d10 = this.mEllipseA * this.mTmpCosAngle;
            double hypot = this.mArcVelocity / Math.hypot(d10, (-this.mEllipseB) * this.mTmpSinAngle);
            if (this.mVertical) {
                d10 = -d10;
            }
            return d10 * hypot;
        }

        double getDY() {
            double d10 = this.mEllipseA * this.mTmpCosAngle;
            double d11 = (-this.mEllipseB) * this.mTmpSinAngle;
            double hypot = this.mArcVelocity / Math.hypot(d10, d11);
            return this.mVertical ? (-d11) * hypot : d11 * hypot;
        }

        public double getLinearDX(double d10) {
            return this.mEllipseCenterX;
        }

        public double getLinearDY(double d10) {
            return this.mEllipseCenterY;
        }

        public double getLinearX(double d10) {
            double d11 = (d10 - this.mTime1) * this.mOneOverDeltaTime;
            double d12 = this.mX1;
            return d12 + (d11 * (this.mX2 - d12));
        }

        public double getLinearY(double d10) {
            double d11 = (d10 - this.mTime1) * this.mOneOverDeltaTime;
            double d12 = this.mY1;
            return d12 + (d11 * (this.mY2 - d12));
        }

        double getX() {
            return this.mEllipseCenterX + (this.mEllipseA * this.mTmpSinAngle);
        }

        double getY() {
            return this.mEllipseCenterY + (this.mEllipseB * this.mTmpCosAngle);
        }

        double lookup(double d10) {
            if (d10 <= 0.0d) {
                return 0.0d;
            }
            if (d10 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.mLut;
            double length = d10 * (dArr.length - 1);
            int i9 = (int) length;
            return dArr[i9] + ((length - i9) * (dArr[i9 + 1] - dArr[i9]));
        }

        void setPoint(double d10) {
            double lookup = lookup((this.mVertical ? this.mTime2 - d10 : d10 - this.mTime1) * this.mOneOverDeltaTime) * 1.5707963267948966d;
            this.mTmpSinAngle = Math.sin(lookup);
            this.mTmpCosAngle = Math.cos(lookup);
        }
    }

    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        this.mTime = dArr;
        this.mArcs = new Arc[dArr.length - 1];
        int i9 = 0;
        int i10 = 1;
        int i11 = 1;
        while (true) {
            Arc[] arcArr = this.mArcs;
            if (i9 >= arcArr.length) {
                return;
            }
            int i12 = iArr[i9];
            if (i12 == 0) {
                i11 = 3;
            } else if (i12 == 1) {
                i10 = 1;
                i11 = 1;
            } else if (i12 == 2) {
                i10 = 2;
                i11 = 2;
            } else if (i12 == 3) {
                i10 = i10 == 1 ? 2 : 1;
                i11 = i10;
            }
            int i13 = i9 + 1;
            arcArr[i9] = new Arc(i11, dArr[i9], dArr[i13], dArr2[i9][0], dArr2[i9][1], dArr2[i13][0], dArr2[i13][1]);
            i9 = i13;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d10, double[] dArr) {
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            if (d10 < arcArr[0].mTime1) {
                double d11 = arcArr[0].mTime1;
                double d12 = d10 - arcArr[0].mTime1;
                if (arcArr[0].linear) {
                    dArr[0] = arcArr[0].getLinearX(d11) + (this.mArcs[0].getLinearDX(d11) * d12);
                    dArr[1] = this.mArcs[0].getLinearY(d11) + (d12 * this.mArcs[0].getLinearDY(d11));
                    return;
                }
                arcArr[0].setPoint(d11);
                dArr[0] = this.mArcs[0].getX() + (this.mArcs[0].getDX() * d12);
                dArr[1] = this.mArcs[0].getY() + (d12 * this.mArcs[0].getDY());
                return;
            } else if (d10 > arcArr[arcArr.length - 1].mTime2) {
                double d13 = arcArr[arcArr.length - 1].mTime2;
                double d14 = d10 - d13;
                int length = arcArr.length - 1;
                if (arcArr[length].linear) {
                    dArr[0] = arcArr[length].getLinearX(d13) + (this.mArcs[length].getLinearDX(d13) * d14);
                    dArr[1] = this.mArcs[length].getLinearY(d13) + (d14 * this.mArcs[length].getLinearDY(d13));
                    return;
                }
                arcArr[length].setPoint(d10);
                dArr[0] = this.mArcs[length].getX() + (this.mArcs[length].getDX() * d14);
                dArr[1] = this.mArcs[length].getY() + (d14 * this.mArcs[length].getDY());
                return;
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            if (d10 < arcArr2[0].mTime1) {
                d10 = arcArr2[0].mTime1;
            }
            if (d10 > arcArr2[arcArr2.length - 1].mTime2) {
                d10 = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int i9 = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i9 >= arcArr3.length) {
                return;
            }
            if (d10 <= arcArr3[i9].mTime2) {
                if (arcArr3[i9].linear) {
                    dArr[0] = arcArr3[i9].getLinearX(d10);
                    dArr[1] = this.mArcs[i9].getLinearY(d10);
                    return;
                }
                arcArr3[i9].setPoint(d10);
                dArr[0] = this.mArcs[i9].getX();
                dArr[1] = this.mArcs[i9].getY();
                return;
            }
            i9++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d10, double[] dArr) {
        Arc[] arcArr = this.mArcs;
        if (d10 < arcArr[0].mTime1) {
            d10 = arcArr[0].mTime1;
        } else if (d10 > arcArr[arcArr.length - 1].mTime2) {
            d10 = arcArr[arcArr.length - 1].mTime2;
        }
        int i9 = 0;
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i9 >= arcArr2.length) {
                return;
            }
            if (d10 <= arcArr2[i9].mTime2) {
                if (arcArr2[i9].linear) {
                    dArr[0] = arcArr2[i9].getLinearDX(d10);
                    dArr[1] = this.mArcs[i9].getLinearDY(d10);
                    return;
                }
                arcArr2[i9].setPoint(d10);
                dArr[0] = this.mArcs[i9].getDX();
                dArr[1] = this.mArcs[i9].getDY();
                return;
            }
            i9++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mTime;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d10, int i9) {
        Arc[] arcArr = this.mArcs;
        int i10 = 0;
        if (d10 < arcArr[0].mTime1) {
            d10 = arcArr[0].mTime1;
        }
        if (d10 > arcArr[arcArr.length - 1].mTime2) {
            d10 = arcArr[arcArr.length - 1].mTime2;
        }
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i10 >= arcArr2.length) {
                return Double.NaN;
            }
            if (d10 <= arcArr2[i10].mTime2) {
                if (arcArr2[i10].linear) {
                    if (i9 == 0) {
                        return arcArr2[i10].getLinearDX(d10);
                    }
                    return arcArr2[i10].getLinearDY(d10);
                }
                arcArr2[i10].setPoint(d10);
                if (i9 == 0) {
                    return this.mArcs[i10].getDX();
                }
                return this.mArcs[i10].getDY();
            }
            i10++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d10, float[] fArr) {
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            if (d10 < arcArr[0].mTime1) {
                double d11 = arcArr[0].mTime1;
                double d12 = d10 - arcArr[0].mTime1;
                if (arcArr[0].linear) {
                    fArr[0] = (float) (arcArr[0].getLinearX(d11) + (this.mArcs[0].getLinearDX(d11) * d12));
                    fArr[1] = (float) (this.mArcs[0].getLinearY(d11) + (d12 * this.mArcs[0].getLinearDY(d11)));
                    return;
                }
                arcArr[0].setPoint(d11);
                fArr[0] = (float) (this.mArcs[0].getX() + (this.mArcs[0].getDX() * d12));
                fArr[1] = (float) (this.mArcs[0].getY() + (d12 * this.mArcs[0].getDY()));
                return;
            } else if (d10 > arcArr[arcArr.length - 1].mTime2) {
                double d13 = arcArr[arcArr.length - 1].mTime2;
                double d14 = d10 - d13;
                int length = arcArr.length - 1;
                if (arcArr[length].linear) {
                    fArr[0] = (float) (arcArr[length].getLinearX(d13) + (this.mArcs[length].getLinearDX(d13) * d14));
                    fArr[1] = (float) (this.mArcs[length].getLinearY(d13) + (d14 * this.mArcs[length].getLinearDY(d13)));
                    return;
                }
                arcArr[length].setPoint(d10);
                fArr[0] = (float) this.mArcs[length].getX();
                fArr[1] = (float) this.mArcs[length].getY();
                return;
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            if (d10 < arcArr2[0].mTime1) {
                d10 = arcArr2[0].mTime1;
            } else if (d10 > arcArr2[arcArr2.length - 1].mTime2) {
                d10 = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int i9 = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i9 >= arcArr3.length) {
                return;
            }
            if (d10 <= arcArr3[i9].mTime2) {
                if (arcArr3[i9].linear) {
                    fArr[0] = (float) arcArr3[i9].getLinearX(d10);
                    fArr[1] = (float) this.mArcs[i9].getLinearY(d10);
                    return;
                }
                arcArr3[i9].setPoint(d10);
                fArr[0] = (float) this.mArcs[i9].getX();
                fArr[1] = (float) this.mArcs[i9].getY();
                return;
            }
            i9++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d10, int i9) {
        double d11;
        double linearY;
        double linearDY;
        double y10;
        double dy;
        int i10 = 0;
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            if (d10 < arcArr[0].mTime1) {
                double d12 = arcArr[0].mTime1;
                d11 = d10 - arcArr[0].mTime1;
                if (!arcArr[0].linear) {
                    arcArr[0].setPoint(d12);
                    if (i9 == 0) {
                        y10 = this.mArcs[0].getX();
                        dy = this.mArcs[0].getDX();
                    } else {
                        y10 = this.mArcs[0].getY();
                        dy = this.mArcs[0].getDY();
                    }
                    return y10 + (d11 * dy);
                } else if (i9 == 0) {
                    linearY = arcArr[0].getLinearX(d12);
                    linearDY = this.mArcs[0].getLinearDX(d12);
                } else {
                    linearY = arcArr[0].getLinearY(d12);
                    linearDY = this.mArcs[0].getLinearDY(d12);
                }
            } else if (d10 > arcArr[arcArr.length - 1].mTime2) {
                double d13 = arcArr[arcArr.length - 1].mTime2;
                d11 = d10 - d13;
                int length = arcArr.length - 1;
                if (i9 == 0) {
                    linearY = arcArr[length].getLinearX(d13);
                    linearDY = this.mArcs[length].getLinearDX(d13);
                } else {
                    linearY = arcArr[length].getLinearY(d13);
                    linearDY = this.mArcs[length].getLinearDY(d13);
                }
            }
            return linearY + (d11 * linearDY);
        }
        Arc[] arcArr2 = this.mArcs;
        if (d10 < arcArr2[0].mTime1) {
            d10 = arcArr2[0].mTime1;
        } else if (d10 > arcArr2[arcArr2.length - 1].mTime2) {
            d10 = arcArr2[arcArr2.length - 1].mTime2;
        }
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i10 >= arcArr3.length) {
                return Double.NaN;
            }
            if (d10 <= arcArr3[i10].mTime2) {
                if (arcArr3[i10].linear) {
                    if (i9 == 0) {
                        return arcArr3[i10].getLinearX(d10);
                    }
                    return arcArr3[i10].getLinearY(d10);
                }
                arcArr3[i10].setPoint(d10);
                if (i9 == 0) {
                    return this.mArcs[i10].getX();
                }
                return this.mArcs[i10].getY();
            }
            i10++;
        }
    }
}
