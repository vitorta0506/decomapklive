package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.qrcode.decoder.Version;
import java.util.Map;
/* loaded from: classes3.dex */
public class Detector {
    private final BitMatrix image;
    private ResultPointCallback resultPointCallback;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private float calculateModuleSizeOneWay(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float sizeOfBlackWhiteBlackRunBothWays = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint.getX(), (int) resultPoint.getY(), (int) resultPoint2.getX(), (int) resultPoint2.getY());
        float sizeOfBlackWhiteBlackRunBothWays2 = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint2.getX(), (int) resultPoint2.getY(), (int) resultPoint.getX(), (int) resultPoint.getY());
        return Float.isNaN(sizeOfBlackWhiteBlackRunBothWays) ? sizeOfBlackWhiteBlackRunBothWays2 / 7.0f : Float.isNaN(sizeOfBlackWhiteBlackRunBothWays2) ? sizeOfBlackWhiteBlackRunBothWays / 7.0f : (sizeOfBlackWhiteBlackRunBothWays + sizeOfBlackWhiteBlackRunBothWays2) / 14.0f;
    }

    private static int computeDimension(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, float f10) throws NotFoundException {
        int round = ((MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2) / f10) + MathUtils.round(ResultPoint.distance(resultPoint, resultPoint3) / f10)) / 2) + 7;
        int i9 = round & 3;
        if (i9 != 0) {
            if (i9 != 2) {
                if (i9 != 3) {
                    return round;
                }
                throw NotFoundException.getNotFoundInstance();
            }
            return round - 1;
        }
        return round + 1;
    }

    private static PerspectiveTransform createTransform(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i9) {
        float x10;
        float y10;
        float f10;
        float f11 = i9 - 3.5f;
        if (resultPoint4 != null) {
            x10 = resultPoint4.getX();
            y10 = resultPoint4.getY();
            f10 = f11 - 3.0f;
        } else {
            x10 = (resultPoint2.getX() - resultPoint.getX()) + resultPoint3.getX();
            y10 = (resultPoint2.getY() - resultPoint.getY()) + resultPoint3.getY();
            f10 = f11;
        }
        return PerspectiveTransform.quadrilateralToQuadrilateral(3.5f, 3.5f, f11, 3.5f, f10, f10, 3.5f, f11, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), x10, y10, resultPoint3.getX(), resultPoint3.getY());
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, PerspectiveTransform perspectiveTransform, int i9) throws NotFoundException {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i9, i9, perspectiveTransform);
    }

    private float sizeOfBlackWhiteBlackRun(int i9, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        Detector detector;
        boolean z10;
        boolean z11;
        int i18 = 1;
        boolean z12 = Math.abs(i12 - i10) > Math.abs(i11 - i9);
        if (z12) {
            i14 = i9;
            i13 = i10;
            i16 = i11;
            i15 = i12;
        } else {
            i13 = i9;
            i14 = i10;
            i15 = i11;
            i16 = i12;
        }
        int abs = Math.abs(i15 - i13);
        int abs2 = Math.abs(i16 - i14);
        int i19 = (-abs) / 2;
        int i20 = i13 < i15 ? 1 : -1;
        int i21 = i14 < i16 ? 1 : -1;
        int i22 = i15 + i20;
        int i23 = i13;
        int i24 = i14;
        int i25 = 0;
        while (true) {
            if (i23 == i22) {
                i17 = i22;
                break;
            }
            int i26 = z12 ? i24 : i23;
            int i27 = z12 ? i23 : i24;
            if (i25 == i18) {
                detector = this;
                z10 = z12;
                i17 = i22;
                z11 = true;
            } else {
                detector = this;
                z10 = z12;
                i17 = i22;
                z11 = false;
            }
            if (z11 == detector.image.get(i26, i27)) {
                if (i25 == 2) {
                    return MathUtils.distance(i23, i24, i13, i14);
                }
                i25++;
            }
            i19 += abs2;
            if (i19 > 0) {
                if (i24 == i16) {
                    break;
                }
                i24 += i21;
                i19 -= abs;
            }
            i23 += i20;
            i22 = i17;
            z12 = z10;
            i18 = 1;
        }
        if (i25 == 2) {
            return MathUtils.distance(i17, i16, i13, i14);
        }
        return Float.NaN;
    }

    private float sizeOfBlackWhiteBlackRunBothWays(int i9, int i10, int i11, int i12) {
        float f10;
        float f11;
        float sizeOfBlackWhiteBlackRun = sizeOfBlackWhiteBlackRun(i9, i10, i11, i12);
        int i13 = i9 - (i11 - i9);
        int i14 = 0;
        if (i13 < 0) {
            f10 = i9 / (i9 - i13);
            i13 = 0;
        } else if (i13 >= this.image.getWidth()) {
            f10 = ((this.image.getWidth() - 1) - i9) / (i13 - i9);
            i13 = this.image.getWidth() - 1;
        } else {
            f10 = 1.0f;
        }
        float f12 = i10;
        int i15 = (int) (f12 - ((i12 - i10) * f10));
        if (i15 < 0) {
            f11 = f12 / (i10 - i15);
        } else if (i15 >= this.image.getHeight()) {
            f11 = ((this.image.getHeight() - 1) - i10) / (i15 - i10);
            i14 = this.image.getHeight() - 1;
        } else {
            i14 = i15;
            f11 = 1.0f;
        }
        return (sizeOfBlackWhiteBlackRun + sizeOfBlackWhiteBlackRun(i9, i10, (int) (i9 + ((i13 - i9) * f11)), i14)) - 1.0f;
    }

    protected final float calculateModuleSize(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        return (calculateModuleSizeOneWay(resultPoint, resultPoint2) + calculateModuleSizeOneWay(resultPoint, resultPoint3)) / 2.0f;
    }

    public DetectorResult detect() throws NotFoundException, FormatException {
        return detect(null);
    }

    protected final AlignmentPattern findAlignmentInRegion(float f10, int i9, int i10, float f11) throws NotFoundException {
        int i11 = (int) (f11 * f10);
        int max = Math.max(0, i9 - i11);
        int min = Math.min(this.image.getWidth() - 1, i9 + i11) - max;
        float f12 = 3.0f * f10;
        if (min >= f12) {
            int max2 = Math.max(0, i10 - i11);
            int min2 = Math.min(this.image.getHeight() - 1, i10 + i11) - max2;
            if (min2 >= f12) {
                return new AlignmentPatternFinder(this.image, max, max2, min, min2, f10, this.resultPointCallback).find();
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final BitMatrix getImage() {
        return this.image;
    }

    protected final ResultPointCallback getResultPointCallback() {
        return this.resultPointCallback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final DetectorResult processFinderPatternInfo(FinderPatternInfo finderPatternInfo) throws NotFoundException, FormatException {
        FinderPattern topLeft = finderPatternInfo.getTopLeft();
        FinderPattern topRight = finderPatternInfo.getTopRight();
        FinderPattern bottomLeft = finderPatternInfo.getBottomLeft();
        float calculateModuleSize = calculateModuleSize(topLeft, topRight, bottomLeft);
        if (calculateModuleSize >= 1.0f) {
            int computeDimension = computeDimension(topLeft, topRight, bottomLeft, calculateModuleSize);
            Version provisionalVersionForDimension = Version.getProvisionalVersionForDimension(computeDimension);
            int dimensionForVersion = provisionalVersionForDimension.getDimensionForVersion() - 7;
            AlignmentPattern alignmentPattern = null;
            if (provisionalVersionForDimension.getAlignmentPatternCenters().length > 0) {
                float x10 = (topRight.getX() - topLeft.getX()) + bottomLeft.getX();
                float y10 = (topRight.getY() - topLeft.getY()) + bottomLeft.getY();
                float f10 = 1.0f - (3.0f / dimensionForVersion);
                int x11 = (int) (topLeft.getX() + ((x10 - topLeft.getX()) * f10));
                int y11 = (int) (topLeft.getY() + (f10 * (y10 - topLeft.getY())));
                for (int i9 = 4; i9 <= 16; i9 <<= 1) {
                    try {
                        alignmentPattern = findAlignmentInRegion(calculateModuleSize, x11, y11, i9);
                        break;
                    } catch (NotFoundException unused) {
                    }
                }
            }
            return new DetectorResult(sampleGrid(this.image, createTransform(topLeft, topRight, bottomLeft, alignmentPattern, computeDimension), computeDimension), alignmentPattern == null ? new ResultPoint[]{bottomLeft, topLeft, topRight} : new ResultPoint[]{bottomLeft, topLeft, topRight, alignmentPattern});
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final DetectorResult detect(Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        this.resultPointCallback = resultPointCallback;
        return processFinderPatternInfo(new FinderPatternFinder(this.image, resultPointCallback).find(map));
    }
}
