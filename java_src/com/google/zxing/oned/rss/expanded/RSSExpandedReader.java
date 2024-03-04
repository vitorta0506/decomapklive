package com.google.zxing.oned.rss.expanded;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;
import com.google.zxing.oned.rss.AbstractRSSReader;
import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;
import com.google.zxing.oned.rss.RSSUtils;
import com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import com.tencent.thumbplayer.core.common.TPPixelFormat;
import com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public final class RSSExpandedReader extends AbstractRSSReader {
    private static final int FINDER_PAT_A = 0;
    private static final int FINDER_PAT_B = 1;
    private static final int FINDER_PAT_C = 2;
    private static final int FINDER_PAT_D = 3;
    private static final int FINDER_PAT_E = 4;
    private static final int FINDER_PAT_F = 5;
    private static final int MAX_PAIRS = 11;
    private final List<ExpandedPair> pairs = new ArrayList(11);
    private final List<ExpandedRow> rows = new ArrayList();
    private final int[] startEnd = new int[2];
    private boolean startFromEven;
    private static final int[] SYMBOL_WIDEST = {7, 5, 4, 3, 1};
    private static final int[] EVEN_TOTAL_SUBSET = {4, 20, 52, 104, 204};
    private static final int[] GSUM = {0, 348, 1388, 2948, 3988};
    private static final int[][] FINDER_PATTERNS = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};
    private static final int[][] WEIGHTS = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_ORIGINAL_VIDEO_INFO_CALLBACK_FROM_SURFACE_LISTENER, 7, 21, 63}, new int[]{189, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT, 13, 39, 117, 140, 209, 205}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, 203, 187, TPOptionalID.OPTION_ID_BEFORE_LONG_BUFFER_STRATEGY, 206, 196, 166}, new int[]{76, 17, 51, ITPNativePlayerMessageCallback.INFO_LONG1_CLIP_EOS, 37, 111, 122, 155}, new int[]{43, 129, 176, 106, 107, 110, 119, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, 137, 200, EventTrackingUtils.EVENT_TRACKING_RESULT_CODE, 112, 125, 164}, new int[]{70, 210, 208, 202, 184, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, 204, FacebookRequestErrorClassification.EC_INVALID_TOKEN}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, TPPixelFormat.TP_PIX_FMT_MEDIACODEC}, new int[]{79, 26, 78, 23, 69, 207, 199, BaseMessageViewHolder.MAX_SIZE}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT, 160, 58, 174, 100, 89}};
    private static final int[][] FINDER_PATTERN_SEQUENCES = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    private void adjustOddEvenCounts(int i9) throws NotFoundException {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int sum = MathUtils.sum(getOddCounts());
        int sum2 = MathUtils.sum(getEvenCounts());
        boolean z14 = true;
        if (sum > 13) {
            z10 = false;
            z11 = true;
        } else {
            z10 = sum < 4;
            z11 = false;
        }
        if (sum2 > 13) {
            z12 = false;
            z13 = true;
        } else {
            z12 = sum2 < 4;
            z13 = false;
        }
        int i10 = (sum + sum2) - i9;
        boolean z15 = (sum & 1) == 1;
        boolean z16 = (sum2 & 1) == 0;
        if (i10 == 1) {
            if (z15) {
                if (z16) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z14 = z10;
                z11 = true;
            } else if (!z16) {
                throw NotFoundException.getNotFoundInstance();
            } else {
                z14 = z10;
                z13 = true;
            }
        } else if (i10 == -1) {
            if (z15) {
                if (z16) {
                    throw NotFoundException.getNotFoundInstance();
                }
            } else if (!z16) {
                throw NotFoundException.getNotFoundInstance();
            } else {
                z14 = z10;
                z12 = true;
            }
        } else if (i10 != 0) {
            throw NotFoundException.getNotFoundInstance();
        } else {
            if (z15) {
                if (!z16) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (sum >= sum2) {
                    z14 = z10;
                    z12 = true;
                    z11 = true;
                }
                z13 = true;
            } else if (z16) {
                throw NotFoundException.getNotFoundInstance();
            } else {
                z14 = z10;
            }
        }
        if (z14) {
            if (!z11) {
                AbstractRSSReader.increment(getOddCounts(), getOddRoundingErrors());
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        if (z11) {
            AbstractRSSReader.decrement(getOddCounts(), getOddRoundingErrors());
        }
        if (z12) {
            if (!z13) {
                AbstractRSSReader.increment(getEvenCounts(), getOddRoundingErrors());
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        if (z13) {
            AbstractRSSReader.decrement(getEvenCounts(), getEvenRoundingErrors());
        }
    }

    private boolean checkChecksum() {
        ExpandedPair expandedPair = this.pairs.get(0);
        DataCharacter leftChar = expandedPair.getLeftChar();
        DataCharacter rightChar = expandedPair.getRightChar();
        if (rightChar == null) {
            return false;
        }
        int checksumPortion = rightChar.getChecksumPortion();
        int i9 = 2;
        for (int i10 = 1; i10 < this.pairs.size(); i10++) {
            ExpandedPair expandedPair2 = this.pairs.get(i10);
            checksumPortion += expandedPair2.getLeftChar().getChecksumPortion();
            i9++;
            DataCharacter rightChar2 = expandedPair2.getRightChar();
            if (rightChar2 != null) {
                checksumPortion += rightChar2.getChecksumPortion();
                i9++;
            }
        }
        return ((i9 + (-4)) * 211) + (checksumPortion % 211) == leftChar.getValue();
    }

    private List<ExpandedPair> checkRows(boolean z10) {
        List<ExpandedPair> list = null;
        if (this.rows.size() > 25) {
            this.rows.clear();
            return null;
        }
        this.pairs.clear();
        if (z10) {
            Collections.reverse(this.rows);
        }
        try {
            list = checkRows(new ArrayList(), 0);
        } catch (NotFoundException unused) {
        }
        if (z10) {
            Collections.reverse(this.rows);
        }
        return list;
    }

    static Result constructResult(List<ExpandedPair> list) throws NotFoundException, FormatException {
        String parseInformation = AbstractExpandedDecoder.createDecoder(BitArrayBuilder.buildBitArray(list)).parseInformation();
        ResultPoint[] resultPoints = list.get(0).getFinderPattern().getResultPoints();
        ResultPoint[] resultPoints2 = list.get(list.size() - 1).getFinderPattern().getResultPoints();
        return new Result(parseInformation, null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_EXPANDED);
    }

    private void findNextPair(BitArray bitArray, List<ExpandedPair> list, int i9) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        if (i9 < 0) {
            i9 = list.isEmpty() ? 0 : list.get(list.size() - 1).getFinderPattern().getStartEnd()[1];
        }
        boolean z10 = list.size() % 2 != 0;
        if (this.startFromEven) {
            z10 = !z10;
        }
        boolean z11 = false;
        while (i9 < size) {
            z11 = !bitArray.get(i9);
            if (!z11) {
                break;
            }
            i9++;
        }
        boolean z12 = z11;
        int i10 = 0;
        int i11 = i9;
        while (i9 < size) {
            if (bitArray.get(i9) != z12) {
                decodeFinderCounters[i10] = decodeFinderCounters[i10] + 1;
            } else {
                if (i10 == 3) {
                    if (z10) {
                        reverseCounters(decodeFinderCounters);
                    }
                    if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                        int[] iArr = this.startEnd;
                        iArr[0] = i11;
                        iArr[1] = i9;
                        return;
                    }
                    if (z10) {
                        reverseCounters(decodeFinderCounters);
                    }
                    i11 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i10--;
                } else {
                    i10++;
                }
                decodeFinderCounters[i10] = 1;
                z12 = !z12;
            }
            i9++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int getNextSecondBar(BitArray bitArray, int i9) {
        if (bitArray.get(i9)) {
            return bitArray.getNextSet(bitArray.getNextUnset(i9));
        }
        return bitArray.getNextUnset(bitArray.getNextSet(i9));
    }

    private static boolean isNotA1left(FinderPattern finderPattern, boolean z10, boolean z11) {
        return (finderPattern.getValue() == 0 && z10 && z11) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isPartialRow(java.lang.Iterable<com.google.zxing.oned.rss.expanded.ExpandedPair> r7, java.lang.Iterable<com.google.zxing.oned.rss.expanded.ExpandedRow> r8) {
        /*
            java.util.Iterator r8 = r8.iterator()
        L4:
            boolean r0 = r8.hasNext()
            r1 = 0
            if (r0 == 0) goto L46
            java.lang.Object r0 = r8.next()
            com.google.zxing.oned.rss.expanded.ExpandedRow r0 = (com.google.zxing.oned.rss.expanded.ExpandedRow) r0
            java.util.Iterator r2 = r7.iterator()
        L15:
            boolean r3 = r2.hasNext()
            r4 = 1
            if (r3 == 0) goto L42
            java.lang.Object r3 = r2.next()
            com.google.zxing.oned.rss.expanded.ExpandedPair r3 = (com.google.zxing.oned.rss.expanded.ExpandedPair) r3
            java.util.List r5 = r0.getPairs()
            java.util.Iterator r5 = r5.iterator()
        L2a:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L3e
            java.lang.Object r6 = r5.next()
            com.google.zxing.oned.rss.expanded.ExpandedPair r6 = (com.google.zxing.oned.rss.expanded.ExpandedPair) r6
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L2a
            r3 = 1
            goto L3f
        L3e:
            r3 = 0
        L3f:
            if (r3 != 0) goto L15
            goto L43
        L42:
            r1 = 1
        L43:
            if (r1 == 0) goto L4
            return r4
        L46:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.expanded.RSSExpandedReader.isPartialRow(java.lang.Iterable, java.lang.Iterable):boolean");
    }

    private static boolean isValidSequence(List<ExpandedPair> list) {
        int[][] iArr;
        boolean z10;
        for (int[] iArr2 : FINDER_PATTERN_SEQUENCES) {
            if (list.size() <= iArr2.length) {
                int i9 = 0;
                while (true) {
                    if (i9 >= list.size()) {
                        z10 = true;
                        break;
                    } else if (list.get(i9).getFinderPattern().getValue() != iArr2[i9]) {
                        z10 = false;
                        break;
                    } else {
                        i9++;
                    }
                }
                if (z10) {
                    return true;
                }
            }
        }
        return false;
    }

    private FinderPattern parseFoundFinderPattern(BitArray bitArray, int i9, boolean z10) {
        int i10;
        int i11;
        int i12;
        if (z10) {
            int i13 = this.startEnd[0] - 1;
            while (i13 >= 0 && !bitArray.get(i13)) {
                i13--;
            }
            int i14 = i13 + 1;
            int[] iArr = this.startEnd;
            i12 = iArr[0] - i14;
            i10 = iArr[1];
            i11 = i14;
        } else {
            int[] iArr2 = this.startEnd;
            int i15 = iArr2[0];
            int nextUnset = bitArray.getNextUnset(iArr2[1] + 1);
            i10 = nextUnset;
            i11 = i15;
            i12 = nextUnset - this.startEnd[1];
        }
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = i12;
        try {
            return new FinderPattern(AbstractRSSReader.parseFinderValue(decodeFinderCounters, FINDER_PATTERNS), new int[]{i11, i10}, i11, i10, i9);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x004c, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void removePartialRows(java.util.List<com.google.zxing.oned.rss.expanded.ExpandedPair> r6, java.util.List<com.google.zxing.oned.rss.expanded.ExpandedRow> r7) {
        /*
            java.util.Iterator r7 = r7.iterator()
        L4:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto L56
            java.lang.Object r0 = r7.next()
            com.google.zxing.oned.rss.expanded.ExpandedRow r0 = (com.google.zxing.oned.rss.expanded.ExpandedRow) r0
            java.util.List r1 = r0.getPairs()
            int r1 = r1.size()
            int r2 = r6.size()
            if (r1 == r2) goto L4
            java.util.List r0 = r0.getPairs()
            java.util.Iterator r0 = r0.iterator()
        L26:
            boolean r1 = r0.hasNext()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L4f
            java.lang.Object r1 = r0.next()
            com.google.zxing.oned.rss.expanded.ExpandedPair r1 = (com.google.zxing.oned.rss.expanded.ExpandedPair) r1
            java.util.Iterator r4 = r6.iterator()
        L38:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L4b
            java.lang.Object r5 = r4.next()
            com.google.zxing.oned.rss.expanded.ExpandedPair r5 = (com.google.zxing.oned.rss.expanded.ExpandedPair) r5
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L38
            goto L4c
        L4b:
            r3 = 0
        L4c:
            if (r3 != 0) goto L26
            goto L50
        L4f:
            r2 = 1
        L50:
            if (r2 == 0) goto L4
            r7.remove()
            goto L4
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.expanded.RSSExpandedReader.removePartialRows(java.util.List, java.util.List):void");
    }

    private static void reverseCounters(int[] iArr) {
        int length = iArr.length;
        for (int i9 = 0; i9 < length / 2; i9++) {
            int i10 = iArr[i9];
            int i11 = (length - i9) - 1;
            iArr[i9] = iArr[i11];
            iArr[i11] = i10;
        }
    }

    private void storeRow(int i9, boolean z10) {
        boolean z11 = false;
        int i10 = 0;
        boolean z12 = false;
        while (true) {
            if (i10 >= this.rows.size()) {
                break;
            }
            ExpandedRow expandedRow = this.rows.get(i10);
            if (expandedRow.getRowNumber() > i9) {
                z11 = expandedRow.isEquivalent(this.pairs);
                break;
            } else {
                z12 = expandedRow.isEquivalent(this.pairs);
                i10++;
            }
        }
        if (z11 || z12 || isPartialRow(this.pairs, this.rows)) {
            return;
        }
        this.rows.add(i10, new ExpandedRow(this.pairs, i9, z10));
        removePartialRows(this.pairs, this.rows);
    }

    DataCharacter decodeDataCharacter(BitArray bitArray, FinderPattern finderPattern, boolean z10, boolean z11) throws NotFoundException {
        int[] dataCharacterCounters = getDataCharacterCounters();
        for (int i9 = 0; i9 < dataCharacterCounters.length; i9++) {
            dataCharacterCounters[i9] = 0;
        }
        if (z11) {
            OneDReader.recordPatternInReverse(bitArray, finderPattern.getStartEnd()[0], dataCharacterCounters);
        } else {
            OneDReader.recordPattern(bitArray, finderPattern.getStartEnd()[1], dataCharacterCounters);
            int i10 = 0;
            for (int length = dataCharacterCounters.length - 1; i10 < length; length--) {
                int i11 = dataCharacterCounters[i10];
                dataCharacterCounters[i10] = dataCharacterCounters[length];
                dataCharacterCounters[length] = i11;
                i10++;
            }
        }
        float sum = MathUtils.sum(dataCharacterCounters) / 17.0f;
        float f10 = (finderPattern.getStartEnd()[1] - finderPattern.getStartEnd()[0]) / 15.0f;
        if (Math.abs(sum - f10) / f10 <= 0.3f) {
            int[] oddCounts = getOddCounts();
            int[] evenCounts = getEvenCounts();
            float[] oddRoundingErrors = getOddRoundingErrors();
            float[] evenRoundingErrors = getEvenRoundingErrors();
            for (int i12 = 0; i12 < dataCharacterCounters.length; i12++) {
                float f11 = (dataCharacterCounters[i12] * 1.0f) / sum;
                int i13 = (int) (0.5f + f11);
                if (i13 <= 0) {
                    if (f11 < 0.3f) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    i13 = 1;
                } else if (i13 > 8) {
                    if (f11 > 8.7f) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    i13 = 8;
                }
                int i14 = i12 / 2;
                if ((i12 & 1) == 0) {
                    oddCounts[i14] = i13;
                    oddRoundingErrors[i14] = f11 - i13;
                } else {
                    evenCounts[i14] = i13;
                    evenRoundingErrors[i14] = f11 - i13;
                }
            }
            adjustOddEvenCounts(17);
            int value = (((finderPattern.getValue() * 4) + (z10 ? 0 : 2)) + (!z11 ? 1 : 0)) - 1;
            int i15 = 0;
            int i16 = 0;
            for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
                if (isNotA1left(finderPattern, z10, z11)) {
                    i15 += oddCounts[length2] * WEIGHTS[value][length2 * 2];
                }
                i16 += oddCounts[length2];
            }
            int i17 = 0;
            for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
                if (isNotA1left(finderPattern, z10, z11)) {
                    i17 += evenCounts[length3] * WEIGHTS[value][(length3 * 2) + 1];
                }
            }
            int i18 = i15 + i17;
            if ((i16 & 1) == 0 && i16 <= 13 && i16 >= 4) {
                int i19 = (13 - i16) / 2;
                int i20 = SYMBOL_WIDEST[i19];
                return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i20, true) * EVEN_TOTAL_SUBSET[i19]) + RSSUtils.getRSSvalue(evenCounts, 9 - i20, false) + GSUM[i19], i18);
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i9, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        this.pairs.clear();
        this.startFromEven = false;
        try {
            return constructResult(decodeRow2pairs(i9, bitArray));
        } catch (NotFoundException unused) {
            this.pairs.clear();
            this.startFromEven = true;
            return constructResult(decodeRow2pairs(i9, bitArray));
        }
    }

    List<ExpandedPair> decodeRow2pairs(int i9, BitArray bitArray) throws NotFoundException {
        boolean z10 = false;
        while (!z10) {
            try {
                List<ExpandedPair> list = this.pairs;
                list.add(retrieveNextPair(bitArray, list, i9));
            } catch (NotFoundException e10) {
                if (this.pairs.isEmpty()) {
                    throw e10;
                }
                z10 = true;
            }
        }
        if (checkChecksum()) {
            return this.pairs;
        }
        boolean z11 = !this.rows.isEmpty();
        storeRow(i9, false);
        if (z11) {
            List<ExpandedPair> checkRows = checkRows(false);
            if (checkRows != null) {
                return checkRows;
            }
            List<ExpandedPair> checkRows2 = checkRows(true);
            if (checkRows2 != null) {
                return checkRows2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    List<ExpandedRow> getRows() {
        return this.rows;
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.pairs.clear();
        this.rows.clear();
    }

    ExpandedPair retrieveNextPair(BitArray bitArray, List<ExpandedPair> list, int i9) throws NotFoundException {
        FinderPattern parseFoundFinderPattern;
        DataCharacter dataCharacter;
        boolean z10 = list.size() % 2 == 0;
        if (this.startFromEven) {
            z10 = !z10;
        }
        int i10 = -1;
        boolean z11 = true;
        do {
            findNextPair(bitArray, list, i10);
            parseFoundFinderPattern = parseFoundFinderPattern(bitArray, i9, z10);
            if (parseFoundFinderPattern == null) {
                i10 = getNextSecondBar(bitArray, this.startEnd[0]);
                continue;
            } else {
                z11 = false;
                continue;
            }
        } while (z11);
        DataCharacter decodeDataCharacter = decodeDataCharacter(bitArray, parseFoundFinderPattern, z10, true);
        if (!list.isEmpty() && list.get(list.size() - 1).mustBeLast()) {
            throw NotFoundException.getNotFoundInstance();
        }
        try {
            dataCharacter = decodeDataCharacter(bitArray, parseFoundFinderPattern, z10, false);
        } catch (NotFoundException unused) {
            dataCharacter = null;
        }
        return new ExpandedPair(decodeDataCharacter, dataCharacter, parseFoundFinderPattern, true);
    }

    private List<ExpandedPair> checkRows(List<ExpandedRow> list, int i9) throws NotFoundException {
        while (i9 < this.rows.size()) {
            ExpandedRow expandedRow = this.rows.get(i9);
            this.pairs.clear();
            for (ExpandedRow expandedRow2 : list) {
                this.pairs.addAll(expandedRow2.getPairs());
            }
            this.pairs.addAll(expandedRow.getPairs());
            if (isValidSequence(this.pairs)) {
                if (checkChecksum()) {
                    return this.pairs;
                }
                ArrayList arrayList = new ArrayList(list);
                arrayList.add(expandedRow);
                try {
                    return checkRows(arrayList, i9 + 1);
                } catch (NotFoundException unused) {
                    continue;
                }
            }
            i9++;
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
