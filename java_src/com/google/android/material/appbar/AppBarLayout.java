package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {
    private static final int DEF_STYLE_RES = R.style.Widget_Design_AppBarLayout;
    private static final int INVALID_SCROLL_RANGE = -1;
    static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
    static final int PENDING_ACTION_COLLAPSED = 2;
    static final int PENDING_ACTION_EXPANDED = 1;
    static final int PENDING_ACTION_FORCE = 8;
    static final int PENDING_ACTION_NONE = 0;
    private int currentOffset;
    private int downPreScrollRange;
    private int downScrollRange;
    @Nullable
    private ValueAnimator elevationOverlayAnimator;
    private boolean haveChildWithInterpolator;
    @Nullable
    private WindowInsetsCompat lastInsets;
    private boolean liftOnScroll;
    private final List<LiftOnScrollListener> liftOnScrollListeners;
    @Nullable
    private WeakReference<View> liftOnScrollTargetView;
    @IdRes
    private int liftOnScrollTargetViewId;
    private boolean liftable;
    private boolean liftableOverride;
    private boolean lifted;
    private List<BaseOnOffsetChangedListener> listeners;
    private int pendingAction;
    @Nullable
    private Drawable statusBarForeground;
    private int[] tmpStatesArray;
    private int totalScrollRange;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {
        private static final int MAX_OFFSET_ANIMATION_DURATION = 600;
        @Nullable
        private WeakReference<View> lastNestedScrollingChildRef;
        private int lastStartedType;
        private ValueAnimator offsetAnimator;
        private int offsetDelta;
        private BaseDragCallback onDragCallback;
        private SavedState savedState;

        /* loaded from: classes2.dex */
        public static abstract class BaseDragCallback<T extends AppBarLayout> {
            public abstract boolean canDrag(@NonNull T t10);
        }

        public BaseBehavior() {
        }

        private void addAccessibilityScrollActions(final CoordinatorLayout coordinatorLayout, @NonNull final T t10, @NonNull final View view) {
            if (getTopBottomOffsetForScrollingSibling() != (-t10.getTotalScrollRange()) && view.canScrollVertically(1)) {
                addActionToExpand(coordinatorLayout, t10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD, false);
            }
            if (getTopBottomOffsetForScrollingSibling() != 0) {
                if (view.canScrollVertically(-1)) {
                    final int i9 = -t10.getDownNestedPreScrollRange();
                    if (i9 != 0) {
                        ViewCompat.replaceAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD, null, new AccessibilityViewCommand() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.2
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                            public boolean perform(@NonNull View view2, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                                BaseBehavior.this.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) t10, view, 0, i9, new int[]{0, 0}, 1);
                                return true;
                            }
                        });
                        return;
                    }
                    return;
                }
                addActionToExpand(coordinatorLayout, t10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD, true);
            }
        }

        private void addActionToExpand(CoordinatorLayout coordinatorLayout, @NonNull final T t10, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, final boolean z10) {
            ViewCompat.replaceAccessibilityAction(coordinatorLayout, accessibilityActionCompat, null, new AccessibilityViewCommand() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.3
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                    t10.setExpanded(z10);
                    return true;
                }
            });
        }

        private void animateOffsetTo(CoordinatorLayout coordinatorLayout, @NonNull T t10, int i9, float f10) {
            int height;
            int abs = Math.abs(getTopBottomOffsetForScrollingSibling() - i9);
            float abs2 = Math.abs(f10);
            if (abs2 > 0.0f) {
                height = Math.round((abs / abs2) * 1000.0f) * 3;
            } else {
                height = (int) (((abs / t10.getHeight()) + 1.0f) * 150.0f);
            }
            animateOffsetWithDuration(coordinatorLayout, t10, i9, height);
        }

        private void animateOffsetWithDuration(final CoordinatorLayout coordinatorLayout, final T t10, int i9, int i10) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (topBottomOffsetForScrollingSibling == i9) {
                ValueAnimator valueAnimator = this.offsetAnimator;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.offsetAnimator.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.offsetAnimator;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.offsetAnimator = valueAnimator3;
                valueAnimator3.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
                this.offsetAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator4) {
                        BaseBehavior.this.setHeaderTopBottomOffset(coordinatorLayout, t10, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator2.cancel();
            }
            this.offsetAnimator.setDuration(Math.min(i10, 600));
            this.offsetAnimator.setIntValues(topBottomOffsetForScrollingSibling, i9);
            this.offsetAnimator.start();
        }

        private boolean canScrollChildren(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, @NonNull View view) {
            return t10.hasScrollableChildren() && coordinatorLayout.getHeight() - view.getHeight() <= t10.getHeight();
        }

        private static boolean checkFlag(int i9, int i10) {
            return (i9 & i10) == i10;
        }

        @Nullable
        private View findFirstScrollingChild(@NonNull CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = coordinatorLayout.getChildAt(i9);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        @Nullable
        private static View getAppBarChildOnOffset(@NonNull AppBarLayout appBarLayout, int i9) {
            int abs = Math.abs(i9);
            int childCount = appBarLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = appBarLayout.getChildAt(i10);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private int getChildIndexOnOffset(@NonNull T t10, int i9) {
            int childCount = t10.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = t10.getChildAt(i10);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (checkFlag(layoutParams.getScrollFlags(), 32)) {
                    top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i11 = -i9;
                if (top <= i11 && bottom >= i11) {
                    return i10;
                }
            }
            return -1;
        }

        private int interpolateOffset(@NonNull T t10, int i9) {
            int abs = Math.abs(i9);
            int childCount = t10.getChildCount();
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (i11 >= childCount) {
                    break;
                }
                View childAt = t10.getChildAt(i11);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator scrollInterpolator = layoutParams.getScrollInterpolator();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i11++;
                } else if (scrollInterpolator != null) {
                    int scrollFlags = layoutParams.getScrollFlags();
                    if ((scrollFlags & 1) != 0) {
                        i10 = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        if ((scrollFlags & 2) != 0) {
                            i10 -= ViewCompat.getMinimumHeight(childAt);
                        }
                    }
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        i10 -= t10.getTopInset();
                    }
                    if (i10 > 0) {
                        float f10 = i10;
                        return Integer.signum(i9) * (childAt.getTop() + Math.round(f10 * scrollInterpolator.getInterpolation((abs - childAt.getTop()) / f10)));
                    }
                }
            }
            return i9;
        }

        private boolean shouldJumpElevationState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            List<View> dependents = coordinatorLayout.getDependents(t10);
            int size = dependents.size();
            for (int i9 = 0; i9 < size; i9++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i9).getLayoutParams()).getBehavior();
                if (behavior instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) behavior).getOverlayTop() != 0;
                }
            }
            return false;
        }

        private void snapToChildIfNeeded(CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int childIndexOnOffset = getChildIndexOnOffset(t10, topBottomOffsetForScrollingSibling);
            if (childIndexOnOffset >= 0) {
                View childAt = t10.getChildAt(childIndexOnOffset);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int scrollFlags = layoutParams.getScrollFlags();
                if ((scrollFlags & 17) == 17) {
                    int i9 = -childAt.getTop();
                    int i10 = -childAt.getBottom();
                    if (childIndexOnOffset == t10.getChildCount() - 1) {
                        i10 += t10.getTopInset() + t10.getPaddingTop();
                    }
                    if (checkFlag(scrollFlags, 2)) {
                        i10 += ViewCompat.getMinimumHeight(childAt);
                    } else if (checkFlag(scrollFlags, 5)) {
                        int minimumHeight = ViewCompat.getMinimumHeight(childAt) + i10;
                        if (topBottomOffsetForScrollingSibling < minimumHeight) {
                            i9 = minimumHeight;
                        } else {
                            i10 = minimumHeight;
                        }
                    }
                    if (checkFlag(scrollFlags, 32)) {
                        i9 += ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        i10 -= ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    }
                    if (topBottomOffsetForScrollingSibling < (i10 + i9) / 2) {
                        i9 = i10;
                    }
                    animateOffsetTo(coordinatorLayout, t10, MathUtils.clamp(i9, -t10.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void updateAccessibilityActions(CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.getId());
            ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.getId());
            View findFirstScrollingChild = findFirstScrollingChild(coordinatorLayout);
            if (findFirstScrollingChild == null || t10.getTotalScrollRange() == 0 || !(((CoordinatorLayout.LayoutParams) findFirstScrollingChild.getLayoutParams()).getBehavior() instanceof ScrollingViewBehavior)) {
                return;
            }
            addAccessibilityScrollActions(coordinatorLayout, t10, findFirstScrollingChild);
        }

        private void updateAppBarLayoutDrawableState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i9, int i10, boolean z10) {
            View appBarChildOnOffset = getAppBarChildOnOffset(t10, i9);
            boolean z11 = false;
            if (appBarChildOnOffset != null) {
                int scrollFlags = ((LayoutParams) appBarChildOnOffset.getLayoutParams()).getScrollFlags();
                if ((scrollFlags & 1) != 0) {
                    int minimumHeight = ViewCompat.getMinimumHeight(appBarChildOnOffset);
                    if (i10 <= 0 || (scrollFlags & 12) == 0 ? !((scrollFlags & 2) == 0 || (-i9) < (appBarChildOnOffset.getBottom() - minimumHeight) - t10.getTopInset()) : (-i9) >= (appBarChildOnOffset.getBottom() - minimumHeight) - t10.getTopInset()) {
                        z11 = true;
                    }
                }
            }
            if (t10.isLiftOnScroll()) {
                z11 = t10.shouldLift(findFirstScrollingChild(coordinatorLayout));
            }
            boolean liftedState = t10.setLiftedState(z11);
            if (z10 || (liftedState && shouldJumpElevationState(coordinatorLayout, t10))) {
                t10.jumpDrawablesToCurrentState();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ boolean canDragView(View view) {
            return canDragView((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ int getMaxDragOffset(@NonNull View view) {
            return getMaxDragOffset((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ int getScrollRangeForDragFling(@NonNull View view) {
            return getScrollRangeForDragFling((BaseBehavior<T>) ((AppBarLayout) view));
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.offsetDelta;
        }

        @VisibleForTesting
        boolean isOffsetAnimatorRunning() {
            ValueAnimator valueAnimator = this.offsetAnimator;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ void onFlingFinished(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
            onFlingFinished(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i9) {
            return onLayoutChild(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i9);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i9, int i10, int i11, int i12) {
            return onMeasureChild(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i9, i10, i11, i12);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull View view, View view2, int i9, int i10, int[] iArr, int i11) {
            onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i9, i10, iArr, i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull View view, View view2, int i9, int i10, int i11, int i12, int i13, int[] iArr) {
            onNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i9, i10, i11, i12, i13, iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, Parcelable parcelable) {
            onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), parcelable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
            return onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2, View view3, int i9, int i10) {
            return onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, view3, i9, i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull View view, View view2, int i9) {
            onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i9);
        }

        public void setDragCallback(@Nullable BaseDragCallback baseDragCallback) {
            this.onDragCallback = baseDragCallback;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ int setHeaderTopBottomOffset(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i9, int i10, int i11) {
            return setHeaderTopBottomOffset(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i9, i10, i11);
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        boolean canDragView(T t10) {
            BaseDragCallback baseDragCallback = this.onDragCallback;
            if (baseDragCallback != null) {
                return baseDragCallback.canDrag(t10);
            }
            WeakReference<View> weakReference = this.lastNestedScrollingChildRef;
            if (weakReference != null) {
                View view = weakReference.get();
                return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
            }
            return true;
        }

        int getMaxDragOffset(@NonNull T t10) {
            return -t10.getDownNestedScrollRange();
        }

        int getScrollRangeForDragFling(@NonNull T t10) {
            return t10.getTotalScrollRange();
        }

        void onFlingFinished(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            snapToChildIfNeeded(coordinatorLayout, t10);
            if (t10.isLiftOnScroll()) {
                t10.setLiftedState(t10.shouldLift(findFirstScrollingChild(coordinatorLayout)));
            }
        }

        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i9) {
            int round;
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) t10, i9);
            int pendingAction = t10.getPendingAction();
            SavedState savedState = this.savedState;
            if (savedState == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z10 = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i10 = -t10.getUpNestedPreScrollRange();
                        if (z10) {
                            animateOffsetTo(coordinatorLayout, t10, i10, 0.0f);
                        } else {
                            setHeaderTopBottomOffset(coordinatorLayout, t10, i10);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z10) {
                            animateOffsetTo(coordinatorLayout, t10, 0, 0.0f);
                        } else {
                            setHeaderTopBottomOffset(coordinatorLayout, t10, 0);
                        }
                    }
                }
            } else if (savedState.fullyScrolled) {
                setHeaderTopBottomOffset(coordinatorLayout, t10, -t10.getTotalScrollRange());
            } else {
                View childAt = t10.getChildAt(savedState.firstVisibleChildIndex);
                int i11 = -childAt.getBottom();
                if (this.savedState.firstVisibleChildAtMinimumHeight) {
                    round = ViewCompat.getMinimumHeight(childAt) + t10.getTopInset();
                } else {
                    round = Math.round(childAt.getHeight() * this.savedState.firstVisibleChildPercentageShown);
                }
                setHeaderTopBottomOffset(coordinatorLayout, t10, i11 + round);
            }
            t10.resetPendingAction();
            this.savedState = null;
            setTopAndBottomOffset(MathUtils.clamp(getTopAndBottomOffset(), -t10.getTotalScrollRange(), 0));
            updateAppBarLayoutDrawableState(coordinatorLayout, t10, getTopAndBottomOffset(), 0, true);
            t10.onOffsetChanged(getTopAndBottomOffset());
            updateAccessibilityActions(coordinatorLayout, t10);
            return onLayoutChild;
        }

        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i9, int i10, int i11, int i12) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) t10.getLayoutParams())).height == -2) {
                coordinatorLayout.onMeasureChild(t10, i9, i10, View.MeasureSpec.makeMeasureSpec(0, 0), i12);
                return true;
            }
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) t10, i9, i10, i11, i12);
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull T t10, View view, int i9, int i10, int[] iArr, int i11) {
            int i12;
            int i13;
            if (i10 != 0) {
                if (i10 < 0) {
                    int i14 = -t10.getTotalScrollRange();
                    i12 = i14;
                    i13 = t10.getDownNestedPreScrollRange() + i14;
                } else {
                    i12 = -t10.getUpNestedPreScrollRange();
                    i13 = 0;
                }
                if (i12 != i13) {
                    iArr[1] = scroll(coordinatorLayout, t10, i10, i12, i13);
                }
            }
            if (t10.isLiftOnScroll()) {
                t10.setLiftedState(t10.shouldLift(view));
            }
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t10, View view, int i9, int i10, int i11, int i12, int i13, int[] iArr) {
            if (i12 < 0) {
                iArr[1] = scroll(coordinatorLayout, t10, i12, -t10.getDownNestedScrollRange(), 0);
            }
            if (i12 == 0) {
                updateAccessibilityActions(coordinatorLayout, t10);
            }
        }

        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                this.savedState = savedState;
                super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t10, savedState.getSuperState());
                return;
            }
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t10, parcelable);
            this.savedState = null;
        }

        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) t10);
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = t10.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = t10.getChildAt(i9);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(onSaveInstanceState);
                    savedState.fullyScrolled = (-getTopAndBottomOffset()) >= t10.getTotalScrollRange();
                    savedState.firstVisibleChildIndex = i9;
                    savedState.firstVisibleChildAtMinimumHeight = bottom == ViewCompat.getMinimumHeight(childAt) + t10.getTopInset();
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return onSaveInstanceState;
        }

        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, @NonNull View view, View view2, int i9, int i10) {
            ValueAnimator valueAnimator;
            boolean z10 = (i9 & 2) != 0 && (t10.isLiftOnScroll() || canScrollChildren(coordinatorLayout, t10, view));
            if (z10 && (valueAnimator = this.offsetAnimator) != null) {
                valueAnimator.cancel();
            }
            this.lastNestedScrollingChildRef = null;
            this.lastStartedType = i10;
            return z10;
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t10, View view, int i9) {
            if (this.lastStartedType == 0 || i9 == 1) {
                snapToChildIfNeeded(coordinatorLayout, t10);
                if (t10.isLiftOnScroll()) {
                    t10.setLiftedState(t10.shouldLift(view));
                }
            }
            this.lastNestedScrollingChildRef = new WeakReference<>(view);
        }

        int setHeaderTopBottomOffset(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i9, int i10, int i11) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int i12 = 0;
            if (i10 != 0 && topBottomOffsetForScrollingSibling >= i10 && topBottomOffsetForScrollingSibling <= i11) {
                int clamp = MathUtils.clamp(i9, i10, i11);
                if (topBottomOffsetForScrollingSibling != clamp) {
                    int interpolateOffset = t10.hasChildWithInterpolator() ? interpolateOffset(t10, clamp) : clamp;
                    boolean topAndBottomOffset = setTopAndBottomOffset(interpolateOffset);
                    int i13 = topBottomOffsetForScrollingSibling - clamp;
                    this.offsetDelta = clamp - interpolateOffset;
                    if (topAndBottomOffset) {
                        while (i12 < t10.getChildCount()) {
                            LayoutParams layoutParams = (LayoutParams) t10.getChildAt(i12).getLayoutParams();
                            ChildScrollEffect scrollEffect = layoutParams.getScrollEffect();
                            if (scrollEffect != null && (layoutParams.getScrollFlags() & 1) != 0) {
                                scrollEffect.onOffsetChanged(t10, t10.getChildAt(i12), getTopAndBottomOffset());
                            }
                            i12++;
                        }
                    }
                    if (!topAndBottomOffset && t10.hasChildWithInterpolator()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t10);
                    }
                    t10.onOffsetChanged(getTopAndBottomOffset());
                    updateAppBarLayoutDrawableState(coordinatorLayout, t10, clamp, clamp < topBottomOffsetForScrollingSibling ? -1 : 1, false);
                    i12 = i13;
                }
            } else {
                this.offsetDelta = 0;
            }
            updateAccessibilityActions(coordinatorLayout, t10);
            return i12;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* loaded from: classes2.dex */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.SavedState.1
                @Override // android.os.Parcelable.Creator
                @NonNull
                public SavedState[] newArray(int i9) {
                    return new SavedState[i9];
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                @NonNull
                public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                @Nullable
                public SavedState createFromParcel(@NonNull Parcel parcel) {
                    return new SavedState(parcel, null);
                }
            };
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;
            boolean fullyScrolled;

            public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.fullyScrolled = parcel.readByte() != 0;
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(@NonNull Parcel parcel, int i9) {
                super.writeToParcel(parcel, i9);
                parcel.writeByte(this.fullyScrolled ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface BaseOnOffsetChangedListener<T extends AppBarLayout> {
        void onOffsetChanged(T t10, int i9);
    }

    /* loaded from: classes2.dex */
    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* loaded from: classes2.dex */
        public static abstract class DragCallback extends BaseBehavior.BaseDragCallback<AppBarLayout> {
        }

        public Behavior() {
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i9) {
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i9);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i9, int i10, int i11, int i12) {
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i9, i10, i11, i12);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i9, int i10, int[] iArr, int i11) {
            super.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i9, i10, iArr, i11);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i9, int i10, int i11, int i12, int i13, int[] iArr) {
            super.onNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i9, i10, i11, i12, i13, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull View view, View view2, int i9, int i10) {
            return super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i9, i10);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i9) {
            super.onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i9);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void setDragCallback(@Nullable BaseBehavior.BaseDragCallback baseDragCallback) {
            super.setDragCallback(baseDragCallback);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z10) {
            super.setHorizontalOffsetEnabled(z10);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i9) {
            return super.setLeftAndRightOffset(i9);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i9) {
            return super.setTopAndBottomOffset(i9);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z10) {
            super.setVerticalOffsetEnabled(z10);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ChildScrollEffect {
        public abstract void onOffsetChanged(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f10);
    }

    /* loaded from: classes2.dex */
    public static class CompressChildScrollEffect extends ChildScrollEffect {
        private static final float COMPRESS_DISTANCE_FACTOR = 0.3f;
        private final Rect relativeRect = new Rect();
        private final Rect ghostRect = new Rect();

        private static void updateRelativeRect(Rect rect, AppBarLayout appBarLayout, View view) {
            view.getDrawingRect(rect);
            appBarLayout.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(0, -appBarLayout.getTopInset());
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ChildScrollEffect
        public void onOffsetChanged(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f10) {
            updateRelativeRect(this.relativeRect, appBarLayout, view);
            float abs = this.relativeRect.top - Math.abs(f10);
            if (abs <= 0.0f) {
                float clamp = 1.0f - MathUtils.clamp(Math.abs(abs / this.relativeRect.height()), 0.0f, 1.0f);
                float height = (-abs) - ((this.relativeRect.height() * COMPRESS_DISTANCE_FACTOR) * (1.0f - (clamp * clamp)));
                view.setTranslationY(height);
                view.getDrawingRect(this.ghostRect);
                this.ghostRect.offset(0, (int) (-height));
                ViewCompat.setClipBounds(view, this.ghostRect);
                return;
            }
            ViewCompat.setClipBounds(view, null);
            view.setTranslationY(0.0f);
        }
    }

    /* loaded from: classes2.dex */
    public interface LiftOnScrollListener {
        void onUpdate(@Dimension float f10, @ColorInt int i9);
    }

    /* loaded from: classes2.dex */
    public interface OnOffsetChangedListener extends BaseOnOffsetChangedListener<AppBarLayout> {
        @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        void onOffsetChanged(AppBarLayout appBarLayout, int i9);
    }

    /* loaded from: classes2.dex */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        private static int getAppBarLayoutOffset(@NonNull AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                return ((BaseBehavior) behavior).getTopBottomOffsetForScrollingSibling();
            }
            return 0;
        }

        private void offsetChildAsNeeded(@NonNull View view, @NonNull View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).offsetDelta) + getVerticalLayoutGap()) - getOverlapPixelsForOffset(view2));
            }
        }

        private void updateLiftedStateIfNeeded(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.setLiftedState(appBarLayout.shouldLift(view));
                }
            }
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        @Nullable
        /* bridge */ /* synthetic */ View findFirstDependency(@NonNull List list) {
            return findFirstDependency((List<View>) list);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        float getOverlapRatioForOffset(View view) {
            int i9;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int appBarLayoutOffset = getAppBarLayoutOffset(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + appBarLayoutOffset > downNestedPreScrollRange) && (i9 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (appBarLayoutOffset / i9) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        int getScrollRange(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return super.getScrollRange(view);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            offsetChildAsNeeded(view, view2);
            updateLiftedStateIfNeeded(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.getId());
                ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.getId());
            }
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i9) {
            return super.onLayoutChild(coordinatorLayout, view, i9);
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i9, int i10, int i11, int i12) {
            return super.onMeasureChild(coordinatorLayout, view, i9, i10, i11, i12);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull Rect rect, boolean z10) {
            AppBarLayout findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
            if (findFirstDependency != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.tempRect1;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    findFirstDependency.setExpanded(false, !z10);
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z10) {
            super.setHorizontalOffsetEnabled(z10);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i9) {
            return super.setLeftAndRightOffset(i9);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i9) {
            return super.setTopAndBottomOffset(i9);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z10) {
            super.setVerticalOffsetEnabled(z10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public /* bridge */ /* synthetic */ boolean shouldHeaderOverlapScrollingChild() {
            return super.shouldHeaderOverlapScrollingChild();
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            setOverlayTop(obtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        @Nullable
        AppBarLayout findFirstDependency(@NonNull List<View> list) {
            int size = list.size();
            for (int i9 = 0; i9 < size; i9++) {
                View view = list.get(i9);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    private void clearLiftOnScrollTargetView() {
        WeakReference<View> weakReference = this.liftOnScrollTargetView;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.liftOnScrollTargetView = null;
    }

    @Nullable
    private View findLiftOnScrollTargetView(@Nullable View view) {
        int i9;
        if (this.liftOnScrollTargetView == null && (i9 = this.liftOnScrollTargetViewId) != -1) {
            View findViewById = view != null ? view.findViewById(i9) : null;
            if (findViewById == null && (getParent() instanceof ViewGroup)) {
                findViewById = ((ViewGroup) getParent()).findViewById(this.liftOnScrollTargetViewId);
            }
            if (findViewById != null) {
                this.liftOnScrollTargetView = new WeakReference<>(findViewById);
            }
        }
        WeakReference<View> weakReference = this.liftOnScrollTargetView;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private boolean hasCollapsibleChild() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            if (((LayoutParams) getChildAt(i9).getLayoutParams()).isCollapsible()) {
                return true;
            }
        }
        return false;
    }

    private void invalidateScrollRanges() {
        this.totalScrollRange = -1;
        this.downPreScrollRange = -1;
        this.downScrollRange = -1;
    }

    private boolean setLiftableState(boolean z10) {
        if (this.liftable != z10) {
            this.liftable = z10;
            refreshDrawableState();
            return true;
        }
        return false;
    }

    private boolean shouldDrawStatusBarForeground() {
        return this.statusBarForeground != null && getTopInset() > 0;
    }

    private boolean shouldOffsetFirstChild() {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            return (childAt.getVisibility() == 8 || ViewCompat.getFitsSystemWindows(childAt)) ? false : true;
        }
        return false;
    }

    private void startLiftOnScrollElevationOverlayAnimation(@NonNull final MaterialShapeDrawable materialShapeDrawable, boolean z10) {
        float dimension = getResources().getDimension(R.dimen.design_appbar_elevation);
        float f10 = z10 ? 0.0f : dimension;
        if (!z10) {
            dimension = 0.0f;
        }
        ValueAnimator valueAnimator = this.elevationOverlayAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f10, dimension);
        this.elevationOverlayAnimator = ofFloat;
        ofFloat.setDuration(getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
        this.elevationOverlayAnimator.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        this.elevationOverlayAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator2) {
                float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                materialShapeDrawable.setElevation(floatValue);
                if (AppBarLayout.this.statusBarForeground instanceof MaterialShapeDrawable) {
                    ((MaterialShapeDrawable) AppBarLayout.this.statusBarForeground).setElevation(floatValue);
                }
                for (LiftOnScrollListener liftOnScrollListener : AppBarLayout.this.liftOnScrollListeners) {
                    liftOnScrollListener.onUpdate(floatValue, materialShapeDrawable.getResolvedTintColor());
                }
            }
        });
        this.elevationOverlayAnimator.start();
    }

    private void updateWillNotDraw() {
        setWillNotDraw(!shouldDrawStatusBarForeground());
    }

    public void addLiftOnScrollListener(@NonNull LiftOnScrollListener liftOnScrollListener) {
        this.liftOnScrollListeners.add(liftOnScrollListener);
    }

    public void addOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        if (this.listeners == null) {
            this.listeners = new ArrayList();
        }
        if (baseOnOffsetChangedListener == null || this.listeners.contains(baseOnOffsetChangedListener)) {
            return;
        }
        this.listeners.add(baseOnOffsetChangedListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void clearLiftOnScrollListener() {
        this.liftOnScrollListeners.clear();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (shouldDrawStatusBarForeground()) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.currentOffset);
            this.statusBarForeground.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.statusBarForeground;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        return new Behavior();
    }

    int getDownNestedPreScrollRange() {
        int i9;
        int minimumHeight;
        int i10 = this.downPreScrollRange;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i12 = layoutParams.scrollFlags;
            if ((i12 & 5) == 5) {
                int i13 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                if ((i12 & 8) != 0) {
                    minimumHeight = ViewCompat.getMinimumHeight(childAt);
                } else if ((i12 & 2) != 0) {
                    minimumHeight = measuredHeight - ViewCompat.getMinimumHeight(childAt);
                } else {
                    i9 = i13 + measuredHeight;
                    if (childCount == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                        i9 = Math.min(i9, measuredHeight - getTopInset());
                    }
                    i11 += i9;
                }
                i9 = i13 + minimumHeight;
                if (childCount == 0) {
                    i9 = Math.min(i9, measuredHeight - getTopInset());
                }
                i11 += i9;
            } else if (i11 > 0) {
                break;
            }
        }
        int max = Math.max(0, i11);
        this.downPreScrollRange = max;
        return max;
    }

    int getDownNestedScrollRange() {
        int i9 = this.downScrollRange;
        if (i9 != -1) {
            return i9;
        }
        int childCount = getChildCount();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= childCount) {
                break;
            }
            View childAt = getChildAt(i10);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            int i12 = layoutParams.scrollFlags;
            if ((i12 & 1) == 0) {
                break;
            }
            i11 += measuredHeight;
            if ((i12 & 2) != 0) {
                i11 -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i10++;
        }
        int max = Math.max(0, i11);
        this.downScrollRange = max;
        return max;
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.liftOnScrollTargetViewId;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    int getPendingAction() {
        return this.pendingAction;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.statusBarForeground;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i9 = this.totalScrollRange;
        if (i9 != -1) {
            return i9;
        }
        int childCount = getChildCount();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= childCount) {
                break;
            }
            View childAt = getChildAt(i10);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i12 = layoutParams.scrollFlags;
            if ((i12 & 1) == 0) {
                break;
            }
            i11 += measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            if (i10 == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                i11 -= getTopInset();
            }
            if ((i12 & 2) != 0) {
                i11 -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i10++;
        }
        int max = Math.max(0, i11);
        this.totalScrollRange = max;
        return max;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean hasChildWithInterpolator() {
        return this.haveChildWithInterpolator;
    }

    boolean hasScrollableChildren() {
        return getTotalScrollRange() != 0;
    }

    public boolean isLiftOnScroll() {
        return this.liftOnScroll;
    }

    public boolean isLifted() {
        return this.lifted;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i9) {
        if (this.tmpStatesArray == null) {
            this.tmpStatesArray = new int[4];
        }
        int[] iArr = this.tmpStatesArray;
        int[] onCreateDrawableState = super.onCreateDrawableState(i9 + iArr.length);
        boolean z10 = this.liftable;
        int i10 = R.attr.state_liftable;
        if (!z10) {
            i10 = -i10;
        }
        iArr[0] = i10;
        iArr[1] = (z10 && this.lifted) ? R.attr.state_lifted : -R.attr.state_lifted;
        int i11 = R.attr.state_collapsible;
        if (!z10) {
            i11 = -i11;
        }
        iArr[2] = i11;
        iArr[3] = (z10 && this.lifted) ? R.attr.state_collapsed : -R.attr.state_collapsed;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearLiftOnScrollTargetView();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        boolean z11 = true;
        if (ViewCompat.getFitsSystemWindows(this) && shouldOffsetFirstChild()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ViewCompat.offsetTopAndBottom(getChildAt(childCount), topInset);
            }
        }
        invalidateScrollRanges();
        this.haveChildWithInterpolator = false;
        int childCount2 = getChildCount();
        int i13 = 0;
        while (true) {
            if (i13 >= childCount2) {
                break;
            } else if (((LayoutParams) getChildAt(i13).getLayoutParams()).getScrollInterpolator() != null) {
                this.haveChildWithInterpolator = true;
                break;
            } else {
                i13++;
            }
        }
        Drawable drawable = this.statusBarForeground;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.liftableOverride) {
            return;
        }
        if (!this.liftOnScroll && !hasCollapsibleChild()) {
            z11 = false;
        }
        setLiftableState(z11);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        int mode = View.MeasureSpec.getMode(i10);
        if (mode != 1073741824 && ViewCompat.getFitsSystemWindows(this) && shouldOffsetFirstChild()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = MathUtils.clamp(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i10));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        invalidateScrollRanges();
    }

    void onOffsetChanged(int i9) {
        this.currentOffset = i9;
        if (!willNotDraw()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        List<BaseOnOffsetChangedListener> list = this.listeners;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                BaseOnOffsetChangedListener baseOnOffsetChangedListener = this.listeners.get(i10);
                if (baseOnOffsetChangedListener != null) {
                    baseOnOffsetChangedListener.onOffsetChanged(this, i9);
                }
            }
        }
    }

    WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.lastInsets, windowInsetsCompat2)) {
            this.lastInsets = windowInsetsCompat2;
            updateWillNotDraw();
            requestLayout();
        }
        return windowInsetsCompat;
    }

    public boolean removeLiftOnScrollListener(@NonNull LiftOnScrollListener liftOnScrollListener) {
        return this.liftOnScrollListeners.remove(liftOnScrollListener);
    }

    public void removeOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        List<BaseOnOffsetChangedListener> list = this.listeners;
        if (list == null || baseOnOffsetChangedListener == null) {
            return;
        }
        list.remove(baseOnOffsetChangedListener);
    }

    void resetPendingAction() {
        this.pendingAction = 0;
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        MaterialShapeUtils.setElevation(this, f10);
    }

    public void setExpanded(boolean z10) {
        setExpanded(z10, ViewCompat.isLaidOut(this));
    }

    public void setLiftOnScroll(boolean z10) {
        this.liftOnScroll = z10;
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i9) {
        this.liftOnScrollTargetViewId = i9;
        clearLiftOnScrollTargetView();
    }

    public boolean setLiftable(boolean z10) {
        this.liftableOverride = true;
        return setLiftableState(z10);
    }

    public void setLiftableOverrideEnabled(boolean z10) {
        this.liftableOverride = z10;
    }

    public boolean setLifted(boolean z10) {
        return setLiftedState(z10, true);
    }

    boolean setLiftedState(boolean z10) {
        return setLiftedState(z10, !this.liftableOverride);
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i9) {
        if (i9 == 1) {
            super.setOrientation(i9);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.statusBarForeground;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.statusBarForeground = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.statusBarForeground.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.statusBarForeground, ViewCompat.getLayoutDirection(this));
                this.statusBarForeground.setVisible(getVisibility() == 0, false);
                this.statusBarForeground.setCallback(this);
            }
            updateWillNotDraw();
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i9) {
        setStatusBarForeground(new ColorDrawable(i9));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i9) {
        setStatusBarForeground(AppCompatResources.getDrawable(getContext(), i9));
    }

    @Deprecated
    public void setTargetElevation(float f10) {
        ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator(this, f10);
    }

    @Override // android.view.View
    public void setVisibility(int i9) {
        super.setVisibility(i9);
        boolean z10 = i9 == 0;
        Drawable drawable = this.statusBarForeground;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
    }

    boolean shouldLift(@Nullable View view) {
        View findLiftOnScrollTargetView = findLiftOnScrollTargetView(view);
        if (findLiftOnScrollTargetView != null) {
            view = findLiftOnScrollTargetView;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.statusBarForeground;
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    public void setExpanded(boolean z10, boolean z11) {
        setExpanded(z10, z11, true);
    }

    boolean setLiftedState(boolean z10, boolean z11) {
        if (!z11 || this.lifted == z10) {
            return false;
        }
        this.lifted = z10;
        refreshDrawableState();
        if (this.liftOnScroll && (getBackground() instanceof MaterialShapeDrawable)) {
            startLiftOnScrollElevationOverlayAnimation((MaterialShapeDrawable) getBackground(), z10);
            return true;
        }
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppBarLayout(@androidx.annotation.NonNull android.content.Context r10, @androidx.annotation.Nullable android.util.AttributeSet r11, int r12) {
        /*
            r9 = this;
            int r4 = com.google.android.material.appbar.AppBarLayout.DEF_STYLE_RES
            android.content.Context r10 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r10, r11, r12, r4)
            r9.<init>(r10, r11, r12)
            r10 = -1
            r9.totalScrollRange = r10
            r9.downPreScrollRange = r10
            r9.downScrollRange = r10
            r6 = 0
            r9.pendingAction = r6
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r9.liftOnScrollListeners = r0
            android.content.Context r7 = r9.getContext()
            r0 = 1
            r9.setOrientation(r0)
            int r8 = android.os.Build.VERSION.SDK_INT
            android.view.ViewOutlineProvider r0 = r9.getOutlineProvider()
            android.view.ViewOutlineProvider r1 = android.view.ViewOutlineProvider.BACKGROUND
            if (r0 != r1) goto L2f
            com.google.android.material.appbar.ViewUtilsLollipop.setBoundsViewOutlineProvider(r9)
        L2f:
            com.google.android.material.appbar.ViewUtilsLollipop.setStateListAnimatorFromAttrs(r9, r11, r12, r4)
            int[] r2 = com.google.android.material.R.styleable.AppBarLayout
            int[] r5 = new int[r6]
            r0 = r7
            r1 = r11
            r3 = r12
            android.content.res.TypedArray r11 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r12 = com.google.android.material.R.styleable.AppBarLayout_android_background
            android.graphics.drawable.Drawable r12 = r11.getDrawable(r12)
            androidx.core.view.ViewCompat.setBackground(r9, r12)
            android.graphics.drawable.Drawable r12 = r9.getBackground()
            boolean r12 = r12 instanceof android.graphics.drawable.ColorDrawable
            if (r12 == 0) goto L6a
            android.graphics.drawable.Drawable r12 = r9.getBackground()
            android.graphics.drawable.ColorDrawable r12 = (android.graphics.drawable.ColorDrawable) r12
            com.google.android.material.shape.MaterialShapeDrawable r0 = new com.google.android.material.shape.MaterialShapeDrawable
            r0.<init>()
            int r12 = r12.getColor()
            android.content.res.ColorStateList r12 = android.content.res.ColorStateList.valueOf(r12)
            r0.setFillColor(r12)
            r0.initializeElevationOverlay(r7)
            androidx.core.view.ViewCompat.setBackground(r9, r0)
        L6a:
            int r12 = com.google.android.material.R.styleable.AppBarLayout_expanded
            boolean r0 = r11.hasValue(r12)
            if (r0 == 0) goto L79
            boolean r12 = r11.getBoolean(r12, r6)
            r9.setExpanded(r12, r6, r6)
        L79:
            int r12 = com.google.android.material.R.styleable.AppBarLayout_elevation
            boolean r0 = r11.hasValue(r12)
            if (r0 == 0) goto L89
            int r12 = r11.getDimensionPixelSize(r12, r6)
            float r12 = (float) r12
            com.google.android.material.appbar.ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator(r9, r12)
        L89:
            r12 = 26
            if (r8 < r12) goto Lab
            int r12 = com.google.android.material.R.styleable.AppBarLayout_android_keyboardNavigationCluster
            boolean r0 = r11.hasValue(r12)
            if (r0 == 0) goto L9c
            boolean r12 = r11.getBoolean(r12, r6)
            r9.setKeyboardNavigationCluster(r12)
        L9c:
            int r12 = com.google.android.material.R.styleable.AppBarLayout_android_touchscreenBlocksFocus
            boolean r0 = r11.hasValue(r12)
            if (r0 == 0) goto Lab
            boolean r12 = r11.getBoolean(r12, r6)
            r9.setTouchscreenBlocksFocus(r12)
        Lab:
            int r12 = com.google.android.material.R.styleable.AppBarLayout_liftOnScroll
            boolean r12 = r11.getBoolean(r12, r6)
            r9.liftOnScroll = r12
            int r12 = com.google.android.material.R.styleable.AppBarLayout_liftOnScrollTargetViewId
            int r10 = r11.getResourceId(r12, r10)
            r9.liftOnScrollTargetViewId = r10
            int r10 = com.google.android.material.R.styleable.AppBarLayout_statusBarForeground
            android.graphics.drawable.Drawable r10 = r11.getDrawable(r10)
            r9.setStatusBarForeground(r10)
            r11.recycle()
            com.google.android.material.appbar.AppBarLayout$1 r10 = new com.google.android.material.appbar.AppBarLayout$1
            r10.<init>()
            androidx.core.view.ViewCompat.setOnApplyWindowInsetsListener(r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private void setExpanded(boolean z10, boolean z11, boolean z12) {
        this.pendingAction = (z10 ? 1 : 2) | (z11 ? 4 : 0) | (z12 ? 8 : 0);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        removeOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        addOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes2.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        static final int COLLAPSIBLE_FLAGS = 10;
        static final int FLAG_QUICK_RETURN = 5;
        static final int FLAG_SNAP = 17;
        private static final int SCROLL_EFFECT_COMPRESS = 1;
        private static final int SCROLL_EFFECT_NONE = 0;
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_NO_SCROLL = 0;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        public static final int SCROLL_FLAG_SNAP_MARGINS = 32;
        private ChildScrollEffect scrollEffect;
        int scrollFlags;
        Interpolator scrollInterpolator;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes2.dex */
        public @interface ScrollFlags {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.scrollFlags = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
            this.scrollFlags = obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            setScrollEffect(createScrollEffectFromInt(obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollEffect, 0)));
            int i9 = R.styleable.AppBarLayout_Layout_layout_scrollInterpolator;
            if (obtainStyledAttributes.hasValue(i9)) {
                this.scrollInterpolator = android.view.animation.AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(i9, 0));
            }
            obtainStyledAttributes.recycle();
        }

        @Nullable
        private ChildScrollEffect createScrollEffectFromInt(int i9) {
            if (i9 != 1) {
                return null;
            }
            return new CompressChildScrollEffect();
        }

        @Nullable
        public ChildScrollEffect getScrollEffect() {
            return this.scrollEffect;
        }

        public int getScrollFlags() {
            return this.scrollFlags;
        }

        public Interpolator getScrollInterpolator() {
            return this.scrollInterpolator;
        }

        boolean isCollapsible() {
            int i9 = this.scrollFlags;
            return (i9 & 1) == 1 && (i9 & 10) != 0;
        }

        public void setScrollEffect(@Nullable ChildScrollEffect childScrollEffect) {
            this.scrollEffect = childScrollEffect;
        }

        public void setScrollFlags(int i9) {
            this.scrollFlags = i9;
        }

        public void setScrollInterpolator(Interpolator interpolator) {
            this.scrollInterpolator = interpolator;
        }

        public LayoutParams(int i9, int i10) {
            super(i9, i10);
            this.scrollFlags = 1;
        }

        public LayoutParams(int i9, int i10, float f10) {
            super(i9, i10, f10);
            this.scrollFlags = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.scrollFlags = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.scrollFlags = 1;
        }

        @RequiresApi(19)
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.scrollFlags = 1;
        }

        @RequiresApi(19)
        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.scrollFlags = 1;
            this.scrollFlags = layoutParams.scrollFlags;
            this.scrollInterpolator = layoutParams.scrollInterpolator;
        }
    }
}
