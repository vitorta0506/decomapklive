package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
/* loaded from: classes.dex */
public class MotionHelper extends ConstraintHelper implements MotionHelperInterface {
    private float mProgress;
    private boolean mUseOnHide;
    private boolean mUseOnShow;
    protected View[] views;

    public MotionHelper(Context context) {
        super(context);
        this.mUseOnShow = false;
        this.mUseOnHide = false;
    }

    @Override // androidx.constraintlayout.motion.widget.Animatable
    public float getProgress() {
        return this.mProgress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.MotionHelper);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i9 = 0; i9 < indexCount; i9++) {
                int index = obtainStyledAttributes.getIndex(i9);
                if (index == R.styleable.MotionHelper_onShow) {
                    this.mUseOnShow = obtainStyledAttributes.getBoolean(index, this.mUseOnShow);
                } else if (index == R.styleable.MotionHelper_onHide) {
                    this.mUseOnHide = obtainStyledAttributes.getBoolean(index, this.mUseOnHide);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public boolean isDecorator() {
        return false;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelperInterface
    public boolean isUseOnHide() {
        return this.mUseOnHide;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelperInterface
    public boolean isUsedOnShow() {
        return this.mUseOnShow;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelperInterface
    public void onFinishedMotionScene(MotionLayout motionLayout) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelperInterface
    public void onPostDraw(Canvas canvas) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelperInterface
    public void onPreDraw(Canvas canvas) {
    }

    public void onPreSetup(MotionLayout motionLayout, HashMap<View, MotionController> hashMap) {
    }

    public void onTransitionChange(MotionLayout motionLayout, int i9, int i10, float f10) {
    }

    public void onTransitionCompleted(MotionLayout motionLayout, int i9) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    public void onTransitionStarted(MotionLayout motionLayout, int i9, int i10) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    public void onTransitionTrigger(MotionLayout motionLayout, int i9, boolean z10, float f10) {
    }

    @Override // androidx.constraintlayout.motion.widget.Animatable
    public void setProgress(float f10) {
        this.mProgress = f10;
        int i9 = 0;
        if (this.mCount > 0) {
            this.views = getViews((ConstraintLayout) getParent());
            while (i9 < this.mCount) {
                setProgress(this.views[i9], f10);
                i9++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i9 < childCount) {
            View childAt = viewGroup.getChildAt(i9);
            if (!(childAt instanceof MotionHelper)) {
                setProgress(childAt, f10);
            }
            i9++;
        }
    }

    public void setProgress(View view, float f10) {
    }

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mUseOnShow = false;
        this.mUseOnHide = false;
        init(attributeSet);
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mUseOnShow = false;
        this.mUseOnHide = false;
        init(attributeSet);
    }
}
