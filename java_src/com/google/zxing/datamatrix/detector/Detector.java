package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public final class Detector {
    private final BitMatrix image;
    private final WhiteRectangleDetector rectangleDetector;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ResultPointsAndTransitions {
        private final ResultPoint from;
        private final ResultPoint to;
        private final int transitions;

        ResultPoint getFrom() {
            return this.from;
        }

        ResultPoint getTo() {
            return this.to;
        }

        int getTransitions() {
            return this.transitions;
        }

        public String toString() {
            return this.from + FileUtils.RES_PREFIX_STORAGE + this.to + IOUtils.DIR_SEPARATOR_UNIX + this.transitions;
        }

        private ResultPointsAndTransitions(ResultPoint resultPoint, ResultPoint resultPoint2, int i9) {
            this.from = resultPoint;
            this.to = resultPoint2;
            this.transitions = i9;
        }
    }

    /* loaded from: classes3.dex */
    private static final class ResultPointsAndTransitionsComparator implements Serializable, Comparator<ResultPointsAndTransitions> {
        private ResultPointsAndTransitionsComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ResultPointsAndTransitions resultPointsAndTransitions, ResultPointsAndTransitions resultPointsAndTransitions2) {
            return resultPointsAndTransitions.getTransitions() - resultPointsAndTransitions2.getTransitions();
        }
    }

    public Detector(BitMatrix bitMatrix) throws NotFoundException {
        this.image = bitMatrix;
        this.rectangleDetector = new WhiteRectangleDetector(bitMatrix);
    }

    private ResultPoint correctTopRight(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i9) {
        float f10 = i9;
        float distance = distance(resultPoint, resultPoint2) / f10;
        float distance2 = distance(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint3.getX()) / distance2) * distance), resultPoint4.getY() + (distance * ((resultPoint4.getY() - resultPoint3.getY()) / distance2)));
        float distance3 = distance(resultPoint, resultPoint3) / f10;
        float distance4 = distance(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint2.getX()) / distance4) * distance3), resultPoint4.getY() + (distance3 * ((resultPoint4.getY() - resultPoint2.getY()) / distance4)));
        if (isValid(resultPoint5)) {
            return (isValid(resultPoint6) && Math.abs(transitionsBetween(resultPoint3, resultPoint5).getTransitions() - transitionsBetween(resultPoint2, resultPoint5).getTransitions()) > Math.abs(transitionsBetween(resultPoint3, resultPoint6).getTransitions() - transitionsBetween(resultPoint2, resultPoint6).getTransitions())) ? resultPoint6 : resultPoint5;
        } else if (isValid(resultPoint6)) {
            return resultPoint6;
        } else {
            return null;
        }
    }

    private ResultPoint correctTopRightRectangular(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i9, int i10) {
        float distance = distance(resultPoint, resultPoint2) / i9;
        float distance2 = distance(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint3.getX()) / distance2) * distance), resultPoint4.getY() + (distance * ((resultPoint4.getY() - resultPoint3.getY()) / distance2)));
        float distance3 = distance(resultPoint, resultPoint3) / i10;
        float distance4 = distance(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint2.getX()) / distance4) * distance3), resultPoint4.getY() + (distance3 * ((resultPoint4.getY() - resultPoint2.getY()) / distance4)));
        if (isValid(resultPoint5)) {
            return (isValid(resultPoint6) && Math.abs(i9 - transitionsBetween(resultPoint3, resultPoint5).getTransitions()) + Math.abs(i10 - transitionsBetween(resultPoint2, resultPoint5).getTransitions()) > Math.abs(i9 - transitionsBetween(resultPoint3, resultPoint6).getTransitions()) + Math.abs(i10 - transitionsBetween(resultPoint2, resultPoint6).getTransitions())) ? resultPoint6 : resultPoint5;
        } else if (isValid(resultPoint6)) {
            return resultPoint6;
        } else {
            return null;
        }
    }

    private static int distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2));
    }

    private static void increment(Map<ResultPoint, Integer> map, ResultPoint resultPoint) {
        Integer num = map.get(resultPoint);
        map.put(resultPoint, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    private boolean isValid(ResultPoint resultPoint) {
        return resultPoint.getX() >= 0.0f && resultPoint.getX() < ((float) this.image.getWidth()) && resultPoint.getY() > 0.0f && resultPoint.getY() < ((float) this.image.getHeight());
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i9, int i10) throws NotFoundException {
        float f10 = i9 - 0.5f;
        float f11 = i10 - 0.5f;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i9, i10, 0.5f, 0.5f, f10, 0.5f, f10, f11, 0.5f, f11, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private ResultPointsAndTransitions transitionsBetween(ResultPoint resultPoint, ResultPoint resultPoint2) {
        int x10 = (int) resultPoint.getX();
        int y10 = (int) resultPoint.getY();
        int x11 = (int) resultPoint2.getX();
        int y11 = (int) resultPoint2.getY();
        int i9 = 0;
        boolean z10 = Math.abs(y11 - y10) > Math.abs(x11 - x10);
        if (z10) {
            y10 = x10;
            x10 = y10;
            y11 = x11;
            x11 = y11;
        }
        int abs = Math.abs(x11 - x10);
        int abs2 = Math.abs(y11 - y10);
        int i10 = (-abs) / 2;
        int i11 = y10 < y11 ? 1 : -1;
        int i12 = x10 >= x11 ? -1 : 1;
        boolean z11 = this.image.get(z10 ? y10 : x10, z10 ? x10 : y10);
        while (x10 != x11) {
            boolean z12 = this.image.get(z10 ? y10 : x10, z10 ? x10 : y10);
            if (z12 != z11) {
                i9++;
                z11 = z12;
            }
            i10 += abs2;
            if (i10 > 0) {
                if (y10 == y11) {
                    break;
                }
                y10 += i11;
                i10 -= abs;
            }
            x10 += i12;
        }
        return new ResultPointsAndTransitions(resultPoint, resultPoint2, i9);
    }

    public DetectorResult detect() throws NotFoundException {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        BitMatrix sampleGrid;
        ResultPoint[] detect = this.rectangleDetector.detect();
        ResultPoint resultPoint3 = detect[0];
        ResultPoint resultPoint4 = detect[1];
        ResultPoint resultPoint5 = detect[2];
        ResultPoint resultPoint6 = detect[3];
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(transitionsBetween(resultPoint3, resultPoint4));
        arrayList.add(transitionsBetween(resultPoint3, resultPoint5));
        arrayList.add(transitionsBetween(resultPoint4, resultPoint6));
        arrayList.add(transitionsBetween(resultPoint5, resultPoint6));
        ResultPoint resultPoint7 = null;
        Collections.sort(arrayList, new ResultPointsAndTransitionsComparator());
        ResultPointsAndTransitions resultPointsAndTransitions = (ResultPointsAndTransitions) arrayList.get(0);
        ResultPointsAndTransitions resultPointsAndTransitions2 = (ResultPointsAndTransitions) arrayList.get(1);
        HashMap hashMap = new HashMap();
        increment(hashMap, resultPointsAndTransitions.getFrom());
        increment(hashMap, resultPointsAndTransitions.getTo());
        increment(hashMap, resultPointsAndTransitions2.getFrom());
        increment(hashMap, resultPointsAndTransitions2.getTo());
        ResultPoint resultPoint8 = null;
        ResultPoint resultPoint9 = null;
        for (Map.Entry entry : hashMap.entrySet()) {
            ResultPoint resultPoint10 = (ResultPoint) entry.getKey();
            if (((Integer) entry.getValue()).intValue() == 2) {
                resultPoint8 = resultPoint10;
            } else if (resultPoint7 == null) {
                resultPoint7 = resultPoint10;
            } else {
                resultPoint9 = resultPoint10;
            }
        }
        if (resultPoint7 != null && resultPoint8 != null && resultPoint9 != null) {
            ResultPoint[] resultPointArr = {resultPoint7, resultPoint8, resultPoint9};
            ResultPoint.orderBestPatterns(resultPointArr);
            ResultPoint resultPoint11 = resultPointArr[0];
            ResultPoint resultPoint12 = resultPointArr[1];
            ResultPoint resultPoint13 = resultPointArr[2];
            if (!hashMap.containsKey(resultPoint3)) {
                resultPoint = resultPoint3;
            } else if (hashMap.containsKey(resultPoint4)) {
                resultPoint = !hashMap.containsKey(resultPoint5) ? resultPoint5 : resultPoint6;
            } else {
                resultPoint = resultPoint4;
            }
            int transitions = transitionsBetween(resultPoint13, resultPoint).getTransitions();
            int transitions2 = transitionsBetween(resultPoint11, resultPoint).getTransitions();
            if ((transitions & 1) == 1) {
                transitions++;
            }
            int i9 = transitions + 2;
            if ((transitions2 & 1) == 1) {
                transitions2++;
            }
            int i10 = transitions2 + 2;
            if (i9 * 4 < i10 * 7 && i10 * 4 < i9 * 7) {
                ResultPoint correctTopRight = correctTopRight(resultPoint12, resultPoint11, resultPoint13, resultPoint, Math.min(i10, i9));
                if (correctTopRight != null) {
                    resultPoint = correctTopRight;
                }
                int max = Math.max(transitionsBetween(resultPoint13, resultPoint).getTransitions(), transitionsBetween(resultPoint11, resultPoint).getTransitions()) + 1;
                if ((max & 1) == 1) {
                    max++;
                }
                int i11 = max;
                sampleGrid = sampleGrid(this.image, resultPoint13, resultPoint12, resultPoint11, resultPoint, i11, i11);
                resultPoint2 = resultPoint13;
            } else {
                resultPoint2 = resultPoint13;
                ResultPoint correctTopRightRectangular = correctTopRightRectangular(resultPoint12, resultPoint11, resultPoint13, resultPoint, i9, i10);
                if (correctTopRightRectangular != null) {
                    resultPoint = correctTopRightRectangular;
                }
                int transitions3 = transitionsBetween(resultPoint2, resultPoint).getTransitions();
                int transitions4 = transitionsBetween(resultPoint11, resultPoint).getTransitions();
                if ((transitions3 & 1) == 1) {
                    transitions3++;
                }
                int i12 = transitions3;
                if ((transitions4 & 1) == 1) {
                    transitions4++;
                }
                sampleGrid = sampleGrid(this.image, resultPoint2, resultPoint12, resultPoint11, resultPoint, i12, transitions4);
            }
            return new DetectorResult(sampleGrid, new ResultPoint[]{resultPoint2, resultPoint12, resultPoint11, resultPoint});
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
