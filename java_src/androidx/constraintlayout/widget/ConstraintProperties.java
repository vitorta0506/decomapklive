package androidx.constraintlayout.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.facebook.appevents.internal.ViewHierarchyConstants;
/* loaded from: classes.dex */
public class ConstraintProperties {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int END = 7;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = -1;
    public static final int WRAP_CONTENT = -2;
    ConstraintLayout.LayoutParams mParams;
    View mView;

    public ConstraintProperties(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.mParams = (ConstraintLayout.LayoutParams) layoutParams;
            this.mView = view;
            return;
        }
        throw new RuntimeException("Only children of ConstraintLayout.LayoutParams supported");
    }

    private String sideToString(int i9) {
        switch (i9) {
            case 1:
                return ViewHierarchyConstants.DIMENSION_LEFT_KEY;
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public ConstraintProperties addToHorizontalChain(int i9, int i10) {
        connect(1, i9, i9 == 0 ? 1 : 2, 0);
        connect(2, i10, i10 == 0 ? 2 : 1, 0);
        if (i9 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i9)).connect(2, this.mView.getId(), 1, 0);
        }
        if (i10 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i10)).connect(1, this.mView.getId(), 2, 0);
        }
        return this;
    }

    public ConstraintProperties addToHorizontalChainRTL(int i9, int i10) {
        connect(6, i9, i9 == 0 ? 6 : 7, 0);
        connect(7, i10, i10 == 0 ? 7 : 6, 0);
        if (i9 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i9)).connect(7, this.mView.getId(), 6, 0);
        }
        if (i10 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i10)).connect(6, this.mView.getId(), 7, 0);
        }
        return this;
    }

    public ConstraintProperties addToVerticalChain(int i9, int i10) {
        connect(3, i9, i9 == 0 ? 3 : 4, 0);
        connect(4, i10, i10 == 0 ? 4 : 3, 0);
        if (i9 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i9)).connect(4, this.mView.getId(), 3, 0);
        }
        if (i10 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i10)).connect(3, this.mView.getId(), 4, 0);
        }
        return this;
    }

    public ConstraintProperties alpha(float f10) {
        this.mView.setAlpha(f10);
        return this;
    }

    public void apply() {
    }

    public ConstraintProperties center(int i9, int i10, int i11, int i12, int i13, int i14, float f10) {
        if (i11 >= 0) {
            if (i14 >= 0) {
                if (f10 <= 0.0f || f10 > 1.0f) {
                    throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
                }
                if (i10 == 1 || i10 == 2) {
                    connect(1, i9, i10, i11);
                    connect(2, i12, i13, i14);
                    this.mParams.horizontalBias = f10;
                } else if (i10 != 6 && i10 != 7) {
                    connect(3, i9, i10, i11);
                    connect(4, i12, i13, i14);
                    this.mParams.verticalBias = f10;
                } else {
                    connect(6, i9, i10, i11);
                    connect(7, i12, i13, i14);
                    this.mParams.horizontalBias = f10;
                }
                return this;
            }
            throw new IllegalArgumentException("margin must be > 0");
        }
        throw new IllegalArgumentException("margin must be > 0");
    }

    public ConstraintProperties centerHorizontally(int i9, int i10, int i11, int i12, int i13, int i14, float f10) {
        connect(1, i9, i10, i11);
        connect(2, i12, i13, i14);
        this.mParams.horizontalBias = f10;
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int i9, int i10, int i11, int i12, int i13, int i14, float f10) {
        connect(6, i9, i10, i11);
        connect(7, i12, i13, i14);
        this.mParams.horizontalBias = f10;
        return this;
    }

    public ConstraintProperties centerVertically(int i9, int i10, int i11, int i12, int i13, int i14, float f10) {
        connect(3, i9, i10, i11);
        connect(4, i12, i13, i14);
        this.mParams.verticalBias = f10;
        return this;
    }

    public ConstraintProperties connect(int i9, int i10, int i11, int i12) {
        switch (i9) {
            case 1:
                if (i11 == 1) {
                    ConstraintLayout.LayoutParams layoutParams = this.mParams;
                    layoutParams.leftToLeft = i10;
                    layoutParams.leftToRight = -1;
                } else if (i11 == 2) {
                    ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
                    layoutParams2.leftToRight = i10;
                    layoutParams2.leftToLeft = -1;
                } else {
                    throw new IllegalArgumentException("Left to " + sideToString(i11) + " undefined");
                }
                ((ViewGroup.MarginLayoutParams) this.mParams).leftMargin = i12;
                break;
            case 2:
                if (i11 == 1) {
                    ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
                    layoutParams3.rightToLeft = i10;
                    layoutParams3.rightToRight = -1;
                } else if (i11 == 2) {
                    ConstraintLayout.LayoutParams layoutParams4 = this.mParams;
                    layoutParams4.rightToRight = i10;
                    layoutParams4.rightToLeft = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(i11) + " undefined");
                }
                ((ViewGroup.MarginLayoutParams) this.mParams).rightMargin = i12;
                break;
            case 3:
                if (i11 == 3) {
                    ConstraintLayout.LayoutParams layoutParams5 = this.mParams;
                    layoutParams5.topToTop = i10;
                    layoutParams5.topToBottom = -1;
                    layoutParams5.baselineToBaseline = -1;
                    layoutParams5.baselineToTop = -1;
                    layoutParams5.baselineToBottom = -1;
                } else if (i11 == 4) {
                    ConstraintLayout.LayoutParams layoutParams6 = this.mParams;
                    layoutParams6.topToBottom = i10;
                    layoutParams6.topToTop = -1;
                    layoutParams6.baselineToBaseline = -1;
                    layoutParams6.baselineToTop = -1;
                    layoutParams6.baselineToBottom = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(i11) + " undefined");
                }
                ((ViewGroup.MarginLayoutParams) this.mParams).topMargin = i12;
                break;
            case 4:
                if (i11 == 4) {
                    ConstraintLayout.LayoutParams layoutParams7 = this.mParams;
                    layoutParams7.bottomToBottom = i10;
                    layoutParams7.bottomToTop = -1;
                    layoutParams7.baselineToBaseline = -1;
                    layoutParams7.baselineToTop = -1;
                    layoutParams7.baselineToBottom = -1;
                } else if (i11 == 3) {
                    ConstraintLayout.LayoutParams layoutParams8 = this.mParams;
                    layoutParams8.bottomToTop = i10;
                    layoutParams8.bottomToBottom = -1;
                    layoutParams8.baselineToBaseline = -1;
                    layoutParams8.baselineToTop = -1;
                    layoutParams8.baselineToBottom = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(i11) + " undefined");
                }
                ((ViewGroup.MarginLayoutParams) this.mParams).bottomMargin = i12;
                break;
            case 5:
                if (i11 == 5) {
                    ConstraintLayout.LayoutParams layoutParams9 = this.mParams;
                    layoutParams9.baselineToBaseline = i10;
                    layoutParams9.bottomToBottom = -1;
                    layoutParams9.bottomToTop = -1;
                    layoutParams9.topToTop = -1;
                    layoutParams9.topToBottom = -1;
                }
                if (i11 == 3) {
                    ConstraintLayout.LayoutParams layoutParams10 = this.mParams;
                    layoutParams10.baselineToTop = i10;
                    layoutParams10.bottomToBottom = -1;
                    layoutParams10.bottomToTop = -1;
                    layoutParams10.topToTop = -1;
                    layoutParams10.topToBottom = -1;
                } else if (i11 == 4) {
                    ConstraintLayout.LayoutParams layoutParams11 = this.mParams;
                    layoutParams11.baselineToBottom = i10;
                    layoutParams11.bottomToBottom = -1;
                    layoutParams11.bottomToTop = -1;
                    layoutParams11.topToTop = -1;
                    layoutParams11.topToBottom = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(i11) + " undefined");
                }
                this.mParams.baselineMargin = i12;
                break;
            case 6:
                if (i11 == 6) {
                    ConstraintLayout.LayoutParams layoutParams12 = this.mParams;
                    layoutParams12.startToStart = i10;
                    layoutParams12.startToEnd = -1;
                } else if (i11 == 7) {
                    ConstraintLayout.LayoutParams layoutParams13 = this.mParams;
                    layoutParams13.startToEnd = i10;
                    layoutParams13.startToStart = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(i11) + " undefined");
                }
                this.mParams.setMarginStart(i12);
                break;
            case 7:
                if (i11 == 7) {
                    ConstraintLayout.LayoutParams layoutParams14 = this.mParams;
                    layoutParams14.endToEnd = i10;
                    layoutParams14.endToStart = -1;
                } else if (i11 == 6) {
                    ConstraintLayout.LayoutParams layoutParams15 = this.mParams;
                    layoutParams15.endToStart = i10;
                    layoutParams15.endToEnd = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(i11) + " undefined");
                }
                this.mParams.setMarginEnd(i12);
                break;
            default:
                throw new IllegalArgumentException(sideToString(i9) + " to " + sideToString(i11) + " unknown");
        }
        return this;
    }

    public ConstraintProperties constrainDefaultHeight(int i9) {
        this.mParams.matchConstraintDefaultHeight = i9;
        return this;
    }

    public ConstraintProperties constrainDefaultWidth(int i9) {
        this.mParams.matchConstraintDefaultWidth = i9;
        return this;
    }

    public ConstraintProperties constrainHeight(int i9) {
        ((ViewGroup.MarginLayoutParams) this.mParams).height = i9;
        return this;
    }

    public ConstraintProperties constrainMaxHeight(int i9) {
        this.mParams.matchConstraintMaxHeight = i9;
        return this;
    }

    public ConstraintProperties constrainMaxWidth(int i9) {
        this.mParams.matchConstraintMaxWidth = i9;
        return this;
    }

    public ConstraintProperties constrainMinHeight(int i9) {
        this.mParams.matchConstraintMinHeight = i9;
        return this;
    }

    public ConstraintProperties constrainMinWidth(int i9) {
        this.mParams.matchConstraintMinWidth = i9;
        return this;
    }

    public ConstraintProperties constrainWidth(int i9) {
        ((ViewGroup.MarginLayoutParams) this.mParams).width = i9;
        return this;
    }

    public ConstraintProperties dimensionRatio(String str) {
        this.mParams.dimensionRatio = str;
        return this;
    }

    public ConstraintProperties elevation(float f10) {
        this.mView.setElevation(f10);
        return this;
    }

    public ConstraintProperties goneMargin(int i9, int i10) {
        switch (i9) {
            case 1:
                this.mParams.goneLeftMargin = i10;
                break;
            case 2:
                this.mParams.goneRightMargin = i10;
                break;
            case 3:
                this.mParams.goneTopMargin = i10;
                break;
            case 4:
                this.mParams.goneBottomMargin = i10;
                break;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                this.mParams.goneStartMargin = i10;
                break;
            case 7:
                this.mParams.goneEndMargin = i10;
                break;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
        return this;
    }

    public ConstraintProperties horizontalBias(float f10) {
        this.mParams.horizontalBias = f10;
        return this;
    }

    public ConstraintProperties horizontalChainStyle(int i9) {
        this.mParams.horizontalChainStyle = i9;
        return this;
    }

    public ConstraintProperties horizontalWeight(float f10) {
        this.mParams.horizontalWeight = f10;
        return this;
    }

    public ConstraintProperties margin(int i9, int i10) {
        switch (i9) {
            case 1:
                ((ViewGroup.MarginLayoutParams) this.mParams).leftMargin = i10;
                break;
            case 2:
                ((ViewGroup.MarginLayoutParams) this.mParams).rightMargin = i10;
                break;
            case 3:
                ((ViewGroup.MarginLayoutParams) this.mParams).topMargin = i10;
                break;
            case 4:
                ((ViewGroup.MarginLayoutParams) this.mParams).bottomMargin = i10;
                break;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                this.mParams.setMarginStart(i10);
                break;
            case 7:
                this.mParams.setMarginEnd(i10);
                break;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
        return this;
    }

    public ConstraintProperties removeConstraints(int i9) {
        switch (i9) {
            case 1:
                ConstraintLayout.LayoutParams layoutParams = this.mParams;
                layoutParams.leftToRight = -1;
                layoutParams.leftToLeft = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = -1;
                layoutParams.goneLeftMargin = Integer.MIN_VALUE;
                break;
            case 2:
                ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
                layoutParams2.rightToRight = -1;
                layoutParams2.rightToLeft = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = -1;
                layoutParams2.goneRightMargin = Integer.MIN_VALUE;
                break;
            case 3:
                ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
                layoutParams3.topToBottom = -1;
                layoutParams3.topToTop = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = -1;
                layoutParams3.goneTopMargin = Integer.MIN_VALUE;
                break;
            case 4:
                ConstraintLayout.LayoutParams layoutParams4 = this.mParams;
                layoutParams4.bottomToTop = -1;
                layoutParams4.bottomToBottom = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin = -1;
                layoutParams4.goneBottomMargin = Integer.MIN_VALUE;
                break;
            case 5:
                this.mParams.baselineToBaseline = -1;
                break;
            case 6:
                ConstraintLayout.LayoutParams layoutParams5 = this.mParams;
                layoutParams5.startToEnd = -1;
                layoutParams5.startToStart = -1;
                layoutParams5.setMarginStart(-1);
                this.mParams.goneStartMargin = Integer.MIN_VALUE;
                break;
            case 7:
                ConstraintLayout.LayoutParams layoutParams6 = this.mParams;
                layoutParams6.endToStart = -1;
                layoutParams6.endToEnd = -1;
                layoutParams6.setMarginEnd(-1);
                this.mParams.goneEndMargin = Integer.MIN_VALUE;
                break;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
        return this;
    }

    public ConstraintProperties removeFromHorizontalChain() {
        ConstraintLayout.LayoutParams layoutParams = this.mParams;
        int i9 = layoutParams.leftToRight;
        int i10 = layoutParams.rightToLeft;
        if (i9 == -1 && i10 == -1) {
            int i11 = layoutParams.startToEnd;
            int i12 = layoutParams.endToStart;
            if (i11 != -1 || i12 != -1) {
                ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i11));
                ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i12));
                ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
                if (i11 != -1 && i12 != -1) {
                    constraintProperties.connect(7, i12, 6, 0);
                    constraintProperties2.connect(6, i9, 7, 0);
                } else if (i9 != -1 || i12 != -1) {
                    int i13 = layoutParams2.rightToRight;
                    if (i13 != -1) {
                        constraintProperties.connect(7, i13, 7, 0);
                    } else {
                        int i14 = layoutParams2.leftToLeft;
                        if (i14 != -1) {
                            constraintProperties2.connect(6, i14, 6, 0);
                        }
                    }
                }
            }
            removeConstraints(6);
            removeConstraints(7);
        } else {
            ConstraintProperties constraintProperties3 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i9));
            ConstraintProperties constraintProperties4 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i10));
            ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
            if (i9 != -1 && i10 != -1) {
                constraintProperties3.connect(2, i10, 1, 0);
                constraintProperties4.connect(1, i9, 2, 0);
            } else if (i9 != -1 || i10 != -1) {
                int i15 = layoutParams3.rightToRight;
                if (i15 != -1) {
                    constraintProperties3.connect(2, i15, 2, 0);
                } else {
                    int i16 = layoutParams3.leftToLeft;
                    if (i16 != -1) {
                        constraintProperties4.connect(1, i16, 1, 0);
                    }
                }
            }
            removeConstraints(1);
            removeConstraints(2);
        }
        return this;
    }

    public ConstraintProperties removeFromVerticalChain() {
        ConstraintLayout.LayoutParams layoutParams = this.mParams;
        int i9 = layoutParams.topToBottom;
        int i10 = layoutParams.bottomToTop;
        if (i9 != -1 || i10 != -1) {
            ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i9));
            ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i10));
            ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
            if (i9 != -1 && i10 != -1) {
                constraintProperties.connect(4, i10, 3, 0);
                constraintProperties2.connect(3, i9, 4, 0);
            } else if (i9 != -1 || i10 != -1) {
                int i11 = layoutParams2.bottomToBottom;
                if (i11 != -1) {
                    constraintProperties.connect(4, i11, 4, 0);
                } else {
                    int i12 = layoutParams2.topToTop;
                    if (i12 != -1) {
                        constraintProperties2.connect(3, i12, 3, 0);
                    }
                }
            }
        }
        removeConstraints(3);
        removeConstraints(4);
        return this;
    }

    public ConstraintProperties rotation(float f10) {
        this.mView.setRotation(f10);
        return this;
    }

    public ConstraintProperties rotationX(float f10) {
        this.mView.setRotationX(f10);
        return this;
    }

    public ConstraintProperties rotationY(float f10) {
        this.mView.setRotationY(f10);
        return this;
    }

    public ConstraintProperties scaleX(float f10) {
        this.mView.setScaleY(f10);
        return this;
    }

    public ConstraintProperties scaleY(float f10) {
        return this;
    }

    public ConstraintProperties transformPivot(float f10, float f11) {
        this.mView.setPivotX(f10);
        this.mView.setPivotY(f11);
        return this;
    }

    public ConstraintProperties transformPivotX(float f10) {
        this.mView.setPivotX(f10);
        return this;
    }

    public ConstraintProperties transformPivotY(float f10) {
        this.mView.setPivotY(f10);
        return this;
    }

    public ConstraintProperties translation(float f10, float f11) {
        this.mView.setTranslationX(f10);
        this.mView.setTranslationY(f11);
        return this;
    }

    public ConstraintProperties translationX(float f10) {
        this.mView.setTranslationX(f10);
        return this;
    }

    public ConstraintProperties translationY(float f10) {
        this.mView.setTranslationY(f10);
        return this;
    }

    public ConstraintProperties translationZ(float f10) {
        this.mView.setTranslationZ(f10);
        return this;
    }

    public ConstraintProperties verticalBias(float f10) {
        this.mParams.verticalBias = f10;
        return this;
    }

    public ConstraintProperties verticalChainStyle(int i9) {
        this.mParams.verticalChainStyle = i9;
        return this;
    }

    public ConstraintProperties verticalWeight(float f10) {
        this.mParams.verticalWeight = f10;
        return this;
    }

    public ConstraintProperties visibility(int i9) {
        this.mView.setVisibility(i9);
        return this;
    }

    public ConstraintProperties centerHorizontally(int i9) {
        if (i9 == 0) {
            center(0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            center(i9, 2, 0, i9, 1, 0, 0.5f);
        }
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int i9) {
        if (i9 == 0) {
            center(0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            center(i9, 7, 0, i9, 6, 0, 0.5f);
        }
        return this;
    }

    public ConstraintProperties centerVertically(int i9) {
        if (i9 == 0) {
            center(0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            center(i9, 4, 0, i9, 3, 0, 0.5f);
        }
        return this;
    }
}
