package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationBarMenuView;
import com.google.android.material.navigation.NavigationBarView;
/* loaded from: classes2.dex */
public class BottomNavigationView extends NavigationBarView {
    static final int MAX_ITEM_COUNT = 5;

    @Deprecated
    /* loaded from: classes2.dex */
    public interface OnNavigationItemReselectedListener extends NavigationBarView.OnItemReselectedListener {
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface OnNavigationItemSelectedListener extends NavigationBarView.OnItemSelectedListener {
    }

    public BottomNavigationView(@NonNull Context context) {
        this(context, null);
    }

    private void addCompatibilityTopDivider(@NonNull Context context) {
        View view = new View(context);
        view.setBackgroundColor(ContextCompat.getColor(context, R.color.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    private void applyWindowInsets() {
        ViewUtils.doOnApplyWindowInsets(this, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.1
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            @NonNull
            public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.RelativePadding relativePadding) {
                relativePadding.bottom += windowInsetsCompat.getSystemWindowInsetBottom();
                boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
                int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
                int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
                relativePadding.start += z10 ? systemWindowInsetRight : systemWindowInsetLeft;
                int i9 = relativePadding.end;
                if (!z10) {
                    systemWindowInsetLeft = systemWindowInsetRight;
                }
                relativePadding.end = i9 + systemWindowInsetLeft;
                relativePadding.applyToView(view);
                return windowInsetsCompat;
            }
        });
    }

    private int makeMinHeightSpec(int i9) {
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i9) == 1073741824 || suggestedMinimumHeight <= 0) {
            return i9;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i9), suggestedMinimumHeight + getPaddingTop() + getPaddingBottom()), BasicMeasure.EXACTLY);
    }

    private boolean shouldDrawCompatibilityTopDivider() {
        return false;
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected NavigationBarMenuView createNavigationBarMenuView(@NonNull Context context) {
        return new BottomNavigationMenuView(context);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 5;
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return ((BottomNavigationMenuView) getMenuView()).isItemHorizontalTranslationEnabled();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, makeMinHeightSpec(i10));
    }

    public void setItemHorizontalTranslationEnabled(boolean z10) {
        BottomNavigationMenuView bottomNavigationMenuView = (BottomNavigationMenuView) getMenuView();
        if (bottomNavigationMenuView.isItemHorizontalTranslationEnabled() != z10) {
            bottomNavigationMenuView.setItemHorizontalTranslationEnabled(z10);
            getPresenter().updateMenuView(false);
        }
    }

    @Deprecated
    public void setOnNavigationItemReselectedListener(@Nullable OnNavigationItemReselectedListener onNavigationItemReselectedListener) {
        setOnItemReselectedListener(onNavigationItemReselectedListener);
    }

    @Deprecated
    public void setOnNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        setOnItemSelectedListener(onNavigationItemSelectedListener);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomNavigationStyle);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, R.style.Widget_Design_BottomNavigationView);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9, i10);
        Context context2 = getContext();
        TintTypedArray obtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R.styleable.BottomNavigationView, i9, i10, new int[0]);
        setItemHorizontalTranslationEnabled(obtainTintedStyledAttributes.getBoolean(R.styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        int i11 = R.styleable.BottomNavigationView_android_minHeight;
        if (obtainTintedStyledAttributes.hasValue(i11)) {
            setMinimumHeight(obtainTintedStyledAttributes.getDimensionPixelSize(i11, 0));
        }
        obtainTintedStyledAttributes.recycle();
        if (shouldDrawCompatibilityTopDivider()) {
            addCompatibilityTopDivider(context2);
        }
        applyWindowInsets();
    }
}
