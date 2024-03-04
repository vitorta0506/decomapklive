package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Version;
import com.tencent.thumbplayer.api.TPOptionalID;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
final class MatrixUtil {
    private static final int TYPE_INFO_MASK_PATTERN = 21522;
    private static final int TYPE_INFO_POLY = 1335;
    private static final int VERSION_INFO_POLY = 7973;
    private static final int[][] POSITION_DETECTION_PATTERN = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    private static final int[][] POSITION_ADJUSTMENT_PATTERN = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};
    private static final int[][] POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};
    private static final int[][] TYPE_INFO_COORDINATES = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    private MatrixUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void buildMatrix(BitArray bitArray, ErrorCorrectionLevel errorCorrectionLevel, Version version, int i9, ByteMatrix byteMatrix) throws WriterException {
        clearMatrix(byteMatrix);
        embedBasicPatterns(version, byteMatrix);
        embedTypeInfo(errorCorrectionLevel, i9, byteMatrix);
        maybeEmbedVersionInfo(version, byteMatrix);
        embedDataBits(bitArray, i9, byteMatrix);
    }

    static int calculateBCHCode(int i9, int i10) {
        if (i10 != 0) {
            int findMSBSet = findMSBSet(i10);
            int i11 = i9 << (findMSBSet - 1);
            while (findMSBSet(i11) >= findMSBSet) {
                i11 ^= i10 << (findMSBSet(i11) - findMSBSet);
            }
            return i11;
        }
        throw new IllegalArgumentException("0 polynomial");
    }

    static void clearMatrix(ByteMatrix byteMatrix) {
        byteMatrix.clear((byte) -1);
    }

    static void embedBasicPatterns(Version version, ByteMatrix byteMatrix) throws WriterException {
        embedPositionDetectionPatternsAndSeparators(byteMatrix);
        embedDarkDotAtLeftBottomCorner(byteMatrix);
        maybeEmbedPositionAdjustmentPatterns(version, byteMatrix);
        embedTimingPatterns(byteMatrix);
    }

    private static void embedDarkDotAtLeftBottomCorner(ByteMatrix byteMatrix) throws WriterException {
        if (byteMatrix.get(8, byteMatrix.getHeight() - 8) != 0) {
            byteMatrix.set(8, byteMatrix.getHeight() - 8, 1);
            return;
        }
        throw new WriterException();
    }

    static void embedDataBits(BitArray bitArray, int i9, ByteMatrix byteMatrix) throws WriterException {
        boolean z10;
        int width = byteMatrix.getWidth() - 1;
        int height = byteMatrix.getHeight() - 1;
        int i10 = 0;
        int i11 = -1;
        while (width > 0) {
            if (width == 6) {
                width--;
            }
            while (height >= 0 && height < byteMatrix.getHeight()) {
                for (int i12 = 0; i12 < 2; i12++) {
                    int i13 = width - i12;
                    if (isEmpty(byteMatrix.get(i13, height))) {
                        if (i10 < bitArray.getSize()) {
                            z10 = bitArray.get(i10);
                            i10++;
                        } else {
                            z10 = false;
                        }
                        if (i9 != -1 && MaskUtil.getDataMaskBit(i9, i13, height)) {
                            z10 = !z10;
                        }
                        byteMatrix.set(i13, height, z10);
                    }
                }
                height += i11;
            }
            i11 = -i11;
            height += i11;
            width -= 2;
        }
        if (i10 == bitArray.getSize()) {
            return;
        }
        throw new WriterException("Not all bits consumed: " + i10 + IOUtils.DIR_SEPARATOR_UNIX + bitArray.getSize());
    }

    private static void embedHorizontalSeparationPattern(int i9, int i10, ByteMatrix byteMatrix) throws WriterException {
        for (int i11 = 0; i11 < 8; i11++) {
            int i12 = i9 + i11;
            if (isEmpty(byteMatrix.get(i12, i10))) {
                byteMatrix.set(i12, i10, 0);
            } else {
                throw new WriterException();
            }
        }
    }

    private static void embedPositionAdjustmentPattern(int i9, int i10, ByteMatrix byteMatrix) {
        for (int i11 = 0; i11 < 5; i11++) {
            int[] iArr = POSITION_ADJUSTMENT_PATTERN[i11];
            for (int i12 = 0; i12 < 5; i12++) {
                byteMatrix.set(i9 + i12, i10 + i11, iArr[i12]);
            }
        }
    }

    private static void embedPositionDetectionPattern(int i9, int i10, ByteMatrix byteMatrix) {
        for (int i11 = 0; i11 < 7; i11++) {
            int[] iArr = POSITION_DETECTION_PATTERN[i11];
            for (int i12 = 0; i12 < 7; i12++) {
                byteMatrix.set(i9 + i12, i10 + i11, iArr[i12]);
            }
        }
    }

    private static void embedPositionDetectionPatternsAndSeparators(ByteMatrix byteMatrix) throws WriterException {
        int length = POSITION_DETECTION_PATTERN[0].length;
        embedPositionDetectionPattern(0, 0, byteMatrix);
        embedPositionDetectionPattern(byteMatrix.getWidth() - length, 0, byteMatrix);
        embedPositionDetectionPattern(0, byteMatrix.getWidth() - length, byteMatrix);
        embedHorizontalSeparationPattern(0, 7, byteMatrix);
        embedHorizontalSeparationPattern(byteMatrix.getWidth() - 8, 7, byteMatrix);
        embedHorizontalSeparationPattern(0, byteMatrix.getWidth() - 8, byteMatrix);
        embedVerticalSeparationPattern(7, 0, byteMatrix);
        embedVerticalSeparationPattern((byteMatrix.getHeight() - 7) - 1, 0, byteMatrix);
        embedVerticalSeparationPattern(7, byteMatrix.getHeight() - 7, byteMatrix);
    }

    private static void embedTimingPatterns(ByteMatrix byteMatrix) {
        int i9 = 8;
        while (i9 < byteMatrix.getWidth() - 8) {
            int i10 = i9 + 1;
            int i11 = i10 % 2;
            if (isEmpty(byteMatrix.get(i9, 6))) {
                byteMatrix.set(i9, 6, i11);
            }
            if (isEmpty(byteMatrix.get(6, i9))) {
                byteMatrix.set(6, i9, i11);
            }
            i9 = i10;
        }
    }

    static void embedTypeInfo(ErrorCorrectionLevel errorCorrectionLevel, int i9, ByteMatrix byteMatrix) throws WriterException {
        BitArray bitArray = new BitArray();
        makeTypeInfoBits(errorCorrectionLevel, i9, bitArray);
        for (int i10 = 0; i10 < bitArray.getSize(); i10++) {
            boolean z10 = bitArray.get((bitArray.getSize() - 1) - i10);
            int[] iArr = TYPE_INFO_COORDINATES[i10];
            byteMatrix.set(iArr[0], iArr[1], z10);
            if (i10 < 8) {
                byteMatrix.set((byteMatrix.getWidth() - i10) - 1, 8, z10);
            } else {
                byteMatrix.set(8, (byteMatrix.getHeight() - 7) + (i10 - 8), z10);
            }
        }
    }

    private static void embedVerticalSeparationPattern(int i9, int i10, ByteMatrix byteMatrix) throws WriterException {
        for (int i11 = 0; i11 < 7; i11++) {
            int i12 = i10 + i11;
            if (isEmpty(byteMatrix.get(i9, i12))) {
                byteMatrix.set(i9, i12, 0);
            } else {
                throw new WriterException();
            }
        }
    }

    static int findMSBSet(int i9) {
        return 32 - Integer.numberOfLeadingZeros(i9);
    }

    private static boolean isEmpty(int i9) {
        return i9 == -1;
    }

    static void makeTypeInfoBits(ErrorCorrectionLevel errorCorrectionLevel, int i9, BitArray bitArray) throws WriterException {
        if (QRCode.isValidMaskPattern(i9)) {
            int bits = (errorCorrectionLevel.getBits() << 3) | i9;
            bitArray.appendBits(bits, 5);
            bitArray.appendBits(calculateBCHCode(bits, TYPE_INFO_POLY), 10);
            BitArray bitArray2 = new BitArray();
            bitArray2.appendBits(TYPE_INFO_MASK_PATTERN, 15);
            bitArray.xor(bitArray2);
            if (bitArray.getSize() == 15) {
                return;
            }
            throw new WriterException("should not happen but we got: " + bitArray.getSize());
        }
        throw new WriterException("Invalid mask pattern");
    }

    static void makeVersionInfoBits(Version version, BitArray bitArray) throws WriterException {
        bitArray.appendBits(version.getVersionNumber(), 6);
        bitArray.appendBits(calculateBCHCode(version.getVersionNumber(), VERSION_INFO_POLY), 12);
        if (bitArray.getSize() == 18) {
            return;
        }
        throw new WriterException("should not happen but we got: " + bitArray.getSize());
    }

    private static void maybeEmbedPositionAdjustmentPatterns(Version version, ByteMatrix byteMatrix) {
        if (version.getVersionNumber() < 2) {
            return;
        }
        int[] iArr = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[version.getVersionNumber() - 1];
        for (int i9 : iArr) {
            if (i9 >= 0) {
                for (int i10 : iArr) {
                    if (i10 >= 0 && isEmpty(byteMatrix.get(i10, i9))) {
                        embedPositionAdjustmentPattern(i10 - 2, i9 - 2, byteMatrix);
                    }
                }
            }
        }
    }

    static void maybeEmbedVersionInfo(Version version, ByteMatrix byteMatrix) throws WriterException {
        if (version.getVersionNumber() < 7) {
            return;
        }
        BitArray bitArray = new BitArray();
        makeVersionInfoBits(version, bitArray);
        int i9 = 17;
        for (int i10 = 0; i10 < 6; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                boolean z10 = bitArray.get(i9);
                i9--;
                byteMatrix.set(i10, (byteMatrix.getHeight() - 11) + i11, z10);
                byteMatrix.set((byteMatrix.getHeight() - 11) + i11, i10, z10);
            }
        }
    }
}
