package com.google.zxing.oned.rss.expanded.decoders;
/* loaded from: classes3.dex */
final class DecodedInformation extends DecodedObject {
    private final String newString;
    private final boolean remaining;
    private final int remainingValue;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodedInformation(int i9, String str) {
        super(i9);
        this.newString = str;
        this.remaining = false;
        this.remainingValue = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNewString() {
        return this.newString;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRemainingValue() {
        return this.remainingValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isRemaining() {
        return this.remaining;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodedInformation(int i9, String str, int i10) {
        super(i9);
        this.remaining = true;
        this.remainingValue = i10;
        this.newString = str;
    }
}
