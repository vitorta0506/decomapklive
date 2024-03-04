package com.google.zxing.datamatrix.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import kotlin.UByte;
/* loaded from: classes3.dex */
public final class Decoder {
    private final ReedSolomonDecoder rsDecoder = new ReedSolomonDecoder(GenericGF.DATA_MATRIX_FIELD_256);

    private void correctErrors(byte[] bArr, int i9) throws ChecksumException {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = bArr[i10] & UByte.MAX_VALUE;
        }
        try {
            this.rsDecoder.decode(iArr, bArr.length - i9);
            for (int i11 = 0; i11 < i9; i11++) {
                bArr[i11] = (byte) iArr[i11];
            }
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public DecoderResult decode(boolean[][] zArr) throws FormatException, ChecksumException {
        return decode(BitMatrix.parse(zArr));
    }

    public DecoderResult decode(BitMatrix bitMatrix) throws FormatException, ChecksumException {
        BitMatrixParser bitMatrixParser = new BitMatrixParser(bitMatrix);
        DataBlock[] dataBlocks = DataBlock.getDataBlocks(bitMatrixParser.readCodewords(), bitMatrixParser.getVersion());
        int i9 = 0;
        for (DataBlock dataBlock : dataBlocks) {
            i9 += dataBlock.getNumDataCodewords();
        }
        byte[] bArr = new byte[i9];
        int length = dataBlocks.length;
        for (int i10 = 0; i10 < length; i10++) {
            DataBlock dataBlock2 = dataBlocks[i10];
            byte[] codewords = dataBlock2.getCodewords();
            int numDataCodewords = dataBlock2.getNumDataCodewords();
            correctErrors(codewords, numDataCodewords);
            for (int i11 = 0; i11 < numDataCodewords; i11++) {
                bArr[(i11 * length) + i10] = codewords[i11];
            }
        }
        return DecodedBitStreamParser.decode(bArr);
    }
}
