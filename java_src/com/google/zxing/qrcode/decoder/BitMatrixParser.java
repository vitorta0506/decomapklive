package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
/* loaded from: classes3.dex */
final class BitMatrixParser {
    private final BitMatrix bitMatrix;
    private boolean mirror;
    private FormatInformation parsedFormatInfo;
    private Version parsedVersion;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BitMatrixParser(BitMatrix bitMatrix) throws FormatException {
        int height = bitMatrix.getHeight();
        if (height >= 21 && (height & 3) == 1) {
            this.bitMatrix = bitMatrix;
            return;
        }
        throw FormatException.getFormatInstance();
    }

    private int copyBit(int i9, int i10, int i11) {
        return this.mirror ? this.bitMatrix.get(i10, i9) : this.bitMatrix.get(i9, i10) ? (i11 << 1) | 1 : i11 << 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void mirror() {
        int i9 = 0;
        while (i9 < this.bitMatrix.getWidth()) {
            int i10 = i9 + 1;
            for (int i11 = i10; i11 < this.bitMatrix.getHeight(); i11++) {
                if (this.bitMatrix.get(i9, i11) != this.bitMatrix.get(i11, i9)) {
                    this.bitMatrix.flip(i11, i9);
                    this.bitMatrix.flip(i9, i11);
                }
            }
            i9 = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] readCodewords() throws FormatException {
        FormatInformation readFormatInformation = readFormatInformation();
        Version readVersion = readVersion();
        DataMask dataMask = DataMask.values()[readFormatInformation.getDataMask()];
        int height = this.bitMatrix.getHeight();
        dataMask.unmaskBitMatrix(this.bitMatrix, height);
        BitMatrix buildFunctionPattern = readVersion.buildFunctionPattern();
        byte[] bArr = new byte[readVersion.getTotalCodewords()];
        int i9 = height - 1;
        boolean z10 = true;
        int i10 = i9;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i10 > 0) {
            if (i10 == 6) {
                i10--;
            }
            for (int i14 = 0; i14 < height; i14++) {
                int i15 = z10 ? i9 - i14 : i14;
                for (int i16 = 0; i16 < 2; i16++) {
                    int i17 = i10 - i16;
                    if (!buildFunctionPattern.get(i17, i15)) {
                        i12++;
                        i13 <<= 1;
                        if (this.bitMatrix.get(i17, i15)) {
                            i13 |= 1;
                        }
                        if (i12 == 8) {
                            bArr[i11] = (byte) i13;
                            i11++;
                            i12 = 0;
                            i13 = 0;
                        }
                    }
                }
            }
            z10 = !z10;
            i10 -= 2;
        }
        if (i11 == readVersion.getTotalCodewords()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FormatInformation readFormatInformation() throws FormatException {
        FormatInformation formatInformation = this.parsedFormatInfo;
        if (formatInformation != null) {
            return formatInformation;
        }
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < 6; i11++) {
            i10 = copyBit(i11, 8, i10);
        }
        int copyBit = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, i10)));
        for (int i12 = 5; i12 >= 0; i12--) {
            copyBit = copyBit(8, i12, copyBit);
        }
        int height = this.bitMatrix.getHeight();
        int i13 = height - 7;
        for (int i14 = height - 1; i14 >= i13; i14--) {
            i9 = copyBit(8, i14, i9);
        }
        for (int i15 = height - 8; i15 < height; i15++) {
            i9 = copyBit(i15, 8, i9);
        }
        FormatInformation decodeFormatInformation = FormatInformation.decodeFormatInformation(copyBit, i9);
        this.parsedFormatInfo = decodeFormatInformation;
        if (decodeFormatInformation != null) {
            return decodeFormatInformation;
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Version readVersion() throws FormatException {
        Version version = this.parsedVersion;
        if (version != null) {
            return version;
        }
        int height = this.bitMatrix.getHeight();
        int i9 = (height - 17) / 4;
        if (i9 <= 6) {
            return Version.getVersionForNumber(i9);
        }
        int i10 = height - 11;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 5; i13 >= 0; i13--) {
            for (int i14 = height - 9; i14 >= i10; i14--) {
                i12 = copyBit(i14, i13, i12);
            }
        }
        Version decodeVersionInformation = Version.decodeVersionInformation(i12);
        if (decodeVersionInformation != null && decodeVersionInformation.getDimensionForVersion() == height) {
            this.parsedVersion = decodeVersionInformation;
            return decodeVersionInformation;
        }
        for (int i15 = 5; i15 >= 0; i15--) {
            for (int i16 = height - 9; i16 >= i10; i16--) {
                i11 = copyBit(i15, i16, i11);
            }
        }
        Version decodeVersionInformation2 = Version.decodeVersionInformation(i11);
        if (decodeVersionInformation2 != null && decodeVersionInformation2.getDimensionForVersion() == height) {
            this.parsedVersion = decodeVersionInformation2;
            return decodeVersionInformation2;
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void remask() {
        if (this.parsedFormatInfo == null) {
            return;
        }
        DataMask.values()[this.parsedFormatInfo.getDataMask()].unmaskBitMatrix(this.bitMatrix, this.bitMatrix.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMirror(boolean z10) {
        this.parsedVersion = null;
        this.parsedFormatInfo = null;
        this.mirror = z10;
    }
}
