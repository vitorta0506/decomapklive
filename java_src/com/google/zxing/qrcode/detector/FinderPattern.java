package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPoint;
/* loaded from: classes3.dex */
public final class FinderPattern extends ResultPoint {
    private final int count;
    private final float estimatedModuleSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FinderPattern(float f10, float f11, float f12) {
        this(f10, f11, f12, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean aboutEquals(float f10, float f11, float f12) {
        if (Math.abs(f11 - getY()) > f10 || Math.abs(f12 - getX()) > f10) {
            return false;
        }
        float abs = Math.abs(f10 - this.estimatedModuleSize);
        return abs <= 1.0f || abs <= this.estimatedModuleSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FinderPattern combineEstimate(float f10, float f11, float f12) {
        int i9 = this.count;
        int i10 = i9 + 1;
        float x10 = (i9 * getX()) + f11;
        float f13 = i10;
        return new FinderPattern(x10 / f13, ((this.count * getY()) + f10) / f13, ((this.count * this.estimatedModuleSize) + f12) / f13, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCount() {
        return this.count;
    }

    public float getEstimatedModuleSize() {
        return this.estimatedModuleSize;
    }

    private FinderPattern(float f10, float f11, float f12, int i9) {
        super(f10, f11);
        this.estimatedModuleSize = f12;
        this.count = i9;
    }
}
