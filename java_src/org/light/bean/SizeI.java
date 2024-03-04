package org.light.bean;
/* loaded from: classes7.dex */
public class SizeI {
    public int height;
    public int width;

    public SizeI() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SizeI sizeI = (SizeI) obj;
        return this.width == sizeI.width && this.height == sizeI.height;
    }

    public int hashCode() {
        return (this.width * 31) + this.height;
    }

    public String toString() {
        return "width = " + this.width + ", height = " + this.height;
    }

    public SizeI(int i9, int i10) {
        this.width = i9;
        this.height = i10;
    }
}
