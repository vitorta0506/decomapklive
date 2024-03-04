package com.google.zxing.pdf417.decoder;

import java.util.Formatter;
/* loaded from: classes3.dex */
class DetectionResultColumn {
    private static final int MAX_NEARBY_DISTANCE = 5;
    private final BoundingBox boundingBox;
    private final Codeword[] codewords;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DetectionResultColumn(BoundingBox boundingBox) {
        this.boundingBox = new BoundingBox(boundingBox);
        this.codewords = new Codeword[(boundingBox.getMaxY() - boundingBox.getMinY()) + 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Codeword getCodeword(int i9) {
        return this.codewords[imageRowToCodewordIndex(i9)];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Codeword getCodewordNearby(int i9) {
        Codeword codeword;
        Codeword codeword2;
        Codeword codeword3 = getCodeword(i9);
        if (codeword3 != null) {
            return codeword3;
        }
        for (int i10 = 1; i10 < 5; i10++) {
            int imageRowToCodewordIndex = imageRowToCodewordIndex(i9) - i10;
            if (imageRowToCodewordIndex >= 0 && (codeword2 = this.codewords[imageRowToCodewordIndex]) != null) {
                return codeword2;
            }
            int imageRowToCodewordIndex2 = imageRowToCodewordIndex(i9) + i10;
            Codeword[] codewordArr = this.codewords;
            if (imageRowToCodewordIndex2 < codewordArr.length && (codeword = codewordArr[imageRowToCodewordIndex2]) != null) {
                return codeword;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Codeword[] getCodewords() {
        return this.codewords;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int imageRowToCodewordIndex(int i9) {
        return i9 - this.boundingBox.getMinY();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setCodeword(int i9, Codeword codeword) {
        this.codewords[imageRowToCodewordIndex(i9)] = codeword;
    }

    public String toString() {
        Codeword[] codewordArr;
        Formatter formatter = new Formatter();
        try {
            int i9 = 0;
            for (Codeword codeword : this.codewords) {
                if (codeword == null) {
                    formatter.format("%3d:    |   %n", Integer.valueOf(i9));
                    i9++;
                } else {
                    formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i9), Integer.valueOf(codeword.getRowNumber()), Integer.valueOf(codeword.getValue()));
                    i9++;
                }
            }
            String formatter2 = formatter.toString();
            formatter.close();
            return formatter2;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                try {
                    formatter.close();
                } catch (Throwable th4) {
                    th2.addSuppressed(th4);
                }
                throw th3;
            }
        }
    }
}
