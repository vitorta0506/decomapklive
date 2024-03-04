package androidx.renderscript;
/* loaded from: classes.dex */
public class Type extends BaseObj {
    boolean mDimFaces;
    boolean mDimMipmaps;
    int mDimX;
    int mDimY;
    int mDimYuv;
    int mDimZ;
    Element mElement;
    int mElementCount;

    /* loaded from: classes.dex */
    public static class Builder {
        boolean mDimFaces;
        boolean mDimMipmaps;
        int mDimX = 1;
        int mDimY;
        int mDimZ;
        Element mElement;
        RenderScript mRS;
        int mYuv;

        public Builder(RenderScript renderScript, Element element) {
            element.checkValid();
            this.mRS = renderScript;
            this.mElement = element;
        }

        public Type create() {
            int i9 = this.mDimZ;
            if (i9 > 0) {
                if (this.mDimX >= 1 && this.mDimY >= 1) {
                    if (this.mDimFaces) {
                        throw new RSInvalidStateException("Cube maps not supported with 3D types.");
                    }
                } else {
                    throw new RSInvalidStateException("Both X and Y dimension required when Z is present.");
                }
            }
            int i10 = this.mDimY;
            if (i10 > 0 && this.mDimX < 1) {
                throw new RSInvalidStateException("X dimension required when Y is present.");
            }
            boolean z10 = this.mDimFaces;
            if (z10 && i10 < 1) {
                throw new RSInvalidStateException("Cube maps require 2D Types.");
            }
            if (this.mYuv != 0 && (i9 != 0 || z10 || this.mDimMipmaps)) {
                throw new RSInvalidStateException("YUV only supports basic 2D.");
            }
            RenderScript renderScript = this.mRS;
            Type type = new Type(renderScript.nTypeCreate(this.mElement.getID(renderScript), this.mDimX, this.mDimY, this.mDimZ, this.mDimMipmaps, this.mDimFaces, this.mYuv), this.mRS);
            type.mElement = this.mElement;
            type.mDimX = this.mDimX;
            type.mDimY = this.mDimY;
            type.mDimZ = this.mDimZ;
            type.mDimMipmaps = this.mDimMipmaps;
            type.mDimFaces = this.mDimFaces;
            type.mDimYuv = this.mYuv;
            type.calcElementCount();
            return type;
        }

        public Builder setFaces(boolean z10) {
            this.mDimFaces = z10;
            return this;
        }

        public Builder setMipmaps(boolean z10) {
            this.mDimMipmaps = z10;
            return this;
        }

        public Builder setX(int i9) {
            if (i9 >= 1) {
                this.mDimX = i9;
                return this;
            }
            throw new RSIllegalArgumentException("Values of less than 1 for Dimension X are not valid.");
        }

        public Builder setY(int i9) {
            if (i9 >= 1) {
                this.mDimY = i9;
                return this;
            }
            throw new RSIllegalArgumentException("Values of less than 1 for Dimension Y are not valid.");
        }

        public Builder setYuvFormat(int i9) {
            if (i9 != 17 && i9 != 842094169) {
                throw new RSIllegalArgumentException("Only NV21 and YV12 are supported..");
            }
            this.mYuv = i9;
            return this;
        }

        public Builder setZ(int i9) {
            if (i9 >= 1) {
                this.mDimZ = i9;
                return this;
            }
            throw new RSIllegalArgumentException("Values of less than 1 for Dimension Z are not valid.");
        }
    }

    /* loaded from: classes.dex */
    public enum CubemapFace {
        POSITIVE_X(0),
        NEGATIVE_X(1),
        POSITIVE_Y(2),
        NEGATIVE_Y(3),
        POSITIVE_Z(4),
        NEGATIVE_Z(5);
        
        int mID;

        CubemapFace(int i9) {
            this.mID = i9;
        }
    }

    Type(long j10, RenderScript renderScript) {
        super(j10, renderScript);
    }

    public static Type createX(RenderScript renderScript, Element element, int i9) {
        if (i9 >= 1) {
            Type type = new Type(renderScript.nTypeCreate(element.getID(renderScript), i9, 0, 0, false, false, 0), renderScript);
            type.mElement = element;
            type.mDimX = i9;
            type.calcElementCount();
            return type;
        }
        throw new RSInvalidStateException("Dimension must be >= 1.");
    }

    public static Type createXY(RenderScript renderScript, Element element, int i9, int i10) {
        if (i9 >= 1 && i10 >= 1) {
            Type type = new Type(renderScript.nTypeCreate(element.getID(renderScript), i9, i10, 0, false, false, 0), renderScript);
            type.mElement = element;
            type.mDimX = i9;
            type.mDimY = i10;
            type.calcElementCount();
            return type;
        }
        throw new RSInvalidStateException("Dimension must be >= 1.");
    }

    public static Type createXYZ(RenderScript renderScript, Element element, int i9, int i10, int i11) {
        if (i9 >= 1 && i10 >= 1 && i11 >= 1) {
            Type type = new Type(renderScript.nTypeCreate(element.getID(renderScript), i9, i10, i11, false, false, 0), renderScript);
            type.mElement = element;
            type.mDimX = i9;
            type.mDimY = i10;
            type.mDimZ = i11;
            type.calcElementCount();
            return type;
        }
        throw new RSInvalidStateException("Dimension must be >= 1.");
    }

    void calcElementCount() {
        boolean hasMipmaps = hasMipmaps();
        int x10 = getX();
        int y10 = getY();
        int z10 = getZ();
        int i9 = hasFaces() ? 6 : 1;
        if (x10 == 0) {
            x10 = 1;
        }
        if (y10 == 0) {
            y10 = 1;
        }
        if (z10 == 0) {
            z10 = 1;
        }
        int i10 = x10 * y10 * z10 * i9;
        while (hasMipmaps && (x10 > 1 || y10 > 1 || z10 > 1)) {
            if (x10 > 1) {
                x10 >>= 1;
            }
            if (y10 > 1) {
                y10 >>= 1;
            }
            if (z10 > 1) {
                z10 >>= 1;
            }
            i10 += x10 * y10 * z10 * i9;
        }
        this.mElementCount = i10;
    }

    public int getCount() {
        return this.mElementCount;
    }

    public long getDummyType(RenderScript renderScript, long j10) {
        return renderScript.nIncTypeCreate(j10, this.mDimX, this.mDimY, this.mDimZ, this.mDimMipmaps, this.mDimFaces, this.mDimYuv);
    }

    public Element getElement() {
        return this.mElement;
    }

    public int getX() {
        return this.mDimX;
    }

    public int getY() {
        return this.mDimY;
    }

    public int getYuv() {
        return this.mDimYuv;
    }

    public int getZ() {
        return this.mDimZ;
    }

    public boolean hasFaces() {
        return this.mDimFaces;
    }

    public boolean hasMipmaps() {
        return this.mDimMipmaps;
    }
}
