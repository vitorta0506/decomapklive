package com.google.zxing.qrcode.decoder;

import com.google.zxing.qrcode.decoder.Version;
/* loaded from: classes3.dex */
final class DataBlock {
    private final byte[] codewords;
    private final int numDataCodewords;

    private DataBlock(int i9, byte[] bArr) {
        this.numDataCodewords = i9;
        this.codewords = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DataBlock[] getDataBlocks(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel) {
        if (bArr.length == version.getTotalCodewords()) {
            Version.ECBlocks eCBlocksForLevel = version.getECBlocksForLevel(errorCorrectionLevel);
            Version.ECB[] eCBlocks = eCBlocksForLevel.getECBlocks();
            int i9 = 0;
            for (Version.ECB ecb : eCBlocks) {
                i9 += ecb.getCount();
            }
            DataBlock[] dataBlockArr = new DataBlock[i9];
            int i10 = 0;
            for (Version.ECB ecb2 : eCBlocks) {
                int i11 = 0;
                while (i11 < ecb2.getCount()) {
                    int dataCodewords = ecb2.getDataCodewords();
                    dataBlockArr[i10] = new DataBlock(dataCodewords, new byte[eCBlocksForLevel.getECCodewordsPerBlock() + dataCodewords]);
                    i11++;
                    i10++;
                }
            }
            int length = dataBlockArr[0].codewords.length;
            int i12 = i9 - 1;
            while (i12 >= 0 && dataBlockArr[i12].codewords.length != length) {
                i12--;
            }
            int i13 = i12 + 1;
            int eCCodewordsPerBlock = length - eCBlocksForLevel.getECCodewordsPerBlock();
            int i14 = 0;
            for (int i15 = 0; i15 < eCCodewordsPerBlock; i15++) {
                int i16 = 0;
                while (i16 < i10) {
                    dataBlockArr[i16].codewords[i15] = bArr[i14];
                    i16++;
                    i14++;
                }
            }
            int i17 = i13;
            while (i17 < i10) {
                dataBlockArr[i17].codewords[eCCodewordsPerBlock] = bArr[i14];
                i17++;
                i14++;
            }
            int length2 = dataBlockArr[0].codewords.length;
            while (eCCodewordsPerBlock < length2) {
                int i18 = 0;
                while (i18 < i10) {
                    dataBlockArr[i18].codewords[i18 < i13 ? eCCodewordsPerBlock : eCCodewordsPerBlock + 1] = bArr[i14];
                    i18++;
                    i14++;
                }
                eCCodewordsPerBlock++;
            }
            return dataBlockArr;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getCodewords() {
        return this.codewords;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNumDataCodewords() {
        return this.numDataCodewords;
    }
}
