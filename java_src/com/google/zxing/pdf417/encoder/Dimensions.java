package com.google.zxing.pdf417.encoder;
/* loaded from: classes3.dex */
public final class Dimensions {
    private final int maxCols;
    private final int maxRows;
    private final int minCols;
    private final int minRows;

    public Dimensions(int i9, int i10, int i11, int i12) {
        this.minCols = i9;
        this.maxCols = i10;
        this.minRows = i11;
        this.maxRows = i12;
    }

    public int getMaxCols() {
        return this.maxCols;
    }

    public int getMaxRows() {
        return this.maxRows;
    }

    public int getMinCols() {
        return this.minCols;
    }

    public int getMinRows() {
        return this.minRows;
    }
}
