package com.google.zxing.oned.rss;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;
import com.tencent.rtmp.TXLiveConstants;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public final class RSS14Reader extends AbstractRSSReader {
    private final List<Pair> possibleLeftPairs = new ArrayList();
    private final List<Pair> possibleRightPairs = new ArrayList();
    private static final int[] OUTSIDE_EVEN_TOTAL_SUBSET = {1, 10, 34, 70, 126};
    private static final int[] INSIDE_ODD_TOTAL_SUBSET = {4, 20, 48, 81};
    private static final int[] OUTSIDE_GSUM = {0, 161, VKApiCodes.CODE_CALL_LINK_OUTDATED, TXLiveConstants.PLAY_EVT_STREAM_SWITCH_SUCC, 2715};
    private static final int[] INSIDE_GSUM = {0, 336, 1036, 1516};
    private static final int[] OUTSIDE_ODD_WIDEST = {8, 6, 4, 3, 1};
    private static final int[] INSIDE_ODD_WIDEST = {2, 4, 6, 8};
    private static final int[][] FINDER_PATTERNS = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    private static void addOrTally(Collection<Pair> collection, Pair pair) {
        if (pair == null) {
            return;
        }
        boolean z10 = false;
        Iterator<Pair> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Pair next = it.next();
            if (next.getValue() == pair.getValue()) {
                next.incrementCount();
                z10 = true;
                break;
            }
        }
        if (z10) {
            return;
        }
        collection.add(pair);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
        if (r1 < 4) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003d, code lost:
        if (r1 < 4) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003f, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0041, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0042, code lost:
        r5 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void adjustOddEvenCounts(boolean r10, int r11) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.RSS14Reader.adjustOddEvenCounts(boolean, int):void");
    }

    private static boolean checkChecksum(Pair pair, Pair pair2) {
        int checksumPortion = (pair.getChecksumPortion() + (pair2.getChecksumPortion() * 16)) % 79;
        int value = (pair.getFinderPattern().getValue() * 9) + pair2.getFinderPattern().getValue();
        if (value > 72) {
            value--;
        }
        if (value > 8) {
            value--;
        }
        return checksumPortion == value;
    }

    private static Result constructResult(Pair pair, Pair pair2) {
        String valueOf = String.valueOf((pair.getValue() * 4537077) + pair2.getValue());
        StringBuilder sb2 = new StringBuilder(14);
        for (int length = 13 - valueOf.length(); length > 0; length--) {
            sb2.append('0');
        }
        sb2.append(valueOf);
        int i9 = 0;
        for (int i10 = 0; i10 < 13; i10++) {
            int charAt = sb2.charAt(i10) - '0';
            if ((i10 & 1) == 0) {
                charAt *= 3;
            }
            i9 += charAt;
        }
        int i11 = 10 - (i9 % 10);
        if (i11 == 10) {
            i11 = 0;
        }
        sb2.append(i11);
        ResultPoint[] resultPoints = pair.getFinderPattern().getResultPoints();
        ResultPoint[] resultPoints2 = pair2.getFinderPattern().getResultPoints();
        return new Result(sb2.toString(), null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_14);
    }

    private DataCharacter decodeDataCharacter(BitArray bitArray, FinderPattern finderPattern, boolean z10) throws NotFoundException {
        int[] dataCharacterCounters = getDataCharacterCounters();
        for (int i9 = 0; i9 < dataCharacterCounters.length; i9++) {
            dataCharacterCounters[i9] = 0;
        }
        if (z10) {
            OneDReader.recordPatternInReverse(bitArray, finderPattern.getStartEnd()[0], dataCharacterCounters);
        } else {
            OneDReader.recordPattern(bitArray, finderPattern.getStartEnd()[1] + 1, dataCharacterCounters);
            int i10 = 0;
            for (int length = dataCharacterCounters.length - 1; i10 < length; length--) {
                int i11 = dataCharacterCounters[i10];
                dataCharacterCounters[i10] = dataCharacterCounters[length];
                dataCharacterCounters[length] = i11;
                i10++;
            }
        }
        int i12 = z10 ? 16 : 15;
        float sum = MathUtils.sum(dataCharacterCounters) / i12;
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i13 = 0; i13 < dataCharacterCounters.length; i13++) {
            float f10 = dataCharacterCounters[i13] / sum;
            int i14 = (int) (0.5f + f10);
            if (i14 <= 0) {
                i14 = 1;
            } else if (i14 > 8) {
                i14 = 8;
            }
            int i15 = i13 / 2;
            if ((i13 & 1) == 0) {
                oddCounts[i15] = i14;
                oddRoundingErrors[i15] = f10 - i14;
            } else {
                evenCounts[i15] = i14;
                evenRoundingErrors[i15] = f10 - i14;
            }
        }
        adjustOddEvenCounts(z10, i12);
        int i16 = 0;
        int i17 = 0;
        for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
            i16 = (i16 * 9) + oddCounts[length2];
            i17 += oddCounts[length2];
        }
        int i18 = 0;
        int i19 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            i18 = (i18 * 9) + evenCounts[length3];
            i19 += evenCounts[length3];
        }
        int i20 = i16 + (i18 * 3);
        if (!z10) {
            if ((i19 & 1) == 0 && i19 <= 10 && i19 >= 4) {
                int i21 = (10 - i19) / 2;
                int i22 = INSIDE_ODD_WIDEST[i21];
                return new DataCharacter((RSSUtils.getRSSvalue(evenCounts, 9 - i22, false) * INSIDE_ODD_TOTAL_SUBSET[i21]) + RSSUtils.getRSSvalue(oddCounts, i22, true) + INSIDE_GSUM[i21], i20);
            }
            throw NotFoundException.getNotFoundInstance();
        } else if ((i17 & 1) == 0 && i17 <= 12 && i17 >= 4) {
            int i23 = (12 - i17) / 2;
            int i24 = OUTSIDE_ODD_WIDEST[i23];
            return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i24, false) * OUTSIDE_EVEN_TOTAL_SUBSET[i23]) + RSSUtils.getRSSvalue(evenCounts, 9 - i24, true) + OUTSIDE_GSUM[i23], i20);
        } else {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private Pair decodePair(BitArray bitArray, boolean z10, int i9, Map<DecodeHintType, ?> map) {
        try {
            int[] findFinderPattern = findFinderPattern(bitArray, z10);
            FinderPattern parseFoundFinderPattern = parseFoundFinderPattern(bitArray, i9, z10, findFinderPattern);
            ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
            if (resultPointCallback != null) {
                float f10 = (findFinderPattern[0] + findFinderPattern[1]) / 2.0f;
                if (z10) {
                    f10 = (bitArray.getSize() - 1) - f10;
                }
                resultPointCallback.foundPossibleResultPoint(new ResultPoint(f10, i9));
            }
            DataCharacter decodeDataCharacter = decodeDataCharacter(bitArray, parseFoundFinderPattern, true);
            DataCharacter decodeDataCharacter2 = decodeDataCharacter(bitArray, parseFoundFinderPattern, false);
            return new Pair((decodeDataCharacter.getValue() * 1597) + decodeDataCharacter2.getValue(), decodeDataCharacter.getChecksumPortion() + (decodeDataCharacter2.getChecksumPortion() * 4), parseFoundFinderPattern);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private int[] findFinderPattern(BitArray bitArray, boolean z10) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        int i9 = 0;
        boolean z11 = false;
        while (i9 < size) {
            z11 = !bitArray.get(i9);
            if (z10 == z11) {
                break;
            }
            i9++;
        }
        int i10 = i9;
        int i11 = 0;
        while (i9 < size) {
            if (bitArray.get(i9) != z11) {
                decodeFinderCounters[i11] = decodeFinderCounters[i11] + 1;
            } else {
                if (i11 != 3) {
                    i11++;
                } else if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                    return new int[]{i10, i9};
                } else {
                    i10 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i11--;
                }
                decodeFinderCounters[i11] = 1;
                z11 = !z11;
            }
            i9++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private FinderPattern parseFoundFinderPattern(BitArray bitArray, int i9, boolean z10, int[] iArr) throws NotFoundException {
        int i10;
        int i11;
        boolean z11 = bitArray.get(iArr[0]);
        int i12 = iArr[0] - 1;
        while (i12 >= 0 && z11 != bitArray.get(i12)) {
            i12--;
        }
        int i13 = i12 + 1;
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = iArr[0] - i13;
        int parseFinderValue = AbstractRSSReader.parseFinderValue(decodeFinderCounters, FINDER_PATTERNS);
        int i14 = iArr[1];
        if (z10) {
            i10 = (bitArray.getSize() - 1) - i14;
            i11 = (bitArray.getSize() - 1) - i13;
        } else {
            i10 = i14;
            i11 = i13;
        }
        return new FinderPattern(parseFinderValue, new int[]{i13, iArr[1]}, i11, i10, i9);
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i9, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        addOrTally(this.possibleLeftPairs, decodePair(bitArray, false, i9, map));
        bitArray.reverse();
        addOrTally(this.possibleRightPairs, decodePair(bitArray, true, i9, map));
        bitArray.reverse();
        for (Pair pair : this.possibleLeftPairs) {
            if (pair.getCount() > 1) {
                for (Pair pair2 : this.possibleRightPairs) {
                    if (pair2.getCount() > 1 && checkChecksum(pair, pair2)) {
                        return constructResult(pair, pair2);
                    }
                }
                continue;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.possibleLeftPairs.clear();
        this.possibleRightPairs.clear();
    }
}
