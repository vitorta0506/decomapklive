package com.google.zxing.aztec.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.tencent.rtmp.TXLiveConstants;
import kotlin.text.Typography;
/* loaded from: classes3.dex */
public final class Detector {
    private static final int[] EXPECTED_CORNER_BITS = {3808, 476, TXLiveConstants.PLAY_WARNING_VIDEO_DISCONTINUITY, 1799};
    private boolean compact;
    private final BitMatrix image;
    private int nbCenterLayers;
    private int nbDataBlocks;
    private int nbLayers;
    private int shift;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class Point {

        /* renamed from: x  reason: collision with root package name */
        private final int f15840x;

        /* renamed from: y  reason: collision with root package name */
        private final int f15841y;

        Point(int i9, int i10) {
            this.f15840x = i9;
            this.f15841y = i10;
        }

        int getX() {
            return this.f15840x;
        }

        int getY() {
            return this.f15841y;
        }

        ResultPoint toResultPoint() {
            return new ResultPoint(getX(), getY());
        }

        public String toString() {
            return "<" + this.f15840x + ' ' + this.f15841y + Typography.greater;
        }
    }

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private static float distance(Point point, Point point2) {
        return MathUtils.distance(point.getX(), point.getY(), point2.getX(), point2.getY());
    }

    private static ResultPoint[] expandSquare(ResultPoint[] resultPointArr, int i9, int i10) {
        float f10 = i10 / (i9 * 2.0f);
        float x10 = resultPointArr[0].getX() - resultPointArr[2].getX();
        float y10 = resultPointArr[0].getY() - resultPointArr[2].getY();
        float x11 = (resultPointArr[0].getX() + resultPointArr[2].getX()) / 2.0f;
        float y11 = (resultPointArr[0].getY() + resultPointArr[2].getY()) / 2.0f;
        float f11 = x10 * f10;
        float f12 = y10 * f10;
        ResultPoint resultPoint = new ResultPoint(x11 + f11, y11 + f12);
        ResultPoint resultPoint2 = new ResultPoint(x11 - f11, y11 - f12);
        float x12 = resultPointArr[1].getX() - resultPointArr[3].getX();
        float y12 = resultPointArr[1].getY() - resultPointArr[3].getY();
        float x13 = (resultPointArr[1].getX() + resultPointArr[3].getX()) / 2.0f;
        float y13 = (resultPointArr[1].getY() + resultPointArr[3].getY()) / 2.0f;
        float f13 = x12 * f10;
        float f14 = f10 * y12;
        return new ResultPoint[]{resultPoint, new ResultPoint(x13 + f13, y13 + f14), resultPoint2, new ResultPoint(x13 - f13, y13 - f14)};
    }

    private void extractParameters(ResultPoint[] resultPointArr) throws NotFoundException {
        long j10;
        long j11;
        if (isValid(resultPointArr[0]) && isValid(resultPointArr[1]) && isValid(resultPointArr[2]) && isValid(resultPointArr[3])) {
            int i9 = this.nbCenterLayers * 2;
            int[] iArr = {sampleLine(resultPointArr[0], resultPointArr[1], i9), sampleLine(resultPointArr[1], resultPointArr[2], i9), sampleLine(resultPointArr[2], resultPointArr[3], i9), sampleLine(resultPointArr[3], resultPointArr[0], i9)};
            this.shift = getRotation(iArr, i9);
            long j12 = 0;
            for (int i10 = 0; i10 < 4; i10++) {
                int i11 = iArr[(this.shift + i10) % 4];
                if (this.compact) {
                    j10 = j12 << 7;
                    j11 = (i11 >> 1) & 127;
                } else {
                    j10 = j12 << 10;
                    j11 = ((i11 >> 2) & 992) + ((i11 >> 1) & 31);
                }
                j12 = j10 + j11;
            }
            int correctedParameterData = getCorrectedParameterData(j12, this.compact);
            if (this.compact) {
                this.nbLayers = (correctedParameterData >> 6) + 1;
                this.nbDataBlocks = (correctedParameterData & 63) + 1;
                return;
            }
            this.nbLayers = (correctedParameterData >> 11) + 1;
            this.nbDataBlocks = (correctedParameterData & 2047) + 1;
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private ResultPoint[] getBullsEyeCorners(Point point) throws NotFoundException {
        this.nbCenterLayers = 1;
        Point point2 = point;
        Point point3 = point2;
        Point point4 = point3;
        Point point5 = point4;
        boolean z10 = true;
        while (this.nbCenterLayers < 9) {
            Point firstDifferent = getFirstDifferent(point2, z10, 1, -1);
            Point firstDifferent2 = getFirstDifferent(point3, z10, 1, 1);
            Point firstDifferent3 = getFirstDifferent(point4, z10, -1, 1);
            Point firstDifferent4 = getFirstDifferent(point5, z10, -1, -1);
            if (this.nbCenterLayers > 2) {
                double distance = (distance(firstDifferent4, firstDifferent) * this.nbCenterLayers) / (distance(point5, point2) * (this.nbCenterLayers + 2));
                if (distance < 0.75d || distance > 1.25d || !isWhiteOrBlackRectangle(firstDifferent, firstDifferent2, firstDifferent3, firstDifferent4)) {
                    break;
                }
            }
            z10 = !z10;
            this.nbCenterLayers++;
            point5 = firstDifferent4;
            point2 = firstDifferent;
            point3 = firstDifferent2;
            point4 = firstDifferent3;
        }
        int i9 = this.nbCenterLayers;
        if (i9 != 5 && i9 != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.compact = i9 == 5;
        ResultPoint[] resultPointArr = {new ResultPoint(point2.getX() + 0.5f, point2.getY() - 0.5f), new ResultPoint(point3.getX() + 0.5f, point3.getY() + 0.5f), new ResultPoint(point4.getX() - 0.5f, point4.getY() + 0.5f), new ResultPoint(point5.getX() - 0.5f, point5.getY() - 0.5f)};
        int i10 = this.nbCenterLayers;
        return expandSquare(resultPointArr, (i10 * 2) - 3, i10 * 2);
    }

    private int getColor(Point point, Point point2) {
        float distance = distance(point, point2);
        float x10 = (point2.getX() - point.getX()) / distance;
        float y10 = (point2.getY() - point.getY()) / distance;
        float x11 = point.getX();
        float y11 = point.getY();
        boolean z10 = this.image.get(point.getX(), point.getY());
        int ceil = (int) Math.ceil(distance);
        int i9 = 0;
        for (int i10 = 0; i10 < ceil; i10++) {
            x11 += x10;
            y11 += y10;
            if (this.image.get(MathUtils.round(x11), MathUtils.round(y11)) != z10) {
                i9++;
            }
        }
        float f10 = i9 / distance;
        if (f10 <= 0.1f || f10 >= 0.9f) {
            return (f10 <= 0.1f) == z10 ? 1 : -1;
        }
        return 0;
    }

    private static int getCorrectedParameterData(long j10, boolean z10) throws NotFoundException {
        int i9;
        int i10;
        if (z10) {
            i9 = 7;
            i10 = 2;
        } else {
            i9 = 10;
            i10 = 4;
        }
        int i11 = i9 - i10;
        int[] iArr = new int[i9];
        for (int i12 = i9 - 1; i12 >= 0; i12--) {
            iArr[i12] = ((int) j10) & 15;
            j10 >>= 4;
        }
        try {
            new ReedSolomonDecoder(GenericGF.AZTEC_PARAM).decode(iArr, i11);
            int i13 = 0;
            for (int i14 = 0; i14 < i10; i14++) {
                i13 = (i13 << 4) + iArr[i14];
            }
            return i13;
        } catch (ReedSolomonException unused) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private int getDimension() {
        if (this.compact) {
            return (this.nbLayers * 4) + 11;
        }
        int i9 = this.nbLayers;
        return i9 <= 4 ? (i9 * 4) + 15 : (i9 * 4) + ((((i9 - 4) / 8) + 1) * 2) + 15;
    }

    private Point getFirstDifferent(Point point, boolean z10, int i9, int i10) {
        int x10 = point.getX() + i9;
        int y10 = point.getY();
        while (true) {
            y10 += i10;
            if (!isValid(x10, y10) || this.image.get(x10, y10) != z10) {
                break;
            }
            x10 += i9;
        }
        int i11 = x10 - i9;
        int i12 = y10 - i10;
        while (isValid(i11, i12) && this.image.get(i11, i12) == z10) {
            i11 += i9;
        }
        int i13 = i11 - i9;
        while (isValid(i13, i12) && this.image.get(i13, i12) == z10) {
            i12 += i10;
        }
        return new Point(i13, i12 - i10);
    }

    private Point getMatrixCenter() {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        ResultPoint resultPoint4;
        ResultPoint resultPoint5;
        ResultPoint resultPoint6;
        ResultPoint resultPoint7;
        ResultPoint resultPoint8;
        try {
            ResultPoint[] detect = new WhiteRectangleDetector(this.image).detect();
            resultPoint3 = detect[0];
            resultPoint4 = detect[1];
            resultPoint2 = detect[2];
            resultPoint = detect[3];
        } catch (NotFoundException unused) {
            int width = this.image.getWidth() / 2;
            int height = this.image.getHeight() / 2;
            int i9 = width + 7;
            int i10 = height - 7;
            ResultPoint resultPoint9 = getFirstDifferent(new Point(i9, i10), false, 1, -1).toResultPoint();
            int i11 = height + 7;
            ResultPoint resultPoint10 = getFirstDifferent(new Point(i9, i11), false, 1, 1).toResultPoint();
            int i12 = width - 7;
            ResultPoint resultPoint11 = getFirstDifferent(new Point(i12, i11), false, -1, 1).toResultPoint();
            resultPoint = getFirstDifferent(new Point(i12, i10), false, -1, -1).toResultPoint();
            resultPoint2 = resultPoint11;
            resultPoint3 = resultPoint9;
            resultPoint4 = resultPoint10;
        }
        int round = MathUtils.round((((resultPoint3.getX() + resultPoint.getX()) + resultPoint4.getX()) + resultPoint2.getX()) / 4.0f);
        int round2 = MathUtils.round((((resultPoint3.getY() + resultPoint.getY()) + resultPoint4.getY()) + resultPoint2.getY()) / 4.0f);
        try {
            ResultPoint[] detect2 = new WhiteRectangleDetector(this.image, 15, round, round2).detect();
            resultPoint5 = detect2[0];
            resultPoint6 = detect2[1];
            resultPoint7 = detect2[2];
            resultPoint8 = detect2[3];
        } catch (NotFoundException unused2) {
            int i13 = round + 7;
            int i14 = round2 - 7;
            resultPoint5 = getFirstDifferent(new Point(i13, i14), false, 1, -1).toResultPoint();
            int i15 = round2 + 7;
            resultPoint6 = getFirstDifferent(new Point(i13, i15), false, 1, 1).toResultPoint();
            int i16 = round - 7;
            resultPoint7 = getFirstDifferent(new Point(i16, i15), false, -1, 1).toResultPoint();
            resultPoint8 = getFirstDifferent(new Point(i16, i14), false, -1, -1).toResultPoint();
        }
        return new Point(MathUtils.round((((resultPoint5.getX() + resultPoint8.getX()) + resultPoint6.getX()) + resultPoint7.getX()) / 4.0f), MathUtils.round((((resultPoint5.getY() + resultPoint8.getY()) + resultPoint6.getY()) + resultPoint7.getY()) / 4.0f));
    }

    private ResultPoint[] getMatrixCornerPoints(ResultPoint[] resultPointArr) {
        return expandSquare(resultPointArr, this.nbCenterLayers * 2, getDimension());
    }

    private static int getRotation(int[] iArr, int i9) throws NotFoundException {
        int i10 = 0;
        for (int i11 : iArr) {
            i10 = (i10 << 3) + ((i11 >> (i9 - 2)) << 1) + (i11 & 1);
        }
        int i12 = ((i10 & 1) << 11) + (i10 >> 1);
        for (int i13 = 0; i13 < 4; i13++) {
            if (Integer.bitCount(EXPECTED_CORNER_BITS[i13] ^ i12) <= 2) {
                return i13;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private boolean isValid(int i9, int i10) {
        return i9 >= 0 && i9 < this.image.getWidth() && i10 > 0 && i10 < this.image.getHeight();
    }

    private boolean isWhiteOrBlackRectangle(Point point, Point point2, Point point3, Point point4) {
        Point point5 = new Point(point.getX() - 3, point.getY() + 3);
        Point point6 = new Point(point2.getX() - 3, point2.getY() - 3);
        Point point7 = new Point(point3.getX() + 3, point3.getY() - 3);
        Point point8 = new Point(point4.getX() + 3, point4.getY() + 3);
        int color = getColor(point8, point5);
        return color != 0 && getColor(point5, point6) == color && getColor(point6, point7) == color && getColor(point7, point8) == color;
    }

    private BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) throws NotFoundException {
        GridSampler gridSampler = GridSampler.getInstance();
        int dimension = getDimension();
        float f10 = dimension / 2.0f;
        int i9 = this.nbCenterLayers;
        float f11 = f10 - i9;
        float f12 = f10 + i9;
        return gridSampler.sampleGrid(bitMatrix, dimension, dimension, f11, f11, f12, f11, f12, f12, f11, f12, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint4.getX(), resultPoint4.getY());
    }

    private int sampleLine(ResultPoint resultPoint, ResultPoint resultPoint2, int i9) {
        float distance = distance(resultPoint, resultPoint2);
        float f10 = distance / i9;
        float x10 = resultPoint.getX();
        float y10 = resultPoint.getY();
        float x11 = ((resultPoint2.getX() - resultPoint.getX()) * f10) / distance;
        float y11 = (f10 * (resultPoint2.getY() - resultPoint.getY())) / distance;
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            float f11 = i11;
            if (this.image.get(MathUtils.round((f11 * x11) + x10), MathUtils.round((f11 * y11) + y10))) {
                i10 |= 1 << ((i9 - i11) - 1);
            }
        }
        return i10;
    }

    public AztecDetectorResult detect() throws NotFoundException {
        return detect(false);
    }

    private static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private boolean isValid(ResultPoint resultPoint) {
        return isValid(MathUtils.round(resultPoint.getX()), MathUtils.round(resultPoint.getY()));
    }

    public AztecDetectorResult detect(boolean z10) throws NotFoundException {
        ResultPoint[] bullsEyeCorners = getBullsEyeCorners(getMatrixCenter());
        if (z10) {
            ResultPoint resultPoint = bullsEyeCorners[0];
            bullsEyeCorners[0] = bullsEyeCorners[2];
            bullsEyeCorners[2] = resultPoint;
        }
        extractParameters(bullsEyeCorners);
        BitMatrix bitMatrix = this.image;
        int i9 = this.shift;
        return new AztecDetectorResult(sampleGrid(bitMatrix, bullsEyeCorners[i9 % 4], bullsEyeCorners[(i9 + 1) % 4], bullsEyeCorners[(i9 + 2) % 4], bullsEyeCorners[(i9 + 3) % 4]), getMatrixCornerPoints(bullsEyeCorners), this.compact, this.nbDataBlocks, this.nbLayers);
    }
}
