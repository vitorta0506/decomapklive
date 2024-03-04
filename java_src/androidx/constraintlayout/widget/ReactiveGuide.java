package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.SharedValues;
/* loaded from: classes.dex */
public class ReactiveGuide extends View implements SharedValues.SharedValuesListener {
    private boolean mAnimateChange;
    private boolean mApplyToAllConstraintSets;
    private int mApplyToConstraintSetId;
    private int mAttributeId;

    public ReactiveGuide(Context context) {
        super(context);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        init(null);
    }

    private void changeValue(int i9, int i10, MotionLayout motionLayout, int i11) {
        ConstraintSet constraintSet = motionLayout.getConstraintSet(i11);
        constraintSet.setGuidelineEnd(i10, i9);
        motionLayout.updateState(i11, constraintSet);
    }

    private void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_ReactiveGuide);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i9 = 0; i9 < indexCount; i9++) {
                int index = obtainStyledAttributes.getIndex(i9);
                if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_valueId) {
                    this.mAttributeId = obtainStyledAttributes.getResourceId(index, this.mAttributeId);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_animateChange) {
                    this.mAnimateChange = obtainStyledAttributes.getBoolean(index, this.mAnimateChange);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToConstraintSet) {
                    this.mApplyToConstraintSetId = obtainStyledAttributes.getResourceId(index, this.mApplyToConstraintSetId);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToAllConstraintSets) {
                    this.mApplyToAllConstraintSets = obtainStyledAttributes.getBoolean(index, this.mApplyToAllConstraintSets);
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (this.mAttributeId != -1) {
            ConstraintLayout.getSharedValues().addListener(this.mAttributeId, this);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    public int getApplyToConstraintSetId() {
        return this.mApplyToConstraintSetId;
    }

    public int getAttributeId() {
        return this.mAttributeId;
    }

    public boolean isAnimatingChange() {
        return this.mAnimateChange;
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        setMeasuredDimension(0, 0);
    }

    @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
    public void onNewValue(int i9, int i10, int i11) {
        setGuidelineBegin(i10);
        int id2 = getId();
        if (id2 > 0 && (getParent() instanceof MotionLayout)) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            int currentState = motionLayout.getCurrentState();
            int i12 = this.mApplyToConstraintSetId;
            if (i12 != 0) {
                currentState = i12;
            }
            int i13 = 0;
            if (this.mAnimateChange) {
                if (this.mApplyToAllConstraintSets) {
                    int[] constraintSetIds = motionLayout.getConstraintSetIds();
                    while (i13 < constraintSetIds.length) {
                        int i14 = constraintSetIds[i13];
                        if (i14 != currentState) {
                            changeValue(i10, id2, motionLayout, i14);
                        }
                        i13++;
                    }
                }
                ConstraintSet cloneConstraintSet = motionLayout.cloneConstraintSet(currentState);
                cloneConstraintSet.setGuidelineEnd(id2, i10);
                motionLayout.updateStateAnimate(currentState, cloneConstraintSet, 1000);
            } else if (this.mApplyToAllConstraintSets) {
                int[] constraintSetIds2 = motionLayout.getConstraintSetIds();
                while (i13 < constraintSetIds2.length) {
                    changeValue(i10, id2, motionLayout, constraintSetIds2[i13]);
                    i13++;
                }
            } else {
                changeValue(i10, id2, motionLayout, currentState);
            }
        }
    }

    public void setAnimateChange(boolean z10) {
        this.mAnimateChange = z10;
    }

    public void setApplyToConstraintSetId(int i9) {
        this.mApplyToConstraintSetId = i9;
    }

    public void setAttributeId(int i9) {
        SharedValues sharedValues = ConstraintLayout.getSharedValues();
        int i10 = this.mAttributeId;
        if (i10 != -1) {
            sharedValues.removeListener(i10, this);
        }
        this.mAttributeId = i9;
        if (i9 != -1) {
            sharedValues.addListener(i9, this);
        }
    }

    public void setGuidelineBegin(int i9) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guideBegin = i9;
        setLayoutParams(layoutParams);
    }

    public void setGuidelineEnd(int i9) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guideEnd = i9;
        setLayoutParams(layoutParams);
    }

    public void setGuidelinePercent(float f10) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guidePercent = f10;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void setVisibility(int i9) {
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        init(attributeSet);
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        init(attributeSet);
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        init(attributeSet);
    }
}
