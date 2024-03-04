package com.google.zxing.datamatrix.decoder;

import com.google.zxing.datamatrix.decoder.Version;
/* loaded from: classes3.dex */
final class DataBlock {
    private final byte[] codewords;
    private final int numDataCodewords;

    private DataBlock(int i9, byte[] bArr) {
        this.numDataCodewords = i9;
        this.codewords = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DataBlock[] getDataBlocks(byte[] bArr, Version version) {
        Version.ECBlocks eCBlocks = version.getECBlocks();
        Version.ECB[] eCBlocks2 = eCBlocks.getECBlocks();
        int i9 = 0;
        for (Version.ECB ecb : eCBlocks2) {
            i9 += ecb.getCount();
        }
        DataBlock[] dataBlockArr = new DataBlock[i9];
        int i10 = 0;
        for (Version.ECB ecb2 : eCBlocks2) {
            int i11 = 0;
            while (i11 < ecb2.getCount()) {
                int dataCodewords = ecb2.getDataCodewords();
                dataBlockArr[i10] = new DataBlock(dataCodewords, new byte[eCBlocks.getECCodewords() + dataCodewords]);
                i11++;
                i10++;
            }
        }
        int length = dataBlockArr[0].codewords.length - eCBlocks.getECCodewords();
        int i12 = length - 1;
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            int i15 = 0;
            while (i15 < i10) {
                dataBlockArr[i15].codewords[i14] = bArr[i13];
                i15++;
                i13++;
            }
        }
        boolean z10 = version.getVersionNumber() == 24;
        int i16 = z10 ? 8 : i10;
        int i17 = 0;
        while (i17 < i16) {
            dataBlockArr[i17].codewords[i12] = bArr[i13];
            i17++;
            i13++;
        }
        int length2 = dataBlockArr[0].codewords.length;
        while (length < length2) {
            int i18 = 0;
            while (i18 < i10) {
                int i19 = z10 ? (i18 + 8) % i10 : i18;
                dataBlockArr[i19].codewords[(!z10 || i19 <= 7) ? length : length - 1] = bArr[i13];
                i18++;
                i13++;
            }
            length++;
        }
        if (i13 == bArr.length) {
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
