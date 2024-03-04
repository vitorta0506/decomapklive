package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class NavigationRailMenuView extends NavigationBarMenuView {
    @Px
    private int itemMinimumHeight;
    private final FrameLayout.LayoutParams layoutParams;

    public NavigationRailMenuView(@NonNull Context context) {
        super(context);
        this.itemMinimumHeight = -1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.layoutParams = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
        setItemActiveIndicatorResizeable(true);
    }

    private int makeSharedHeightSpec(int i9, int i10, int i11) {
        int max = i10 / Math.max(1, i11);
        int i12 = this.itemMinimumHeight;
        if (i12 == -1) {
            i12 = View.MeasureSpec.getSize(i9);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(i12, max), 0);
    }

    private int measureChildHeight(View view, int i9, int i10) {
        if (view.getVisibility() != 8) {
            view.measure(i9, i10);
            return view.getMeasuredHeight();
        }
        return 0;
    }

    private int measureSharedChildHeights(int i9, int i10, int i11, View view) {
        int makeMeasureSpec;
        makeSharedHeightSpec(i9, i10, i11);
        if (view == null) {
            makeMeasureSpec = makeSharedHeightSpec(i9, i10, i11);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        }
        int childCount = getChildCount();
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt != view) {
                i12 += measureChildHeight(childAt, i9, makeMeasureSpec);
            }
        }
        return i12;
    }

    private int measureShiftingChildHeights(int i9, int i10, int i11) {
        int i12;
        View childAt = getChildAt(getSelectedItemPosition());
        if (childAt != null) {
            i12 = measureChildHeight(childAt, i9, makeSharedHeightSpec(i9, i10, i11));
            i10 -= i12;
            i11--;
        } else {
            i12 = 0;
        }
        return i12 + measureSharedChildHeights(i9, i10, i11, childAt);
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    protected NavigationBarItemView createNavigationBarItemView(@NonNull Context context) {
        return new NavigationRailItemView(context);
    }

    @Px
    public int getItemMinimumHeight() {
        return this.itemMinimumHeight;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMenuGravity() {
        return this.layoutParams.gravity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isTopGravity() {
        return (this.layoutParams.gravity & 112) == 48;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int childCount = getChildCount();
        int i13 = i11 - i9;
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i14;
                childAt.layout(0, i14, i13, measuredHeight);
                i14 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int measureSharedChildHeights;
        int size = View.MeasureSpec.getSize(i10);
        int size2 = getMenu().getVisibleItems().size();
        if (size2 > 1 && isShifting(getLabelVisibilityMode(), size2)) {
            measureSharedChildHeights = measureShiftingChildHeights(i9, size, size2);
        } else {
            measureSharedChildHeights = measureSharedChildHeights(i9, size, size2, null);
        }
        setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(i9), i9, 0), View.resolveSizeAndState(measureSharedChildHeights, i10, 0));
    }

    public void setItemMinimumHeight(@Px int i9) {
        if (this.itemMinimumHeight != i9) {
            this.itemMinimumHeight = i9;
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMenuGravity(int i9) {
        FrameLayout.LayoutParams layoutParams = this.layoutParams;
        if (layoutParams.gravity != i9) {
            layoutParams.gravity = i9;
            setLayoutParams(layoutParams);
        }
    }
}
