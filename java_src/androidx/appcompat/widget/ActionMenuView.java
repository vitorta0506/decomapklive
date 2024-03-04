package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
/* loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements MenuBuilder.ItemInvoker, MenuView {
    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private MenuPresenter.Callback mActionMenuPresenterCallback;
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private MenuBuilder mMenu;
    MenuBuilder.Callback mMenuBuilderCallback;
    private int mMinCellSize;
    OnMenuItemClickListener mOnMenuItemClickListener;
    private Context mPopupContext;
    private int mPopupTheme;
    private ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface ActionMenuChildView {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z10) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        @ViewDebug.ExportedProperty
        public int cellsUsed;
        @ViewDebug.ExportedProperty
        public boolean expandable;
        boolean expanded;
        @ViewDebug.ExportedProperty
        public int extraPixels;
        @ViewDebug.ExportedProperty
        public boolean isOverflowButton;
        @ViewDebug.ExportedProperty
        public boolean preventEdgeOffset;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.isOverflowButton = layoutParams.isOverflowButton;
        }

        public LayoutParams(int i9, int i10) {
            super(i9, i10);
            this.isOverflowButton = false;
        }

        LayoutParams(int i9, int i10, boolean z10) {
            super(i9, i10);
            this.isOverflowButton = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MenuBuilderCallback implements MenuBuilder.Callback {
        MenuBuilderCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            OnMenuItemClickListener onMenuItemClickListener = ActionMenuView.this.mOnMenuItemClickListener;
            return onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
            MenuBuilder.Callback callback = ActionMenuView.this.mMenuBuilderCallback;
            if (callback != null) {
                callback.onMenuModeChange(menuBuilder);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int measureChildForCells(View view, int i9, int i10, int i11, int i12) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i11) - i12, View.MeasureSpec.getMode(i11));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z10 = true;
        boolean z11 = actionMenuItemView != null && actionMenuItemView.hasText();
        int i13 = 2;
        if (i10 <= 0 || (z11 && i10 < 2)) {
            i13 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i10 * i9, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i14 = measuredWidth / i9;
            if (measuredWidth % i9 != 0) {
                i14++;
            }
            if (!z11 || i14 >= 2) {
                i13 = i14;
            }
        }
        layoutParams.expandable = (layoutParams.isOverflowButton || !z11) ? false : false;
        layoutParams.cellsUsed = i13;
        view.measure(View.MeasureSpec.makeMeasureSpec(i9 * i13, BasicMeasure.EXACTLY), makeMeasureSpec);
        return i13;
    }

    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9, types: [int, boolean] */
    private void onMeasureExactFormat(int i9, int i10) {
        int i11;
        int i12;
        boolean z10;
        int i13;
        boolean z11;
        boolean z12;
        int i14;
        ?? r14;
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i9);
        int size2 = View.MeasureSpec.getSize(i10);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, paddingTop, -2);
        int i15 = size - paddingLeft;
        int i16 = this.mMinCellSize;
        int i17 = i15 / i16;
        int i18 = i15 % i16;
        if (i17 == 0) {
            setMeasuredDimension(i15, 0);
            return;
        }
        int i19 = i16 + (i18 / i17);
        int childCount = getChildCount();
        int i20 = 0;
        int i21 = 0;
        boolean z13 = false;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        long j10 = 0;
        while (i21 < childCount) {
            View childAt = getChildAt(i21);
            int i25 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z14 = childAt instanceof ActionMenuItemView;
                int i26 = i22 + 1;
                if (z14) {
                    int i27 = this.mGeneratedItemPadding;
                    i14 = i26;
                    r14 = 0;
                    childAt.setPadding(i27, 0, i27, 0);
                } else {
                    i14 = i26;
                    r14 = 0;
                }
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                layoutParams.expanded = r14;
                layoutParams.extraPixels = r14;
                layoutParams.cellsUsed = r14;
                layoutParams.expandable = r14;
                ((LinearLayout.LayoutParams) layoutParams).leftMargin = r14;
                ((LinearLayout.LayoutParams) layoutParams).rightMargin = r14;
                layoutParams.preventEdgeOffset = z14 && ((ActionMenuItemView) childAt).hasText();
                int measureChildForCells = measureChildForCells(childAt, i19, layoutParams.isOverflowButton ? 1 : i17, childMeasureSpec, paddingTop);
                i23 = Math.max(i23, measureChildForCells);
                if (layoutParams.expandable) {
                    i24++;
                }
                if (layoutParams.isOverflowButton) {
                    z13 = true;
                }
                i17 -= measureChildForCells;
                i20 = Math.max(i20, childAt.getMeasuredHeight());
                if (measureChildForCells == 1) {
                    j10 |= 1 << i21;
                    i20 = i20;
                }
                i22 = i14;
            }
            i21++;
            size2 = i25;
        }
        int i28 = size2;
        boolean z15 = z13 && i22 == 2;
        boolean z16 = false;
        while (i24 > 0 && i17 > 0) {
            int i29 = 0;
            int i30 = 0;
            int i31 = Integer.MAX_VALUE;
            long j11 = 0;
            while (i30 < childCount) {
                boolean z17 = z16;
                LayoutParams layoutParams2 = (LayoutParams) getChildAt(i30).getLayoutParams();
                int i32 = i20;
                if (layoutParams2.expandable) {
                    int i33 = layoutParams2.cellsUsed;
                    if (i33 < i31) {
                        j11 = 1 << i30;
                        i31 = i33;
                        i29 = 1;
                    } else if (i33 == i31) {
                        i29++;
                        j11 |= 1 << i30;
                    }
                }
                i30++;
                i20 = i32;
                z16 = z17;
            }
            z10 = z16;
            i13 = i20;
            j10 |= j11;
            if (i29 > i17) {
                i11 = mode;
                i12 = i15;
                break;
            }
            int i34 = i31 + 1;
            int i35 = 0;
            while (i35 < childCount) {
                View childAt2 = getChildAt(i35);
                LayoutParams layoutParams3 = (LayoutParams) childAt2.getLayoutParams();
                int i36 = i15;
                int i37 = mode;
                long j12 = 1 << i35;
                if ((j11 & j12) == 0) {
                    if (layoutParams3.cellsUsed == i34) {
                        j10 |= j12;
                    }
                    z12 = z15;
                } else {
                    if (z15 && layoutParams3.preventEdgeOffset && i17 == 1) {
                        int i38 = this.mGeneratedItemPadding;
                        z12 = z15;
                        childAt2.setPadding(i38 + i19, 0, i38, 0);
                    } else {
                        z12 = z15;
                    }
                    layoutParams3.cellsUsed++;
                    layoutParams3.expanded = true;
                    i17--;
                }
                i35++;
                mode = i37;
                i15 = i36;
                z15 = z12;
            }
            i20 = i13;
            z16 = true;
        }
        i11 = mode;
        i12 = i15;
        z10 = z16;
        i13 = i20;
        boolean z18 = !z13 && i22 == 1;
        if (i17 <= 0 || j10 == 0 || (i17 >= i22 - 1 && !z18 && i23 <= 1)) {
            z11 = z10;
        } else {
            float bitCount = Long.bitCount(j10);
            if (!z18) {
                if ((j10 & 1) != 0 && !((LayoutParams) getChildAt(0).getLayoutParams()).preventEdgeOffset) {
                    bitCount -= 0.5f;
                }
                int i39 = childCount - 1;
                if ((j10 & (1 << i39)) != 0 && !((LayoutParams) getChildAt(i39).getLayoutParams()).preventEdgeOffset) {
                    bitCount -= 0.5f;
                }
            }
            int i40 = bitCount > 0.0f ? (int) ((i17 * i19) / bitCount) : 0;
            z11 = z10;
            for (int i41 = 0; i41 < childCount; i41++) {
                if ((j10 & (1 << i41)) != 0) {
                    View childAt3 = getChildAt(i41);
                    LayoutParams layoutParams4 = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        layoutParams4.extraPixels = i40;
                        layoutParams4.expanded = true;
                        if (i41 == 0 && !layoutParams4.preventEdgeOffset) {
                            ((LinearLayout.LayoutParams) layoutParams4).leftMargin = (-i40) / 2;
                        }
                    } else if (layoutParams4.isOverflowButton) {
                        layoutParams4.extraPixels = i40;
                        layoutParams4.expanded = true;
                        ((LinearLayout.LayoutParams) layoutParams4).rightMargin = (-i40) / 2;
                    } else {
                        if (i41 != 0) {
                            ((LinearLayout.LayoutParams) layoutParams4).leftMargin = i40 / 2;
                        }
                        if (i41 != childCount - 1) {
                            ((LinearLayout.LayoutParams) layoutParams4).rightMargin = i40 / 2;
                        }
                    }
                    z11 = true;
                }
            }
        }
        if (z11) {
            for (int i42 = 0; i42 < childCount; i42++) {
                View childAt4 = getChildAt(i42);
                LayoutParams layoutParams5 = (LayoutParams) childAt4.getLayoutParams();
                if (layoutParams5.expanded) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((layoutParams5.cellsUsed * i19) + layoutParams5.extraPixels, BasicMeasure.EXACTLY), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i12, i11 != 1073741824 ? i13 : i28);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.dismissPopupMenus();
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public LayoutParams generateOverflowButtonLayoutParams() {
        LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.isOverflowButton = true;
        return generateDefaultLayoutParams;
    }

    public Menu getMenu() {
        if (this.mMenu == null) {
            Context context = getContext();
            MenuBuilder menuBuilder = new MenuBuilder(context);
            this.mMenu = menuBuilder;
            menuBuilder.setCallback(new MenuBuilderCallback());
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.mPresenter = actionMenuPresenter;
            actionMenuPresenter.setReserveOverflow(true);
            ActionMenuPresenter actionMenuPresenter2 = this.mPresenter;
            MenuPresenter.Callback callback = this.mActionMenuPresenterCallback;
            if (callback == null) {
                callback = new ActionMenuPresenterCallback();
            }
            actionMenuPresenter2.setCallback(callback);
            this.mMenu.addMenuPresenter(this.mPresenter, this.mPopupContext);
            this.mPresenter.setMenuView(this);
        }
        return this.mMenu;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.mPresenter.getOverflowIcon();
    }

    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getWindowAnimations() {
        return 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    protected boolean hasSupportDividerBeforeChildAt(int i9) {
        boolean z10 = false;
        if (i9 == 0) {
            return false;
        }
        View childAt = getChildAt(i9 - 1);
        View childAt2 = getChildAt(i9);
        if (i9 < getChildCount() && (childAt instanceof ActionMenuChildView)) {
            z10 = false | ((ActionMenuChildView) childAt).needsDividerAfter();
        }
        return (i9 <= 0 || !(childAt2 instanceof ActionMenuChildView)) ? z10 : z10 | ((ActionMenuChildView) childAt2).needsDividerBefore();
    }

    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.hideOverflowMenu();
    }

    @Override // androidx.appcompat.view.menu.MenuView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.ItemInvoker
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.isOverflowMenuShowing();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.updateMenuView(false);
            if (this.mPresenter.isOverflowMenuShowing()) {
                this.mPresenter.hideOverflowMenu();
                this.mPresenter.showOverflowMenu();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int width;
        int i13;
        if (!this.mFormatItems) {
            super.onLayout(z10, i9, i10, i11, i12);
            return;
        }
        int childCount = getChildCount();
        int i14 = (i12 - i10) / 2;
        int dividerWidth = getDividerWidth();
        int i15 = i11 - i9;
        int paddingRight = (i15 - getPaddingRight()) - getPaddingLeft();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isOverflowButton) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (hasSupportDividerBeforeChildAt(i18)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (isLayoutRtl) {
                        i13 = getPaddingLeft() + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        width = i13 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        i13 = width - measuredWidth;
                    }
                    int i19 = i14 - (measuredHeight / 2);
                    childAt.layout(i13, i19, width, measuredHeight + i19);
                    paddingRight -= measuredWidth;
                    i16 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams).leftMargin) + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    hasSupportDividerBeforeChildAt(i18);
                    i17++;
                }
            }
        }
        if (childCount == 1 && i16 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i20 = (i15 / 2) - (measuredWidth2 / 2);
            int i21 = i14 - (measuredHeight2 / 2);
            childAt2.layout(i20, i21, measuredWidth2 + i20, measuredHeight2 + i21);
            return;
        }
        int i22 = i17 - (i16 ^ 1);
        int max = Math.max(0, i22 > 0 ? paddingRight / i22 : 0);
        if (isLayoutRtl) {
            int width2 = getWidth() - getPaddingRight();
            for (int i23 = 0; i23 < childCount; i23++) {
                View childAt3 = getChildAt(i23);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !layoutParams2.isOverflowButton) {
                    int i24 = width2 - ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i25 = i14 - (measuredHeight3 / 2);
                    childAt3.layout(i24 - measuredWidth3, i25, i24, measuredHeight3 + i25);
                    width2 = i24 - ((measuredWidth3 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i26 = 0; i26 < childCount; i26++) {
            View childAt4 = getChildAt(i26);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !layoutParams3.isOverflowButton) {
                int i27 = paddingLeft + ((LinearLayout.LayoutParams) layoutParams3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i28 = i14 - (measuredHeight4 / 2);
                childAt4.layout(i27, i28, i27 + measuredWidth4, measuredHeight4 + i28);
                paddingLeft = i27 + measuredWidth4 + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + max;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i9, int i10) {
        MenuBuilder menuBuilder;
        boolean z10 = this.mFormatItems;
        boolean z11 = View.MeasureSpec.getMode(i9) == 1073741824;
        this.mFormatItems = z11;
        if (z10 != z11) {
            this.mFormatItemsWidth = 0;
        }
        int size = View.MeasureSpec.getSize(i9);
        if (this.mFormatItems && (menuBuilder = this.mMenu) != null && size != this.mFormatItemsWidth) {
            this.mFormatItemsWidth = size;
            menuBuilder.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (this.mFormatItems && childCount > 0) {
            onMeasureExactFormat(i9, i10);
            return;
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i11).getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams).rightMargin = 0;
            ((LinearLayout.LayoutParams) layoutParams).leftMargin = 0;
        }
        super.onMeasure(i9, i10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public MenuBuilder peekMenu() {
        return this.mMenu;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setExpandedActionViewsExclusive(boolean z10) {
        this.mPresenter.setExpandedActionViewsExclusive(z10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.mActionMenuPresenterCallback = callback;
        this.mMenuBuilderCallback = callback2;
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mOnMenuItemClickListener = onMenuItemClickListener;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.mPresenter.setOverflowIcon(drawable);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setOverflowReserved(boolean z10) {
        this.mReserveOverflow = z10;
    }

    public void setPopupTheme(@StyleRes int i9) {
        if (this.mPopupTheme != i9) {
            this.mPopupTheme = i9;
            if (i9 == 0) {
                this.mPopupContext = getContext();
            } else {
                this.mPopupContext = new ContextThemeWrapper(getContext(), i9);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.mPresenter = actionMenuPresenter;
        actionMenuPresenter.setMenuView(this);
    }

    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.showOverflowMenu();
    }

    public ActionMenuView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.mMinCellSize = (int) (56.0f * f10);
        this.mGeneratedItemPadding = (int) (f10 * 4.0f);
        this.mPopupContext = context;
        this.mPopupTheme = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2;
        if (layoutParams != null) {
            if (layoutParams instanceof LayoutParams) {
                layoutParams2 = new LayoutParams((LayoutParams) layoutParams);
            } else {
                layoutParams2 = new LayoutParams(layoutParams);
            }
            if (((LinearLayout.LayoutParams) layoutParams2).gravity <= 0) {
                ((LinearLayout.LayoutParams) layoutParams2).gravity = 16;
            }
            return layoutParams2;
        }
        return generateDefaultLayoutParams();
    }
}
