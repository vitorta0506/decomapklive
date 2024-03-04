package com.google.zxing.oned.rss;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;
/* loaded from: classes3.dex */
public abstract class AbstractRSSReader extends OneDReader {
    private static final float MAX_AVG_VARIANCE = 0.2f;
    private static final float MAX_FINDER_PATTERN_RATIO = 0.89285713f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.45f;
    private static final float MIN_FINDER_PATTERN_RATIO = 0.7916667f;
    private final int[] dataCharacterCounters;
    private final int[] evenCounts;
    private final int[] oddCounts;
    private final int[] decodeFinderCounters = new int[4];
    private final float[] oddRoundingErrors = new float[4];
    private final float[] evenRoundingErrors = new float[4];

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractRSSReader() {
        int[] iArr = new int[8];
        this.dataCharacterCounters = iArr;
        this.oddCounts = new int[iArr.length / 2];
        this.evenCounts = new int[iArr.length / 2];
    }

    @Deprecated
    protected static int count(int[] iArr) {
        return MathUtils.sum(iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void decrement(int[] iArr, float[] fArr) {
        int i9 = 0;
        float f10 = fArr[0];
        for (int i10 = 1; i10 < iArr.length; i10++) {
            if (fArr[i10] < f10) {
                f10 = fArr[i10];
                i9 = i10;
            }
        }
        iArr[i9] = iArr[i9] - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void increment(int[] iArr, float[] fArr) {
        int i9 = 0;
        float f10 = fArr[0];
        for (int i10 = 1; i10 < iArr.length; i10++) {
            if (fArr[i10] > f10) {
                f10 = fArr[i10];
                i9 = i10;
            }
        }
        iArr[i9] = iArr[i9] + 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isFinderPattern(int[] iArr) {
        int i9;
        float f10 = (iArr[0] + iArr[1]) / ((iArr[2] + i9) + iArr[3]);
        if (f10 >= MIN_FINDER_PATTERN_RATIO && f10 <= MAX_FINDER_PATTERN_RATIO) {
            int i10 = Integer.MAX_VALUE;
            int i11 = Integer.MIN_VALUE;
            for (int i12 : iArr) {
                if (i12 > i11) {
                    i11 = i12;
                }
                if (i12 < i10) {
                    i10 = i12;
                }
            }
            if (i11 < i10 * 10) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int parseFinderValue(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i9 = 0; i9 < iArr2.length; i9++) {
            if (OneDReader.patternMatchVariance(iArr, iArr2[i9], MAX_INDIVIDUAL_VARIANCE) < 0.2f) {
                return i9;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int[] getDataCharacterCounters() {
        return this.dataCharacterCounters;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int[] getDecodeFinderCounters() {
        return this.decodeFinderCounters;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int[] getEvenCounts() {
        return this.evenCounts;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float[] getEvenRoundingErrors() {
        return this.evenRoundingErrors;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int[] getOddCounts() {
        return this.oddCounts;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float[] getOddRoundingErrors() {
        return this.oddRoundingErrors;
    }
}
