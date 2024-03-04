package com.google.zxing;

import com.guochao.faceshow.aaspring.modulars.live.common.x;
/* loaded from: classes3.dex */
public final class Dimension {
    private final int height;
    private final int width;

    public Dimension(int i9, int i10) {
        if (i9 >= 0 && i10 >= 0) {
            this.width = i9;
            this.height = i10;
            return;
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        if (obj instanceof Dimension) {
            Dimension dimension = (Dimension) obj;
            if (this.width == dimension.width && this.height == dimension.height) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (this.width * 32713) + this.height;
    }

    public String toString() {
        return this.width + x.f19108w + this.height;
    }
}
