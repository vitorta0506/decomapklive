package androidx.appcompat.widget;
/* loaded from: classes.dex */
class RtlSpacingHelper {
    public static final int UNDEFINED = Integer.MIN_VALUE;
    private int mLeft = 0;
    private int mRight = 0;
    private int mStart = Integer.MIN_VALUE;
    private int mEnd = Integer.MIN_VALUE;
    private int mExplicitLeft = 0;
    private int mExplicitRight = 0;
    private boolean mIsRtl = false;
    private boolean mIsRelative = false;

    public int getEnd() {
        return this.mIsRtl ? this.mLeft : this.mRight;
    }

    public int getLeft() {
        return this.mLeft;
    }

    public int getRight() {
        return this.mRight;
    }

    public int getStart() {
        return this.mIsRtl ? this.mRight : this.mLeft;
    }

    public void setAbsolute(int i9, int i10) {
        this.mIsRelative = false;
        if (i9 != Integer.MIN_VALUE) {
            this.mExplicitLeft = i9;
            this.mLeft = i9;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.mExplicitRight = i10;
            this.mRight = i10;
        }
    }

    public void setDirection(boolean z10) {
        if (z10 == this.mIsRtl) {
            return;
        }
        this.mIsRtl = z10;
        if (!this.mIsRelative) {
            this.mLeft = this.mExplicitLeft;
            this.mRight = this.mExplicitRight;
        } else if (z10) {
            int i9 = this.mEnd;
            if (i9 == Integer.MIN_VALUE) {
                i9 = this.mExplicitLeft;
            }
            this.mLeft = i9;
            int i10 = this.mStart;
            if (i10 == Integer.MIN_VALUE) {
                i10 = this.mExplicitRight;
            }
            this.mRight = i10;
        } else {
            int i11 = this.mStart;
            if (i11 == Integer.MIN_VALUE) {
                i11 = this.mExplicitLeft;
            }
            this.mLeft = i11;
            int i12 = this.mEnd;
            if (i12 == Integer.MIN_VALUE) {
                i12 = this.mExplicitRight;
            }
            this.mRight = i12;
        }
    }

    public void setRelative(int i9, int i10) {
        this.mStart = i9;
        this.mEnd = i10;
        this.mIsRelative = true;
        if (this.mIsRtl) {
            if (i10 != Integer.MIN_VALUE) {
                this.mLeft = i10;
            }
            if (i9 != Integer.MIN_VALUE) {
                this.mRight = i9;
                return;
            }
            return;
        }
        if (i9 != Integer.MIN_VALUE) {
            this.mLeft = i9;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.mRight = i10;
        }
    }
}
