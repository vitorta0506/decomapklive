package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class MaterialSharedAxis extends MaterialVisibility<VisibilityAnimatorProvider> {
    @AttrRes
    private static final int DEFAULT_THEMED_DURATION_ATTR = R.attr.motionDurationLong1;
    @AttrRes
    private static final int DEFAULT_THEMED_EASING_ATTR = R.attr.motionEasingStandard;
    public static final int X = 0;
    public static final int Y = 1;
    public static final int Z = 2;
    private final int axis;
    private final boolean forward;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface Axis {
    }

    public MaterialSharedAxis(int i9, boolean z10) {
        super(createPrimaryAnimatorProvider(i9, z10), createSecondaryAnimatorProvider());
        this.axis = i9;
        this.forward = z10;
    }

    private static VisibilityAnimatorProvider createPrimaryAnimatorProvider(int i9, boolean z10) {
        if (i9 == 0) {
            return new SlideDistanceProvider(z10 ? GravityCompat.END : GravityCompat.START);
        } else if (i9 == 1) {
            return new SlideDistanceProvider(z10 ? 80 : 48);
        } else if (i9 == 2) {
            return new ScaleProvider(z10);
        } else {
            throw new IllegalArgumentException("Invalid axis: " + i9);
        }
    }

    private static VisibilityAnimatorProvider createSecondaryAnimatorProvider() {
        return new FadeThroughProvider();
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    public /* bridge */ /* synthetic */ void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.addAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    public /* bridge */ /* synthetic */ void clearAdditionalAnimatorProvider() {
        super.clearAdditionalAnimatorProvider();
    }

    public int getAxis() {
        return this.axis;
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    @AttrRes
    int getDurationThemeAttrResId(boolean z10) {
        return DEFAULT_THEMED_DURATION_ATTR;
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    @AttrRes
    int getEasingThemeAttrResId(boolean z10) {
        return DEFAULT_THEMED_EASING_ATTR;
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    @NonNull
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getPrimaryAnimatorProvider() {
        return super.getPrimaryAnimatorProvider();
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    @Nullable
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return super.getSecondaryAnimatorProvider();
    }

    public boolean isForward() {
        return this.forward;
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    public /* bridge */ /* synthetic */ boolean removeAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.removeAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    public /* bridge */ /* synthetic */ void setSecondaryAnimatorProvider(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.setSecondaryAnimatorProvider(visibilityAnimatorProvider);
    }
}
