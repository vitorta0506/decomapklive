package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public final class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {
    public static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_LinearProgressIndicator;
    public static final int INDETERMINATE_ANIMATION_TYPE_CONTIGUOUS = 0;
    public static final int INDETERMINATE_ANIMATION_TYPE_DISJOINT = 1;
    public static final int INDICATOR_DIRECTION_END_TO_START = 3;
    public static final int INDICATOR_DIRECTION_LEFT_TO_RIGHT = 0;
    public static final int INDICATOR_DIRECTION_RIGHT_TO_LEFT = 1;
    public static final int INDICATOR_DIRECTION_START_TO_END = 2;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface IndeterminateAnimationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface IndicatorDirection {
    }

    public LinearProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    private void initializeDrawables() {
        setIndeterminateDrawable(IndeterminateDrawable.createLinearDrawable(getContext(), (LinearProgressIndicatorSpec) this.spec));
        setProgressDrawable(DeterminateDrawable.createLinearDrawable(getContext(), (LinearProgressIndicatorSpec) this.spec));
    }

    public int getIndeterminateAnimationType() {
        return ((LinearProgressIndicatorSpec) this.spec).indeterminateAnimationType;
    }

    public int getIndicatorDirection() {
        return ((LinearProgressIndicatorSpec) this.spec).indicatorDirection;
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        S s10 = this.spec;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) s10;
        boolean z11 = true;
        if (((LinearProgressIndicatorSpec) s10).indicatorDirection != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((LinearProgressIndicatorSpec) this.spec).indicatorDirection != 2) && (ViewCompat.getLayoutDirection(this) != 0 || ((LinearProgressIndicatorSpec) this.spec).indicatorDirection != 3))) {
            z11 = false;
        }
        linearProgressIndicatorSpec.drawHorizontallyInverse = z11;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        int paddingLeft = i9 - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i10 - (getPaddingTop() + getPaddingBottom());
        IndeterminateDrawable<LinearProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
        DeterminateDrawable<LinearProgressIndicatorSpec> progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    public void setIndeterminateAnimationType(int i9) {
        if (((LinearProgressIndicatorSpec) this.spec).indeterminateAnimationType == i9) {
            return;
        }
        if (visibleToUser() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        S s10 = this.spec;
        ((LinearProgressIndicatorSpec) s10).indeterminateAnimationType = i9;
        ((LinearProgressIndicatorSpec) s10).validateSpec();
        if (i9 == 0) {
            getIndeterminateDrawable().setAnimatorDelegate(new LinearIndeterminateContiguousAnimatorDelegate((LinearProgressIndicatorSpec) this.spec));
        } else {
            getIndeterminateDrawable().setAnimatorDelegate(new LinearIndeterminateDisjointAnimatorDelegate(getContext(), (LinearProgressIndicatorSpec) this.spec));
        }
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(@NonNull int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.spec).validateSpec();
    }

    public void setIndicatorDirection(int i9) {
        S s10 = this.spec;
        ((LinearProgressIndicatorSpec) s10).indicatorDirection = i9;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) s10;
        boolean z10 = true;
        if (i9 != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((LinearProgressIndicatorSpec) this.spec).indicatorDirection != 2) && (ViewCompat.getLayoutDirection(this) != 0 || i9 != 3))) {
            z10 = false;
        }
        linearProgressIndicatorSpec.drawHorizontallyInverse = z10;
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setProgressCompat(int i9, boolean z10) {
        S s10 = this.spec;
        if (s10 != 0 && ((LinearProgressIndicatorSpec) s10).indeterminateAnimationType == 0 && isIndeterminate()) {
            return;
        }
        super.setProgressCompat(i9, z10);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i9) {
        super.setTrackCornerRadius(i9);
        ((LinearProgressIndicatorSpec) this.spec).validateSpec();
        invalidate();
    }

    public LinearProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public LinearProgressIndicatorSpec createSpec(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    public LinearProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i9) {
        super(context, attributeSet, i9, DEF_STYLE_RES);
        initializeDrawables();
    }
}
