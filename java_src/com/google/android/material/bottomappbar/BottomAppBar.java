package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    private static final long ANIMATION_DURATION = 300;
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_BottomAppBar;
    public static final int FAB_ALIGNMENT_MODE_CENTER = 0;
    public static final int FAB_ALIGNMENT_MODE_END = 1;
    public static final int FAB_ANIMATION_MODE_SCALE = 0;
    public static final int FAB_ANIMATION_MODE_SLIDE = 1;
    private static final int NO_MENU_RES_ID = 0;
    private int animatingModeChangeCounter;
    private ArrayList<AnimationListener> animationListeners;
    private Behavior behavior;
    private int bottomInset;
    private int fabAlignmentMode;
    @NonNull
    AnimatorListenerAdapter fabAnimationListener;
    private int fabAnimationMode;
    private boolean fabAttached;
    private final int fabOffsetEndMode;
    @NonNull
    TransformationCallback<FloatingActionButton> fabTransformationCallback;
    private boolean hideOnScroll;
    private int leftInset;
    private final MaterialShapeDrawable materialShapeDrawable;
    private boolean menuAnimatingWithFabAlignmentMode;
    @Nullable
    private Animator menuAnimator;
    @Nullable
    private Animator modeAnimator;
    @Nullable
    private Integer navigationIconTint;
    private final boolean paddingBottomSystemWindowInsets;
    private final boolean paddingLeftSystemWindowInsets;
    private final boolean paddingRightSystemWindowInsets;
    @MenuRes
    private int pendingMenuResId;
    private int rightInset;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface AnimationListener {
        void onAnimationEnd(BottomAppBar bottomAppBar);

        void onAnimationStart(BottomAppBar bottomAppBar);
    }

    /* loaded from: classes2.dex */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        @NonNull
        private final Rect fabContentRect;
        private final View.OnLayoutChangeListener fabLayoutListener;
        private int originalBottomMargin;
        private WeakReference<BottomAppBar> viewRef;

        public Behavior() {
            this.fabLayoutListener = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
                    BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.viewRef.get();
                    if (bottomAppBar != null && (view instanceof FloatingActionButton)) {
                        FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                        floatingActionButton.getMeasuredContentRect(Behavior.this.fabContentRect);
                        int height = Behavior.this.fabContentRect.height();
                        bottomAppBar.setFabDiameter(height);
                        bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().getTopLeftCornerSize().getCornerSize(new RectF(Behavior.this.fabContentRect)));
                        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                        if (Behavior.this.originalBottomMargin == 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                            if (ViewUtils.isLayoutRtl(floatingActionButton)) {
                                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += bottomAppBar.fabOffsetEndMode;
                                return;
                            } else {
                                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += bottomAppBar.fabOffsetEndMode;
                                return;
                            }
                        }
                        return;
                    }
                    view.removeOnLayoutChangeListener(this);
                }
            };
            this.fabContentRect = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, int i9) {
            this.viewRef = new WeakReference<>(bottomAppBar);
            View findDependentView = bottomAppBar.findDependentView();
            if (findDependentView != null && !ViewCompat.isLaidOut(findDependentView)) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) findDependentView.getLayoutParams();
                layoutParams.anchorGravity = 49;
                this.originalBottomMargin = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                if (findDependentView instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) findDependentView;
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(R.animator.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(R.animator.mtrl_fab_hide_motion_spec);
                    }
                    floatingActionButton.addOnLayoutChangeListener(this.fabLayoutListener);
                    bottomAppBar.addFabAnimationListeners(floatingActionButton);
                }
                bottomAppBar.setCutoutState();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i9);
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) bottomAppBar, i9);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i9, int i10) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) bottomAppBar, view, view2, i9, i10);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.fabLayoutListener = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
                    BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.viewRef.get();
                    if (bottomAppBar != null && (view instanceof FloatingActionButton)) {
                        FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                        floatingActionButton.getMeasuredContentRect(Behavior.this.fabContentRect);
                        int height = Behavior.this.fabContentRect.height();
                        bottomAppBar.setFabDiameter(height);
                        bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().getTopLeftCornerSize().getCornerSize(new RectF(Behavior.this.fabContentRect)));
                        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                        if (Behavior.this.originalBottomMargin == 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                            if (ViewUtils.isLayoutRtl(floatingActionButton)) {
                                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += bottomAppBar.fabOffsetEndMode;
                                return;
                            } else {
                                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += bottomAppBar.fabOffsetEndMode;
                                return;
                            }
                        }
                        return;
                    }
                    view.removeOnLayoutChangeListener(this);
                }
            };
            this.fabContentRect = new Rect();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface FabAlignmentMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface FabAnimationMode {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomappbar.BottomAppBar.SavedState.1
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
        int fabAlignmentMode;
        boolean fabAttached;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i9) {
            super.writeToParcel(parcel, i9);
            parcel.writeInt(this.fabAlignmentMode);
            parcel.writeInt(this.fabAttached ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.fabAlignmentMode = parcel.readInt();
            this.fabAttached = parcel.readInt() != 0;
        }
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addFabAnimationListeners(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.addOnHideAnimationListener(this.fabAnimationListener);
        floatingActionButton.addOnShowAnimationListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BottomAppBar.this.fabAnimationListener.onAnimationStart(animator);
                FloatingActionButton findDependentFab = BottomAppBar.this.findDependentFab();
                if (findDependentFab != null) {
                    findDependentFab.setTranslationX(BottomAppBar.this.getFabTranslationX());
                }
            }
        });
        floatingActionButton.addTransformationCallback(this.fabTransformationCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelAnimations() {
        Animator animator = this.menuAnimator;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.modeAnimator;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    private void createFabTranslationXAnimation(int i9, @NonNull List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(findDependentFab(), "translationX", getFabTranslationX(i9));
        ofFloat.setDuration(ANIMATION_DURATION);
        list.add(ofFloat);
    }

    private void createMenuViewTranslationAnimation(final int i9, final boolean z10, @NonNull List<Animator> list) {
        final ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - getActionMenuViewTranslationX(actionMenuView, i9, z10)) > 1.0f) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.7
                public boolean cancelled;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    this.cancelled = true;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (this.cancelled) {
                        return;
                    }
                    boolean z11 = BottomAppBar.this.pendingMenuResId != 0;
                    BottomAppBar bottomAppBar = BottomAppBar.this;
                    bottomAppBar.replaceMenu(bottomAppBar.pendingMenuResId);
                    BottomAppBar.this.translateActionMenuView(actionMenuView, i9, z10, z11);
                }
            });
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(ofFloat2, ofFloat);
            list.add(animatorSet);
        } else if (actionMenuView.getAlpha() < 1.0f) {
            list.add(ofFloat);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchAnimationEnd() {
        ArrayList<AnimationListener> arrayList;
        int i9 = this.animatingModeChangeCounter - 1;
        this.animatingModeChangeCounter = i9;
        if (i9 != 0 || (arrayList = this.animationListeners) == null) {
            return;
        }
        Iterator<AnimationListener> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().onAnimationEnd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchAnimationStart() {
        ArrayList<AnimationListener> arrayList;
        int i9 = this.animatingModeChangeCounter;
        this.animatingModeChangeCounter = i9 + 1;
        if (i9 != 0 || (arrayList = this.animationListeners) == null) {
            return;
        }
        Iterator<AnimationListener> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().onAnimationStart(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public FloatingActionButton findDependentFab() {
        View findDependentView = findDependentView();
        if (findDependentView instanceof FloatingActionButton) {
            return (FloatingActionButton) findDependentView;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001e  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View findDependentView() {
        /*
            r4 = this;
            android.view.ViewParent r0 = r4.getParent()
            boolean r0 = r0 instanceof androidx.coordinatorlayout.widget.CoordinatorLayout
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            android.view.ViewParent r0 = r4.getParent()
            androidx.coordinatorlayout.widget.CoordinatorLayout r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout) r0
            java.util.List r0 = r0.getDependents(r4)
            java.util.Iterator r0 = r0.iterator()
        L18:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L2d
            java.lang.Object r2 = r0.next()
            android.view.View r2 = (android.view.View) r2
            boolean r3 = r2 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton
            if (r3 != 0) goto L2c
            boolean r3 = r2 instanceof com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton
            if (r3 == 0) goto L18
        L2c:
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.findDependentView():android.view.View");
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.bottomInset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX(int i9) {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        if (i9 == 1) {
            return ((getMeasuredWidth() / 2) - (this.fabOffsetEndMode + (isLayoutRtl ? this.leftInset : this.rightInset))) * (isLayoutRtl ? -1 : 1);
        }
        return 0.0f;
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().getCradleVerticalOffset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.leftInset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.rightInset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public BottomAppBarTopEdgeTreatment getTopEdgeTreatment() {
        return (BottomAppBarTopEdgeTreatment) this.materialShapeDrawable.getShapeAppearanceModel().getTopEdge();
    }

    private boolean isFabVisibleOrWillBeShown() {
        FloatingActionButton findDependentFab = findDependentFab();
        return findDependentFab != null && findDependentFab.isOrWillBeShown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeAnimateMenuView(int i9, boolean z10) {
        if (!ViewCompat.isLaidOut(this)) {
            this.menuAnimatingWithFabAlignmentMode = false;
            replaceMenu(this.pendingMenuResId);
            return;
        }
        Animator animator = this.menuAnimator;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!isFabVisibleOrWillBeShown()) {
            i9 = 0;
            z10 = false;
        }
        createMenuViewTranslationAnimation(i9, z10, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.menuAnimator = animatorSet;
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                BottomAppBar.this.dispatchAnimationEnd();
                BottomAppBar.this.menuAnimatingWithFabAlignmentMode = false;
                BottomAppBar.this.menuAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
                BottomAppBar.this.dispatchAnimationStart();
            }
        });
        this.menuAnimator.start();
    }

    private void maybeAnimateModeChange(int i9) {
        if (this.fabAlignmentMode == i9 || !ViewCompat.isLaidOut(this)) {
            return;
        }
        Animator animator = this.modeAnimator;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.fabAnimationMode == 1) {
            createFabTranslationXAnimation(i9, arrayList);
        } else {
            createFabDefaultXAnimation(i9, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.modeAnimator = animatorSet;
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                BottomAppBar.this.dispatchAnimationEnd();
                BottomAppBar.this.modeAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
                BottomAppBar.this.dispatchAnimationStart();
            }
        });
        this.modeAnimator.start();
    }

    @Nullable
    private Drawable maybeTintNavigationIcon(@Nullable Drawable drawable) {
        if (drawable == null || this.navigationIconTint == null) {
            return drawable;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(wrap, this.navigationIconTint.intValue());
        return wrap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setActionMenuViewPosition() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.menuAnimator != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (!isFabVisibleOrWillBeShown()) {
            translateActionMenuView(actionMenuView, 0, false);
        } else {
            translateActionMenuView(actionMenuView, this.fabAlignmentMode, this.fabAttached);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCutoutState() {
        getTopEdgeTreatment().setHorizontalOffset(getFabTranslationX());
        View findDependentView = findDependentView();
        this.materialShapeDrawable.setInterpolation((this.fabAttached && isFabVisibleOrWillBeShown()) ? 1.0f : 0.0f);
        if (findDependentView != null) {
            findDependentView.setTranslationY(getFabTranslationY());
            findDependentView.setTranslationX(getFabTranslationX());
        }
    }

    private void translateActionMenuView(@NonNull ActionMenuView actionMenuView, int i9, boolean z10) {
        translateActionMenuView(actionMenuView, i9, z10, false);
    }

    void addAnimationListener(@NonNull AnimationListener animationListener) {
        if (this.animationListeners == null) {
            this.animationListeners = new ArrayList<>();
        }
        this.animationListeners.add(animationListener);
    }

    protected void createFabDefaultXAnimation(final int i9, List<Animator> list) {
        FloatingActionButton findDependentFab = findDependentFab();
        if (findDependentFab == null || findDependentFab.isOrWillBeHidden()) {
            return;
        }
        dispatchAnimationStart();
        findDependentFab.hide(new FloatingActionButton.OnVisibilityChangedListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5
            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
            public void onHidden(@NonNull FloatingActionButton floatingActionButton) {
                floatingActionButton.setTranslationX(BottomAppBar.this.getFabTranslationX(i9));
                floatingActionButton.show(new FloatingActionButton.OnVisibilityChangedListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5.1
                    @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
                    public void onShown(FloatingActionButton floatingActionButton2) {
                        BottomAppBar.this.dispatchAnimationEnd();
                    }
                });
            }
        });
    }

    protected int getActionMenuViewTranslationX(@NonNull ActionMenuView actionMenuView, int i9, boolean z10) {
        if (i9 == 1 && z10) {
            boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
            int measuredWidth = isLayoutRtl ? getMeasuredWidth() : 0;
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                    if (isLayoutRtl) {
                        measuredWidth = Math.min(measuredWidth, childAt.getLeft());
                    } else {
                        measuredWidth = Math.max(measuredWidth, childAt.getRight());
                    }
                }
            }
            return measuredWidth - ((isLayoutRtl ? actionMenuView.getRight() : actionMenuView.getLeft()) + (isLayoutRtl ? this.rightInset : -this.leftInset));
        }
        return 0;
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.materialShapeDrawable.getTintList();
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().getCradleVerticalOffset();
    }

    public int getFabAlignmentMode() {
        return this.fabAlignmentMode;
    }

    public int getFabAnimationMode() {
        return this.fabAnimationMode;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().getFabCradleMargin();
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().getFabCradleRoundedCornerRadius();
    }

    public boolean getHideOnScroll() {
        return this.hideOnScroll;
    }

    public boolean isScrolledDown() {
        return getBehavior().isScrolledDown();
    }

    public boolean isScrolledUp() {
        return getBehavior().isScrolledUp();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.materialShapeDrawable);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        if (z10) {
            cancelAnimations();
            setCutoutState();
        }
        setActionMenuViewPosition();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.fabAlignmentMode = savedState.fabAlignmentMode;
        this.fabAttached = savedState.fabAttached;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.fabAlignmentMode = this.fabAlignmentMode;
        savedState.fabAttached = this.fabAttached;
        return savedState;
    }

    public void performHide() {
        performHide(true);
    }

    public void performShow() {
        performShow(true);
    }

    void removeAnimationListener(@NonNull AnimationListener animationListener) {
        ArrayList<AnimationListener> arrayList = this.animationListeners;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animationListener);
    }

    public void replaceMenu(@MenuRes int i9) {
        if (i9 != 0) {
            this.pendingMenuResId = 0;
            getMenu().clear();
            inflateMenu(i9);
        }
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.materialShapeDrawable, colorStateList);
    }

    public void setCradleVerticalOffset(@Dimension float f10) {
        if (f10 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().setCradleVerticalOffset(f10);
            this.materialShapeDrawable.invalidateSelf();
            setCutoutState();
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        this.materialShapeDrawable.setElevation(f10);
        getBehavior().setAdditionalHiddenOffsetY(this, this.materialShapeDrawable.getShadowRadius() - this.materialShapeDrawable.getShadowOffsetY());
    }

    public void setFabAlignmentMode(int i9) {
        setFabAlignmentModeAndReplaceMenu(i9, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(int i9, @MenuRes int i10) {
        this.pendingMenuResId = i10;
        this.menuAnimatingWithFabAlignmentMode = true;
        maybeAnimateMenuView(i9, this.fabAttached);
        maybeAnimateModeChange(i9);
        this.fabAlignmentMode = i9;
    }

    public void setFabAnimationMode(int i9) {
        this.fabAnimationMode = i9;
    }

    void setFabCornerSize(@Dimension float f10) {
        if (f10 != getTopEdgeTreatment().getFabCornerRadius()) {
            getTopEdgeTreatment().setFabCornerSize(f10);
            this.materialShapeDrawable.invalidateSelf();
        }
    }

    public void setFabCradleMargin(@Dimension float f10) {
        if (f10 != getFabCradleMargin()) {
            getTopEdgeTreatment().setFabCradleMargin(f10);
            this.materialShapeDrawable.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f10) {
        if (f10 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().setFabCradleRoundedCornerRadius(f10);
            this.materialShapeDrawable.invalidateSelf();
        }
    }

    boolean setFabDiameter(@Px int i9) {
        float f10 = i9;
        if (f10 != getTopEdgeTreatment().getFabDiameter()) {
            getTopEdgeTreatment().setFabDiameter(f10);
            this.materialShapeDrawable.invalidateSelf();
            return true;
        }
        return false;
    }

    public void setHideOnScroll(boolean z10) {
        this.hideOnScroll = z10;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(maybeTintNavigationIcon(drawable));
    }

    public void setNavigationIconTint(@ColorInt int i9) {
        this.navigationIconTint = Integer.valueOf(i9);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void translateActionMenuView(@NonNull final ActionMenuView actionMenuView, final int i9, final boolean z10, boolean z11) {
        Runnable runnable = new Runnable() { // from class: com.google.android.material.bottomappbar.BottomAppBar.8
            @Override // java.lang.Runnable
            public void run() {
                ActionMenuView actionMenuView2 = actionMenuView;
                actionMenuView2.setTranslationX(BottomAppBar.this.getActionMenuViewTranslationX(actionMenuView2, i9, z10));
            }
        };
        if (z11) {
            actionMenuView.post(runnable);
        } else {
            runnable.run();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public Behavior getBehavior() {
        if (this.behavior == null) {
            this.behavior = new Behavior();
        }
        return this.behavior;
    }

    public void performHide(boolean z10) {
        getBehavior().slideDown(this, z10);
    }

    public void performShow(boolean z10) {
        getBehavior().slideUp(this, z10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BottomAppBar(@androidx.annotation.NonNull android.content.Context r11, @androidx.annotation.Nullable android.util.AttributeSet r12, int r13) {
        /*
            r10 = this;
            int r6 = com.google.android.material.bottomappbar.BottomAppBar.DEF_STYLE_RES
            android.content.Context r11 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r11, r12, r13, r6)
            r10.<init>(r11, r12, r13)
            com.google.android.material.shape.MaterialShapeDrawable r11 = new com.google.android.material.shape.MaterialShapeDrawable
            r11.<init>()
            r10.materialShapeDrawable = r11
            r7 = 0
            r10.animatingModeChangeCounter = r7
            r10.pendingMenuResId = r7
            r10.menuAnimatingWithFabAlignmentMode = r7
            r0 = 1
            r10.fabAttached = r0
            com.google.android.material.bottomappbar.BottomAppBar$1 r0 = new com.google.android.material.bottomappbar.BottomAppBar$1
            r0.<init>()
            r10.fabAnimationListener = r0
            com.google.android.material.bottomappbar.BottomAppBar$2 r0 = new com.google.android.material.bottomappbar.BottomAppBar$2
            r0.<init>()
            r10.fabTransformationCallback = r0
            android.content.Context r8 = r10.getContext()
            int[] r2 = com.google.android.material.R.styleable.BottomAppBar
            int[] r5 = new int[r7]
            r0 = r8
            r1 = r12
            r3 = r13
            r4 = r6
            android.content.res.TypedArray r0 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r1 = com.google.android.material.R.styleable.BottomAppBar_backgroundTint
            android.content.res.ColorStateList r1 = com.google.android.material.resources.MaterialResources.getColorStateList(r8, r0, r1)
            int r2 = com.google.android.material.R.styleable.BottomAppBar_navigationIconTint
            boolean r3 = r0.hasValue(r2)
            if (r3 == 0) goto L4e
            r3 = -1
            int r2 = r0.getColor(r2, r3)
            r10.setNavigationIconTint(r2)
        L4e:
            int r2 = com.google.android.material.R.styleable.BottomAppBar_elevation
            int r2 = r0.getDimensionPixelSize(r2, r7)
            int r3 = com.google.android.material.R.styleable.BottomAppBar_fabCradleMargin
            int r3 = r0.getDimensionPixelOffset(r3, r7)
            float r3 = (float) r3
            int r4 = com.google.android.material.R.styleable.BottomAppBar_fabCradleRoundedCornerRadius
            int r4 = r0.getDimensionPixelOffset(r4, r7)
            float r4 = (float) r4
            int r5 = com.google.android.material.R.styleable.BottomAppBar_fabCradleVerticalOffset
            int r5 = r0.getDimensionPixelOffset(r5, r7)
            float r5 = (float) r5
            int r9 = com.google.android.material.R.styleable.BottomAppBar_fabAlignmentMode
            int r9 = r0.getInt(r9, r7)
            r10.fabAlignmentMode = r9
            int r9 = com.google.android.material.R.styleable.BottomAppBar_fabAnimationMode
            int r9 = r0.getInt(r9, r7)
            r10.fabAnimationMode = r9
            int r9 = com.google.android.material.R.styleable.BottomAppBar_hideOnScroll
            boolean r9 = r0.getBoolean(r9, r7)
            r10.hideOnScroll = r9
            int r9 = com.google.android.material.R.styleable.BottomAppBar_paddingBottomSystemWindowInsets
            boolean r9 = r0.getBoolean(r9, r7)
            r10.paddingBottomSystemWindowInsets = r9
            int r9 = com.google.android.material.R.styleable.BottomAppBar_paddingLeftSystemWindowInsets
            boolean r9 = r0.getBoolean(r9, r7)
            r10.paddingLeftSystemWindowInsets = r9
            int r9 = com.google.android.material.R.styleable.BottomAppBar_paddingRightSystemWindowInsets
            boolean r7 = r0.getBoolean(r9, r7)
            r10.paddingRightSystemWindowInsets = r7
            r0.recycle()
            android.content.res.Resources r0 = r10.getResources()
            int r7 = com.google.android.material.R.dimen.mtrl_bottomappbar_fabOffsetEndMode
            int r0 = r0.getDimensionPixelOffset(r7)
            r10.fabOffsetEndMode = r0
            com.google.android.material.bottomappbar.BottomAppBarTopEdgeTreatment r0 = new com.google.android.material.bottomappbar.BottomAppBarTopEdgeTreatment
            r0.<init>(r3, r4, r5)
            com.google.android.material.shape.ShapeAppearanceModel$Builder r3 = com.google.android.material.shape.ShapeAppearanceModel.builder()
            com.google.android.material.shape.ShapeAppearanceModel$Builder r0 = r3.setTopEdge(r0)
            com.google.android.material.shape.ShapeAppearanceModel r0 = r0.build()
            r11.setShapeAppearanceModel(r0)
            r0 = 2
            r11.setShadowCompatibilityMode(r0)
            android.graphics.Paint$Style r0 = android.graphics.Paint.Style.FILL
            r11.setPaintStyle(r0)
            r11.initializeElevationOverlay(r8)
            float r0 = (float) r2
            r10.setElevation(r0)
            androidx.core.graphics.drawable.DrawableCompat.setTintList(r11, r1)
            androidx.core.view.ViewCompat.setBackground(r10, r11)
            com.google.android.material.bottomappbar.BottomAppBar$3 r11 = new com.google.android.material.bottomappbar.BottomAppBar$3
            r11.<init>()
            com.google.android.material.internal.ViewUtils.doOnApplyWindowInsets(r10, r12, r13, r6, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return getFabTranslationX(this.fabAlignmentMode);
    }
}
