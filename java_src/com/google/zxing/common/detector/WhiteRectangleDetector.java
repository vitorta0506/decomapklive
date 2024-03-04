package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
/* loaded from: classes3.dex */
public final class WhiteRectangleDetector {
    private static final int CORR = 1;
    private static final int INIT_SIZE = 10;
    private final int downInit;
    private final int height;
    private final BitMatrix image;
    private final int leftInit;
    private final int rightInit;
    private final int upInit;
    private final int width;

    public WhiteRectangleDetector(BitMatrix bitMatrix) throws NotFoundException {
        this(bitMatrix, 10, bitMatrix.getWidth() / 2, bitMatrix.getHeight() / 2);
    }

    private ResultPoint[] centerEdges(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        float x10 = resultPoint.getX();
        float y10 = resultPoint.getY();
        float x11 = resultPoint2.getX();
        float y11 = resultPoint2.getY();
        float x12 = resultPoint3.getX();
        float y12 = resultPoint3.getY();
        float x13 = resultPoint4.getX();
        float y13 = resultPoint4.getY();
        return x10 < ((float) this.width) / 2.0f ? new ResultPoint[]{new ResultPoint(x13 - 1.0f, y13 + 1.0f), new ResultPoint(x11 + 1.0f, y11 + 1.0f), new ResultPoint(x12 - 1.0f, y12 - 1.0f), new ResultPoint(x10 + 1.0f, y10 - 1.0f)} : new ResultPoint[]{new ResultPoint(x13 + 1.0f, y13 + 1.0f), new ResultPoint(x11 + 1.0f, y11 - 1.0f), new ResultPoint(x12 - 1.0f, y12 + 1.0f), new ResultPoint(x10 - 1.0f, y10 - 1.0f)};
    }

    private boolean containsBlackPoint(int i9, int i10, int i11, boolean z10) {
        if (z10) {
            while (i9 <= i10) {
                if (this.image.get(i9, i11)) {
                    return true;
                }
                i9++;
            }
            return false;
        }
        while (i9 <= i10) {
            if (this.image.get(i11, i9)) {
                return true;
            }
            i9++;
        }
        return false;
    }

    private ResultPoint getBlackPointOnSegment(float f10, float f11, float f12, float f13) {
        int round = MathUtils.round(MathUtils.distance(f10, f11, f12, f13));
        float f14 = round;
        float f15 = (f12 - f10) / f14;
        float f16 = (f13 - f11) / f14;
        for (int i9 = 0; i9 < round; i9++) {
            float f17 = i9;
            int round2 = MathUtils.round((f17 * f15) + f10);
            int round3 = MathUtils.round((f17 * f16) + f11);
            if (this.image.get(round2, round3)) {
                return new ResultPoint(round2, round3);
            }
        }
        return null;
    }

    public ResultPoint[] detect() throws NotFoundException {
        int i9 = this.leftInit;
        int i10 = this.rightInit;
        int i11 = this.upInit;
        int i12 = this.downInit;
        boolean z10 = false;
        boolean z11 = true;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        while (z11) {
            boolean z17 = true;
            boolean z18 = false;
            while (true) {
                if ((z17 || !z12) && i10 < this.width) {
                    z17 = containsBlackPoint(i11, i12, i10, false);
                    if (z17) {
                        i10++;
                        z12 = true;
                        z18 = true;
                    } else if (!z12) {
                        i10++;
                    }
                }
            }
            if (i10 < this.width) {
                boolean z19 = true;
                while (true) {
                    if ((z19 || !z13) && i12 < this.height) {
                        z19 = containsBlackPoint(i9, i10, i12, true);
                        if (z19) {
                            i12++;
                            z13 = true;
                            z18 = true;
                        } else if (!z13) {
                            i12++;
                        }
                    }
                }
                if (i12 < this.height) {
                    boolean z20 = true;
                    while (true) {
                        if ((z20 || !z14) && i9 >= 0) {
                            z20 = containsBlackPoint(i11, i12, i9, false);
                            if (z20) {
                                i9--;
                                z14 = true;
                                z18 = true;
                            } else if (!z14) {
                                i9--;
                            }
                        }
                    }
                    if (i9 >= 0) {
                        z11 = z18;
                        boolean z21 = true;
                        while (true) {
                            if ((z21 || !z16) && i11 >= 0) {
                                z21 = containsBlackPoint(i9, i10, i11, true);
                                if (z21) {
                                    i11--;
                                    z11 = true;
                                    z16 = true;
                                } else if (!z16) {
                                    i11--;
                                }
                            }
                        }
                        if (i11 >= 0) {
                            if (z11) {
                                z15 = true;
                            }
                        }
                    }
                }
            }
            z10 = true;
            break;
        }
        if (z10 || !z15) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i13 = i10 - i9;
        ResultPoint resultPoint = null;
        ResultPoint resultPoint2 = null;
        for (int i14 = 1; resultPoint2 == null && i14 < i13; i14++) {
            resultPoint2 = getBlackPointOnSegment(i9, i12 - i14, i9 + i14, i12);
        }
        if (resultPoint2 != null) {
            ResultPoint resultPoint3 = null;
            for (int i15 = 1; resultPoint3 == null && i15 < i13; i15++) {
                resultPoint3 = getBlackPointOnSegment(i9, i11 + i15, i9 + i15, i11);
            }
            if (resultPoint3 != null) {
                ResultPoint resultPoint4 = null;
                for (int i16 = 1; resultPoint4 == null && i16 < i13; i16++) {
                    resultPoint4 = getBlackPointOnSegment(i10, i11 + i16, i10 - i16, i11);
                }
                if (resultPoint4 != null) {
                    for (int i17 = 1; resultPoint == null && i17 < i13; i17++) {
                        resultPoint = getBlackPointOnSegment(i10, i12 - i17, i10 - i17, i12);
                    }
                    if (resultPoint != null) {
                        return centerEdges(resultPoint, resultPoint2, resultPoint4, resultPoint3);
                    }
                    throw NotFoundException.getNotFoundInstance();
                }
                throw NotFoundException.getNotFoundInstance();
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public WhiteRectangleDetector(BitMatrix bitMatrix, int i9, int i10, int i11) throws NotFoundException {
        this.image = bitMatrix;
        int height = bitMatrix.getHeight();
        this.height = height;
        int width = bitMatrix.getWidth();
        this.width = width;
        int i12 = i9 / 2;
        int i13 = i10 - i12;
        this.leftInit = i13;
        int i14 = i10 + i12;
        this.rightInit = i14;
        int i15 = i11 - i12;
        this.upInit = i15;
        int i16 = i11 + i12;
        this.downInit = i16;
        if (i15 < 0 || i13 < 0 || i16 >= height || i14 >= width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }
}
