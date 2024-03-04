package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.HashSet;
/* loaded from: classes.dex */
public class VirtualLayout extends HelperWidget {
    private int mPaddingTop = 0;
    private int mPaddingBottom = 0;
    private int mPaddingLeft = 0;
    private int mPaddingRight = 0;
    private int mPaddingStart = 0;
    private int mPaddingEnd = 0;
    private int mResolvedPaddingLeft = 0;
    private int mResolvedPaddingRight = 0;
    private boolean mNeedsCallFromSolver = false;
    private int mMeasuredWidth = 0;
    private int mMeasuredHeight = 0;
    protected BasicMeasure.Measure mMeasure = new BasicMeasure.Measure();
    BasicMeasure.Measurer mMeasurer = null;

    public void applyRtl(boolean z10) {
        int i9 = this.mPaddingStart;
        if (i9 > 0 || this.mPaddingEnd > 0) {
            if (z10) {
                this.mResolvedPaddingLeft = this.mPaddingEnd;
                this.mResolvedPaddingRight = i9;
                return;
            }
            this.mResolvedPaddingLeft = i9;
            this.mResolvedPaddingRight = this.mPaddingEnd;
        }
    }

    public void captureWidgets() {
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            ConstraintWidget constraintWidget = this.mWidgets[i9];
            if (constraintWidget != null) {
                constraintWidget.setInVirtualLayout(true);
            }
        }
    }

    public boolean contains(HashSet<ConstraintWidget> hashSet) {
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            if (hashSet.contains(this.mWidgets[i9])) {
                return true;
            }
        }
        return false;
    }

    public int getMeasuredHeight() {
        return this.mMeasuredHeight;
    }

    public int getMeasuredWidth() {
        return this.mMeasuredWidth;
    }

    public int getPaddingBottom() {
        return this.mPaddingBottom;
    }

    public int getPaddingLeft() {
        return this.mResolvedPaddingLeft;
    }

    public int getPaddingRight() {
        return this.mResolvedPaddingRight;
    }

    public int getPaddingTop() {
        return this.mPaddingTop;
    }

    public void measure(int i9, int i10, int i11, int i12) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void measure(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i9, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i10) {
        while (this.mMeasurer == null && getParent() != null) {
            this.mMeasurer = ((ConstraintWidgetContainer) getParent()).getMeasurer();
        }
        BasicMeasure.Measure measure = this.mMeasure;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = i9;
        measure.verticalDimension = i10;
        this.mMeasurer.measure(constraintWidget, measure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean measureChildren() {
        ConstraintWidget constraintWidget = this.mParent;
        BasicMeasure.Measurer measurer = constraintWidget != null ? ((ConstraintWidgetContainer) constraintWidget).getMeasurer() : null;
        if (measurer == null) {
            return false;
        }
        int i9 = 0;
        while (true) {
            boolean z10 = true;
            if (i9 >= this.mWidgetsCount) {
                return true;
            }
            ConstraintWidget constraintWidget2 = this.mWidgets[i9];
            if (constraintWidget2 != null && !(constraintWidget2 instanceof Guideline)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget2.getDimensionBehaviour(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget2.getDimensionBehaviour(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (!((dimensionBehaviour != dimensionBehaviour3 || constraintWidget2.mMatchConstraintDefaultWidth == 1 || dimensionBehaviour2 != dimensionBehaviour3 || constraintWidget2.mMatchConstraintDefaultHeight == 1) ? false : false)) {
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    BasicMeasure.Measure measure = this.mMeasure;
                    measure.horizontalBehavior = dimensionBehaviour;
                    measure.verticalBehavior = dimensionBehaviour2;
                    measure.horizontalDimension = constraintWidget2.getWidth();
                    this.mMeasure.verticalDimension = constraintWidget2.getHeight();
                    measurer.measure(constraintWidget2, this.mMeasure);
                    constraintWidget2.setWidth(this.mMeasure.measuredWidth);
                    constraintWidget2.setHeight(this.mMeasure.measuredHeight);
                    constraintWidget2.setBaselineDistance(this.mMeasure.measuredBaseline);
                }
            }
            i9++;
        }
    }

    public boolean needSolverPass() {
        return this.mNeedsCallFromSolver;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void needsCallbackFromSolver(boolean z10) {
        this.mNeedsCallFromSolver = z10;
    }

    public void setMeasure(int i9, int i10) {
        this.mMeasuredWidth = i9;
        this.mMeasuredHeight = i10;
    }

    public void setPadding(int i9) {
        this.mPaddingLeft = i9;
        this.mPaddingTop = i9;
        this.mPaddingRight = i9;
        this.mPaddingBottom = i9;
        this.mPaddingStart = i9;
        this.mPaddingEnd = i9;
    }

    public void setPaddingBottom(int i9) {
        this.mPaddingBottom = i9;
    }

    public void setPaddingEnd(int i9) {
        this.mPaddingEnd = i9;
    }

    public void setPaddingLeft(int i9) {
        this.mPaddingLeft = i9;
        this.mResolvedPaddingLeft = i9;
    }

    public void setPaddingRight(int i9) {
        this.mPaddingRight = i9;
        this.mResolvedPaddingRight = i9;
    }

    public void setPaddingStart(int i9) {
        this.mPaddingStart = i9;
        this.mResolvedPaddingLeft = i9;
        this.mResolvedPaddingRight = i9;
    }

    public void setPaddingTop(int i9) {
        this.mPaddingTop = i9;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.Helper
    public void updateConstraints(ConstraintWidgetContainer constraintWidgetContainer) {
        captureWidgets();
    }
}
