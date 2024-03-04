package com.google.zxing.oned.rss;

import com.google.zxing.ResultPoint;
/* loaded from: classes3.dex */
public final class FinderPattern {
    private final ResultPoint[] resultPoints;
    private final int[] startEnd;
    private final int value;

    public FinderPattern(int i9, int[] iArr, int i10, int i11, int i12) {
        this.value = i9;
        this.startEnd = iArr;
        float f10 = i12;
        this.resultPoints = new ResultPoint[]{new ResultPoint(i10, f10), new ResultPoint(i11, f10)};
    }

    public boolean equals(Object obj) {
        return (obj instanceof FinderPattern) && this.value == ((FinderPattern) obj).value;
    }

    public ResultPoint[] getResultPoints() {
        return this.resultPoints;
    }

    public int[] getStartEnd() {
        return this.startEnd;
    }

    public int getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }
}
