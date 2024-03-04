package com.google.android.material.navigationrail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationBarView;
/* loaded from: classes2.dex */
public class NavigationRailView extends NavigationBarView {
    private static final int DEFAULT_HEADER_GRAVITY = 49;
    static final int DEFAULT_MENU_GRAVITY = 49;
    static final int MAX_ITEM_COUNT = 7;
    static final int NO_ITEM_MINIMUM_HEIGHT = -1;
    @Nullable
    private View headerView;
    private final int topMargin;

    public NavigationRailView(@NonNull Context context) {
        this(context, null);
    }

    private void applyWindowInsets() {
        ViewUtils.doOnApplyWindowInsets(this, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.navigationrail.NavigationRailView.1
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            @NonNull
            public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.RelativePadding relativePadding) {
                relativePadding.top += windowInsetsCompat.getSystemWindowInsetTop();
                relativePadding.bottom += windowInsetsCompat.getSystemWindowInsetBottom();
                boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
                int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
                int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
                int i9 = relativePadding.start;
                if (z10) {
                    systemWindowInsetLeft = systemWindowInsetRight;
                }
                relativePadding.start = i9 + systemWindowInsetLeft;
                relativePadding.applyToView(view);
                return windowInsetsCompat;
            }
        });
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    private boolean isHeaderViewVisible() {
        View view = this.headerView;
        return (view == null || view.getVisibility() == 8) ? false : true;
    }

    private int makeMinWidthSpec(int i9) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i9) == 1073741824 || suggestedMinimumWidth <= 0) {
            return i9;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i9), suggestedMinimumWidth + getPaddingLeft() + getPaddingRight()), BasicMeasure.EXACTLY);
    }

    public void addHeaderView(@LayoutRes int i9) {
        addHeaderView(LayoutInflater.from(getContext()).inflate(i9, (ViewGroup) this, false));
    }

    @Nullable
    public View getHeaderView() {
        return this.headerView;
    }

    public int getItemMinimumHeight() {
        return ((NavigationRailMenuView) getMenuView()).getItemMinimumHeight();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        NavigationRailMenuView navigationRailMenuView = getNavigationRailMenuView();
        int i13 = 0;
        if (isHeaderViewVisible()) {
            int bottom = this.headerView.getBottom() + this.topMargin;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i13 = bottom - top;
            }
        } else if (navigationRailMenuView.isTopGravity()) {
            i13 = this.topMargin;
        }
        if (i13 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i13, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i13);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        int makeMinWidthSpec = makeMinWidthSpec(i9);
        super.onMeasure(makeMinWidthSpec, i10);
        if (isHeaderViewVisible()) {
            measureChild(getNavigationRailMenuView(), makeMinWidthSpec, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.headerView.getMeasuredHeight()) - this.topMargin, Integer.MIN_VALUE));
        }
    }

    public void removeHeaderView() {
        View view = this.headerView;
        if (view != null) {
            removeView(view);
            this.headerView = null;
        }
    }

    public void setItemMinimumHeight(@Px int i9) {
        ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i9);
    }

    public void setMenuGravity(int i9) {
        getNavigationRailMenuView().setMenuGravity(i9);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationRailStyle);
    }

    public void addHeaderView(@NonNull View view) {
        removeHeaderView();
        this.headerView = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = this.topMargin;
        addView(view, 0, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.navigation.NavigationBarView
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavigationRailMenuView createNavigationBarMenuView(@NonNull Context context) {
        return new NavigationRailMenuView(context);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, R.style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9, i10);
        this.topMargin = getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_rail_margin);
        TintTypedArray obtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(getContext(), attributeSet, R.styleable.NavigationRailView, i9, i10, new int[0]);
        int resourceId = obtainTintedStyledAttributes.getResourceId(R.styleable.NavigationRailView_headerLayout, 0);
        if (resourceId != 0) {
            addHeaderView(resourceId);
        }
        setMenuGravity(obtainTintedStyledAttributes.getInt(R.styleable.NavigationRailView_menuGravity, 49));
        int i11 = R.styleable.NavigationRailView_itemMinHeight;
        if (obtainTintedStyledAttributes.hasValue(i11)) {
            setItemMinimumHeight(obtainTintedStyledAttributes.getDimensionPixelSize(i11, -1));
        }
        obtainTintedStyledAttributes.recycle();
        applyWindowInsets();
    }
}
