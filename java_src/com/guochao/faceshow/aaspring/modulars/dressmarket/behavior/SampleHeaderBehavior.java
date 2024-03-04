package com.guochao.faceshow.aaspring.modulars.dressmarket.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.aaspring.utils.LogUtils;
/* loaded from: classes3.dex */
public class SampleHeaderBehavior extends AppBarLayout.ScrollingViewBehavior {
    public SampleHeaderBehavior() {
    }

    @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, com.google.android.material.appbar.ViewOffsetBehavior
    public int getLeftAndRightOffset() {
        int leftAndRightOffset = super.getLeftAndRightOffset();
        LogUtils.i("zune: ", "getLeftAndRightOffset: " + leftAndRightOffset);
        return leftAndRightOffset;
    }

    @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, com.google.android.material.appbar.ViewOffsetBehavior
    public int getTopAndBottomOffset() {
        int topAndBottomOffset = super.getTopAndBottomOffset();
        LogUtils.i("zune: ", "getTopAndBottomOffset: " + topAndBottomOffset);
        return topAndBottomOffset;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        motionEvent.getAction();
        return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i9) {
        boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, view, i9);
        LogUtils.i("zune: ", "onLayoutChild: " + onLayoutChild);
        return onLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2, @NonNull View view3, int i9, int i10) {
        boolean onStartNestedScroll = super.onStartNestedScroll(coordinatorLayout, view, view2, view3, i9, i10);
        LogUtils.i("zune: ", "onStartNestedScroll: " + onStartNestedScroll);
        return onStartNestedScroll;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, com.google.android.material.appbar.HeaderScrollingViewBehavior
    public boolean shouldHeaderOverlapScrollingChild() {
        boolean shouldHeaderOverlapScrollingChild = super.shouldHeaderOverlapScrollingChild();
        LogUtils.i("zune: ", "shouldHeaderOverlapScrollingChild: " + shouldHeaderOverlapScrollingChild);
        return shouldHeaderOverlapScrollingChild;
    }

    public SampleHeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
