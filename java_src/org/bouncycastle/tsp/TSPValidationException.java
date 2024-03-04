package org.bouncycastle.tsp;
/* loaded from: classes7.dex */
public class TSPValidationException extends TSPException {
    private int failureCode;

    public TSPValidationException(String str) {
        super(str);
        this.failureCode = -1;
    }

    public TSPValidationException(String str, int i9) {
        super(str);
        this.failureCode = i9;
    }

    public int getFailureCode() {
        return this.failureCode;
    }
}
