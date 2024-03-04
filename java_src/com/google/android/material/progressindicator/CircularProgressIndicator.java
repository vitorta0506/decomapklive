package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public final class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {
    public static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_CircularProgressIndicator;
    public static final int INDICATOR_DIRECTION_CLOCKWISE = 0;
    public static final int INDICATOR_DIRECTION_COUNTERCLOCKWISE = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface IndicatorDirection {
    }

    public CircularProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    private void initializeDrawables() {
        setIndeterminateDrawable(IndeterminateDrawable.createCircularDrawable(getContext(), (CircularProgressIndicatorSpec) this.spec));
        setProgressDrawable(DeterminateDrawable.createCircularDrawable(getContext(), (CircularProgressIndicatorSpec) this.spec));
    }

    public int getIndicatorDirection() {
        return ((CircularProgressIndicatorSpec) this.spec).indicatorDirection;
    }

    @Px
    public int getIndicatorInset() {
        return ((CircularProgressIndicatorSpec) this.spec).indicatorInset;
    }

    @Px
    public int getIndicatorSize() {
        return ((CircularProgressIndicatorSpec) this.spec).indicatorSize;
    }

    public void setIndicatorDirection(int i9) {
        ((CircularProgressIndicatorSpec) this.spec).indicatorDirection = i9;
        invalidate();
    }

    public void setIndicatorInset(@Px int i9) {
        S s10 = this.spec;
        if (((CircularProgressIndicatorSpec) s10).indicatorInset != i9) {
            ((CircularProgressIndicatorSpec) s10).indicatorInset = i9;
            invalidate();
        }
    }

    public void setIndicatorSize(@Px int i9) {
        int max = Math.max(i9, getTrackThickness() * 2);
        S s10 = this.spec;
        if (((CircularProgressIndicatorSpec) s10).indicatorSize != max) {
            ((CircularProgressIndicatorSpec) s10).indicatorSize = max;
            ((CircularProgressIndicatorSpec) s10).validateSpec();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i9) {
        super.setTrackThickness(i9);
        ((CircularProgressIndicatorSpec) this.spec).validateSpec();
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public CircularProgressIndicatorSpec createSpec(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i9) {
        super(context, attributeSet, i9, DEF_STYLE_RES);
        initializeDrawables();
    }
}
