package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.detector.FinderPattern;
import com.google.zxing.qrcode.detector.FinderPatternFinder;
import com.google.zxing.qrcode.detector.FinderPatternInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
final class MultiFinderPatternFinder extends FinderPatternFinder {
    private static final float DIFF_MODSIZE_CUTOFF = 0.5f;
    private static final float DIFF_MODSIZE_CUTOFF_PERCENT = 0.05f;
    private static final FinderPatternInfo[] EMPTY_RESULT_ARRAY = new FinderPatternInfo[0];
    private static final float MAX_MODULE_COUNT_PER_EDGE = 180.0f;
    private static final float MIN_MODULE_COUNT_PER_EDGE = 9.0f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ModuleSizeComparator implements Serializable, Comparator<FinderPattern> {
        private ModuleSizeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            double estimatedModuleSize = finderPattern2.getEstimatedModuleSize() - finderPattern.getEstimatedModuleSize();
            if (estimatedModuleSize < 0.0d) {
                return -1;
            }
            return estimatedModuleSize > 0.0d ? 1 : 0;
        }
    }

    MultiFinderPatternFinder(BitMatrix bitMatrix) {
        super(bitMatrix);
    }

    private FinderPattern[][] selectMutipleBestPatterns() throws NotFoundException {
        List<FinderPattern> possibleCenters = getPossibleCenters();
        int size = possibleCenters.size();
        int i9 = 3;
        if (size >= 3) {
            char c10 = 0;
            if (size == 3) {
                return new FinderPattern[][]{new FinderPattern[]{possibleCenters.get(0), possibleCenters.get(1), possibleCenters.get(2)}};
            }
            Collections.sort(possibleCenters, new ModuleSizeComparator());
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (i10 < size - 2) {
                FinderPattern finderPattern = possibleCenters.get(i10);
                if (finderPattern != null) {
                    int i11 = i10 + 1;
                    while (i11 < size - 1) {
                        FinderPattern finderPattern2 = possibleCenters.get(i11);
                        if (finderPattern2 != null) {
                            float estimatedModuleSize = (finderPattern.getEstimatedModuleSize() - finderPattern2.getEstimatedModuleSize()) / Math.min(finderPattern.getEstimatedModuleSize(), finderPattern2.getEstimatedModuleSize());
                            float f10 = 0.05f;
                            float f11 = 0.5f;
                            if (Math.abs(finderPattern.getEstimatedModuleSize() - finderPattern2.getEstimatedModuleSize()) <= 0.5f || estimatedModuleSize < 0.05f) {
                                int i12 = i11 + 1;
                                while (i12 < size) {
                                    FinderPattern finderPattern3 = possibleCenters.get(i12);
                                    if (finderPattern3 != null) {
                                        float estimatedModuleSize2 = (finderPattern2.getEstimatedModuleSize() - finderPattern3.getEstimatedModuleSize()) / Math.min(finderPattern2.getEstimatedModuleSize(), finderPattern3.getEstimatedModuleSize());
                                        if (Math.abs(finderPattern2.getEstimatedModuleSize() - finderPattern3.getEstimatedModuleSize()) <= f11 || estimatedModuleSize2 < f10) {
                                            FinderPattern[] finderPatternArr = new FinderPattern[i9];
                                            finderPatternArr[c10] = finderPattern;
                                            finderPatternArr[1] = finderPattern2;
                                            finderPatternArr[2] = finderPattern3;
                                            ResultPoint.orderBestPatterns(finderPatternArr);
                                            FinderPatternInfo finderPatternInfo = new FinderPatternInfo(finderPatternArr);
                                            float distance = ResultPoint.distance(finderPatternInfo.getTopLeft(), finderPatternInfo.getBottomLeft());
                                            float distance2 = ResultPoint.distance(finderPatternInfo.getTopRight(), finderPatternInfo.getBottomLeft());
                                            float distance3 = ResultPoint.distance(finderPatternInfo.getTopLeft(), finderPatternInfo.getTopRight());
                                            float estimatedModuleSize3 = (distance + distance3) / (finderPattern.getEstimatedModuleSize() * 2.0f);
                                            if (estimatedModuleSize3 <= MAX_MODULE_COUNT_PER_EDGE && estimatedModuleSize3 >= MIN_MODULE_COUNT_PER_EDGE && Math.abs((distance - distance3) / Math.min(distance, distance3)) < 0.1f) {
                                                float sqrt = (float) Math.sqrt((distance * distance) + (distance3 * distance3));
                                                if (Math.abs((distance2 - sqrt) / Math.min(distance2, sqrt)) < 0.1f) {
                                                    arrayList.add(finderPatternArr);
                                                }
                                            }
                                        }
                                    }
                                    i12++;
                                    i9 = 3;
                                    c10 = 0;
                                    f10 = 0.05f;
                                    f11 = 0.5f;
                                }
                            }
                        }
                        i11++;
                        i9 = 3;
                        c10 = 0;
                    }
                }
                i10++;
                i9 = 3;
                c10 = 0;
            }
            if (!arrayList.isEmpty()) {
                return (FinderPattern[][]) arrayList.toArray(new FinderPattern[arrayList.size()]);
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public FinderPatternInfo[] findMulti(Map<DecodeHintType, ?> map) throws NotFoundException {
        boolean z10 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        BitMatrix image = getImage();
        int height = image.getHeight();
        int width = image.getWidth();
        int i9 = ((height * 3) / 388 < 3 || z10) ? 3 : 3;
        int[] iArr = new int[5];
        for (int i10 = i9 - 1; i10 < height; i10 += i9) {
            clearCounts(iArr);
            int i11 = 0;
            for (int i12 = 0; i12 < width; i12++) {
                if (image.get(i12, i10)) {
                    if ((i11 & 1) == 1) {
                        i11++;
                    }
                    iArr[i11] = iArr[i11] + 1;
                } else if ((i11 & 1) != 0) {
                    iArr[i11] = iArr[i11] + 1;
                } else if (i11 == 4) {
                    if (FinderPatternFinder.foundPatternCross(iArr) && handlePossibleCenter(iArr, i10, i12)) {
                        clearCounts(iArr);
                        i11 = 0;
                    } else {
                        shiftCounts2(iArr);
                        i11 = 3;
                    }
                } else {
                    i11++;
                    iArr[i11] = iArr[i11] + 1;
                }
            }
            if (FinderPatternFinder.foundPatternCross(iArr)) {
                handlePossibleCenter(iArr, i10, width);
            }
        }
        FinderPattern[][] selectMutipleBestPatterns = selectMutipleBestPatterns();
        ArrayList arrayList = new ArrayList();
        for (FinderPattern[] finderPatternArr : selectMutipleBestPatterns) {
            ResultPoint.orderBestPatterns(finderPatternArr);
            arrayList.add(new FinderPatternInfo(finderPatternArr));
        }
        if (arrayList.isEmpty()) {
            return EMPTY_RESULT_ARRAY;
        }
        return (FinderPatternInfo[]) arrayList.toArray(new FinderPatternInfo[arrayList.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MultiFinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        super(bitMatrix, resultPointCallback);
    }
}
