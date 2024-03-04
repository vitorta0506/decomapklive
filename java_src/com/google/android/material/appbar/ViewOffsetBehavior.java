package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private int tempLeftRightOffset;
    private int tempTopBottomOffset;
    private ViewOffsetHelper viewOffsetHelper;

    public ViewOffsetBehavior() {
        this.tempTopBottomOffset = 0;
        this.tempLeftRightOffset = 0;
    }

    public int getLeftAndRightOffset() {
        ViewOffsetHelper viewOffsetHelper = this.viewOffsetHelper;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.getLeftAndRightOffset();
        }
        return 0;
    }

    public int getTopAndBottomOffset() {
        ViewOffsetHelper viewOffsetHelper = this.viewOffsetHelper;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.getTopAndBottomOffset();
        }
        return 0;
    }

    public boolean isHorizontalOffsetEnabled() {
        ViewOffsetHelper viewOffsetHelper = this.viewOffsetHelper;
        return viewOffsetHelper != null && viewOffsetHelper.isHorizontalOffsetEnabled();
    }

    public boolean isVerticalOffsetEnabled() {
        ViewOffsetHelper viewOffsetHelper = this.viewOffsetHelper;
        return viewOffsetHelper != null && viewOffsetHelper.isVerticalOffsetEnabled();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void layoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i9) {
        coordinatorLayout.onLayoutChild(v10, i9);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i9) {
        layoutChild(coordinatorLayout, v10, i9);
        if (this.viewOffsetHelper == null) {
            this.viewOffsetHelper = new ViewOffsetHelper(v10);
        }
        this.viewOffsetHelper.onViewLayout();
        this.viewOffsetHelper.applyOffsets();
        int i10 = this.tempTopBottomOffset;
        if (i10 != 0) {
            this.viewOffsetHelper.setTopAndBottomOffset(i10);
            this.tempTopBottomOffset = 0;
        }
        int i11 = this.tempLeftRightOffset;
        if (i11 != 0) {
            this.viewOffsetHelper.setLeftAndRightOffset(i11);
            this.tempLeftRightOffset = 0;
            return true;
        }
        return true;
    }

    public void setHorizontalOffsetEnabled(boolean z10) {
        ViewOffsetHelper viewOffsetHelper = this.viewOffsetHelper;
        if (viewOffsetHelper != null) {
            viewOffsetHelper.setHorizontalOffsetEnabled(z10);
        }
    }

    public boolean setLeftAndRightOffset(int i9) {
        ViewOffsetHelper viewOffsetHelper = this.viewOffsetHelper;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.setLeftAndRightOffset(i9);
        }
        this.tempLeftRightOffset = i9;
        return false;
    }

    public boolean setTopAndBottomOffset(int i9) {
        ViewOffsetHelper viewOffsetHelper = this.viewOffsetHelper;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.setTopAndBottomOffset(i9);
        }
        this.tempTopBottomOffset = i9;
        return false;
    }

    public void setVerticalOffsetEnabled(boolean z10) {
        ViewOffsetHelper viewOffsetHelper = this.viewOffsetHelper;
        if (viewOffsetHelper != null) {
            viewOffsetHelper.setVerticalOffsetEnabled(z10);
        }
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tempTopBottomOffset = 0;
        this.tempLeftRightOffset = 0;
    }
}
