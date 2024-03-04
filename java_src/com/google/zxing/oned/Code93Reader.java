package com.google.zxing.oned;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.guochao.faceshow.systemassistant.data.ASSISTANT_MSG_TYPE;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
import com.tencent.xmagic.BuildConfig;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes3.dex */
public final class Code93Reader extends OneDReader {
    private static final int ASTERISK_ENCODING;
    static final int[] CHARACTER_ENCODINGS;
    static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
    private static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    private final StringBuilder decodeRowResult = new StringBuilder(20);
    private final int[] counters = new int[6];

    static {
        int[] iArr = {276, 328, ASSISTANT_MSG_TYPE.TYPE_IMAGE_JUMP_VIDEO, BuildConfig.VERSION_CODE, 296, 292, cn.jiguang.android.BuildConfig.VERSION_CODE, 336, 274, 266, TypedValues.CycleType.TYPE_WAVE_OFFSET, TypedValues.CycleType.TYPE_EASING, 418, 404, 402, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, 410, 364, 358, 310, 314, 302, 468, 466, FacebookRequestErrorClassification.ESC_APP_NOT_INSTALLED, 366, 374, 430, 294, 474, 470, 306, 350};
        CHARACTER_ENCODINGS = iArr;
        ASTERISK_ENCODING = iArr[47];
    }

    private static void checkChecksums(CharSequence charSequence) throws ChecksumException {
        int length = charSequence.length();
        checkOneChecksum(charSequence, length - 2, 20);
        checkOneChecksum(charSequence, length - 1, 15);
    }

    private static void checkOneChecksum(CharSequence charSequence, int i9, int i10) throws ChecksumException {
        int i11 = 0;
        int i12 = 1;
        for (int i13 = i9 - 1; i13 >= 0; i13--) {
            i11 += ALPHABET_STRING.indexOf(charSequence.charAt(i13)) * i12;
            i12++;
            if (i12 > i10) {
                i12 = 1;
            }
        }
        if (charSequence.charAt(i9) != ALPHABET[i11 % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    private static String decodeExtended(CharSequence charSequence) throws FormatException {
        int i9;
        char c10;
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length);
        int i10 = 0;
        while (i10 < length) {
            char charAt = charSequence.charAt(i10);
            if (charAt < 'a' || charAt > 'd') {
                sb2.append(charAt);
            } else if (i10 < length - 1) {
                i10++;
                char charAt2 = charSequence.charAt(i10);
                switch (charAt) {
                    case 'a':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            i9 = charAt2 - '@';
                            c10 = (char) i9;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 'b':
                        if (charAt2 >= 'A' && charAt2 <= 'E') {
                            i9 = charAt2 - '&';
                        } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                            i9 = charAt2 - 11;
                        } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                            i9 = charAt2 + 16;
                        } else if (charAt2 >= 'P' && charAt2 <= 'S') {
                            i9 = charAt2 + '+';
                        } else if (charAt2 >= 'T' && charAt2 <= 'Z') {
                            c10 = 127;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        c10 = (char) i9;
                        break;
                    case 'c':
                        if (charAt2 >= 'A' && charAt2 <= 'O') {
                            i9 = charAt2 - ' ';
                            c10 = (char) i9;
                            break;
                        } else if (charAt2 == 'Z') {
                            c10 = ':';
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    case 'd':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            i9 = charAt2 + ' ';
                            c10 = (char) i9;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    default:
                        c10 = 0;
                        break;
                }
                sb2.append(c10);
            } else {
                throw FormatException.getFormatInstance();
            }
            i10++;
        }
        return sb2.toString();
    }

    private int[] findAsteriskPattern(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        Arrays.fill(this.counters, 0);
        int[] iArr = this.counters;
        int length = iArr.length;
        int i9 = nextSet;
        boolean z10 = false;
        int i10 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) != z10) {
                iArr[i10] = iArr[i10] + 1;
            } else {
                if (i10 != length - 1) {
                    i10++;
                } else if (toPattern(iArr) == ASTERISK_ENCODING) {
                    return new int[]{i9, nextSet};
                } else {
                    i9 += iArr[0] + iArr[1];
                    int i11 = i10 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i11);
                    iArr[i11] = 0;
                    iArr[i10] = 0;
                    i10--;
                }
                iArr[i10] = 1;
                z10 = !z10;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char patternToChar(int i9) throws NotFoundException {
        int i10 = 0;
        while (true) {
            int[] iArr = CHARACTER_ENCODINGS;
            if (i10 < iArr.length) {
                if (iArr[i10] == i9) {
                    return ALPHABET[i10];
                }
                i10++;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    private static int toPattern(int[] iArr) {
        int i9 = 0;
        for (int i10 : iArr) {
            i9 += i10;
        }
        int length = iArr.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            int round = Math.round((iArr[i12] * 9.0f) / i9);
            if (round <= 0 || round > 4) {
                return -1;
            }
            if ((i12 & 1) == 0) {
                for (int i13 = 0; i13 < round; i13++) {
                    i11 = (i11 << 1) | 1;
                }
            } else {
                i11 <<= round;
            }
        }
        return i11;
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i9, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] findAsteriskPattern;
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray)[1]);
        int size = bitArray.getSize();
        int[] iArr = this.counters;
        Arrays.fill(iArr, 0);
        StringBuilder sb2 = this.decodeRowResult;
        sb2.setLength(0);
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int pattern = toPattern(iArr);
            if (pattern >= 0) {
                char patternToChar = patternToChar(pattern);
                sb2.append(patternToChar);
                int i10 = nextSet;
                for (int i11 : iArr) {
                    i10 += i11;
                }
                int nextSet2 = bitArray.getNextSet(i10);
                if (patternToChar == '*') {
                    sb2.deleteCharAt(sb2.length() - 1);
                    int i12 = 0;
                    for (int i13 : iArr) {
                        i12 += i13;
                    }
                    if (nextSet2 != size && bitArray.get(nextSet2)) {
                        if (sb2.length() >= 2) {
                            checkChecksums(sb2);
                            sb2.setLength(sb2.length() - 2);
                            float f10 = i9;
                            return new Result(decodeExtended(sb2), null, new ResultPoint[]{new ResultPoint((findAsteriskPattern[1] + findAsteriskPattern[0]) / 2.0f, f10), new ResultPoint(nextSet + (i12 / 2.0f), f10)}, BarcodeFormat.CODE_93);
                        }
                        throw NotFoundException.getNotFoundInstance();
                    }
                    throw NotFoundException.getNotFoundInstance();
                }
                nextSet = nextSet2;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }
}
