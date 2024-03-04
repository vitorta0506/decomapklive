package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
/* loaded from: classes3.dex */
final class DecodedNumeric extends DecodedObject {
    static final int FNC1 = 10;
    private final int firstDigit;
    private final int secondDigit;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodedNumeric(int i9, int i10, int i11) throws FormatException {
        super(i9);
        if (i10 >= 0 && i10 <= 10 && i11 >= 0 && i11 <= 10) {
            this.firstDigit = i10;
            this.secondDigit = i11;
            return;
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFirstDigit() {
        return this.firstDigit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSecondDigit() {
        return this.secondDigit;
    }

    int getValue() {
        return (this.firstDigit * 10) + this.secondDigit;
    }

    boolean isAnyFNC1() {
        return this.firstDigit == 10 || this.secondDigit == 10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFirstDigitFNC1() {
        return this.firstDigit == 10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isSecondDigitFNC1() {
        return this.secondDigit == 10;
    }
}
