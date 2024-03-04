package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.BitMatrix;
/* loaded from: classes3.dex */
enum DataMask {
    DATA_MASK_000 { // from class: com.google.zxing.qrcode.decoder.DataMask.1
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i9, int i10) {
            return ((i9 + i10) & 1) == 0;
        }
    },
    DATA_MASK_001 { // from class: com.google.zxing.qrcode.decoder.DataMask.2
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i9, int i10) {
            return (i9 & 1) == 0;
        }
    },
    DATA_MASK_010 { // from class: com.google.zxing.qrcode.decoder.DataMask.3
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i9, int i10) {
            return i10 % 3 == 0;
        }
    },
    DATA_MASK_011 { // from class: com.google.zxing.qrcode.decoder.DataMask.4
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i9, int i10) {
            return (i9 + i10) % 3 == 0;
        }
    },
    DATA_MASK_100 { // from class: com.google.zxing.qrcode.decoder.DataMask.5
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i9, int i10) {
            return (((i9 / 2) + (i10 / 3)) & 1) == 0;
        }
    },
    DATA_MASK_101 { // from class: com.google.zxing.qrcode.decoder.DataMask.6
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i9, int i10) {
            return (i9 * i10) % 6 == 0;
        }
    },
    DATA_MASK_110 { // from class: com.google.zxing.qrcode.decoder.DataMask.7
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i9, int i10) {
            return (i9 * i10) % 6 < 3;
        }
    },
    DATA_MASK_111 { // from class: com.google.zxing.qrcode.decoder.DataMask.8
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i9, int i10) {
            return (((i9 + i10) + ((i9 * i10) % 3)) & 1) == 0;
        }
    };

    abstract boolean isMasked(int i9, int i10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void unmaskBitMatrix(BitMatrix bitMatrix, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            for (int i11 = 0; i11 < i9; i11++) {
                if (isMasked(i10, i11)) {
                    bitMatrix.flip(i11, i10);
                }
            }
        }
    }
}
