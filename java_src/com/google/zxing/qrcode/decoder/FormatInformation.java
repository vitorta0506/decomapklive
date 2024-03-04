package com.google.zxing.qrcode.decoder;

import com.tencent.rtmp.TXLiveConstants;
/* loaded from: classes3.dex */
final class FormatInformation {
    private final byte dataMask;
    private final ErrorCorrectionLevel errorCorrectionLevel;
    private static final int FORMAT_INFO_MASK_QR = 21522;
    private static final int[][] FORMAT_INFO_DECODE_LOOKUP = {new int[]{FORMAT_INFO_MASK_QR, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{TXLiveConstants.PLAY_WARNING_VIDEO_DISCONTINUITY, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};

    private FormatInformation(int i9) {
        this.errorCorrectionLevel = ErrorCorrectionLevel.forBits((i9 >> 3) & 3);
        this.dataMask = (byte) (i9 & 7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FormatInformation decodeFormatInformation(int i9, int i10) {
        FormatInformation doDecodeFormatInformation = doDecodeFormatInformation(i9, i10);
        return doDecodeFormatInformation != null ? doDecodeFormatInformation : doDecodeFormatInformation(i9 ^ FORMAT_INFO_MASK_QR, i10 ^ FORMAT_INFO_MASK_QR);
    }

    private static FormatInformation doDecodeFormatInformation(int i9, int i10) {
        int[][] iArr;
        int numBitsDiffering;
        int i11 = Integer.MAX_VALUE;
        int i12 = 0;
        for (int[] iArr2 : FORMAT_INFO_DECODE_LOOKUP) {
            int i13 = iArr2[0];
            if (i13 != i9 && i13 != i10) {
                int numBitsDiffering2 = numBitsDiffering(i9, i13);
                if (numBitsDiffering2 < i11) {
                    i12 = iArr2[1];
                    i11 = numBitsDiffering2;
                }
                if (i9 != i10 && (numBitsDiffering = numBitsDiffering(i10, i13)) < i11) {
                    i12 = iArr2[1];
                    i11 = numBitsDiffering;
                }
            } else {
                return new FormatInformation(iArr2[1]);
            }
        }
        if (i11 <= 3) {
            return new FormatInformation(i12);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int numBitsDiffering(int i9, int i10) {
        return Integer.bitCount(i9 ^ i10);
    }

    public boolean equals(Object obj) {
        if (obj instanceof FormatInformation) {
            FormatInformation formatInformation = (FormatInformation) obj;
            return this.errorCorrectionLevel == formatInformation.errorCorrectionLevel && this.dataMask == formatInformation.dataMask;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte getDataMask() {
        return this.dataMask;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ErrorCorrectionLevel getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    public int hashCode() {
        return (this.errorCorrectionLevel.ordinal() << 3) | this.dataMask;
    }
}
