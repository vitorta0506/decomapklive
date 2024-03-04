package com.guochao.faceshow.aaspring.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
/* loaded from: classes3.dex */
public class ViewZoomHelper {
    static final int ANIM_DURATION = 300;
    View mContainer;
    private Animator mCurrentAnimator;
    private View mLarge;
    private Animator.AnimatorListener mListener;
    private boolean mScaleUp;
    private View mSmall;
    private Animator.AnimatorListener mZoomUpListener;
    float startScaleFinal;
    Rect startBounds = new Rect();
    Rect finalBounds = new Rect();
    Point globalOffset = new Point();

    public boolean isScaleUp() {
        return this.mScaleUp;
    }

    public void resetZoom(View view) {
        View view2 = this.mSmall;
        if (view2 != null) {
            view2.setAlpha(1.0f);
        }
        this.mSmall = view;
        resetZoom();
    }

    public void setResetAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.mListener = animatorListener;
    }

    public void setScaleUp(boolean z10) {
        this.mScaleUp = z10;
    }

    public void setZoomUpAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.mZoomUpListener = animatorListener;
    }

    public void startZoom(View view, View view2, View view3) {
        float width;
        if (this.mCurrentAnimator != null) {
            return;
        }
        this.mSmall = view;
        this.mLarge = view2;
        this.mContainer = view3;
        this.startBounds = new Rect();
        this.finalBounds = new Rect();
        this.globalOffset = new Point();
        view.getGlobalVisibleRect(this.startBounds);
        view3.getGlobalVisibleRect(this.finalBounds, this.globalOffset);
        Rect rect = this.startBounds;
        Point point = this.globalOffset;
        rect.offset(-point.x, -point.y);
        Rect rect2 = this.finalBounds;
        Point point2 = this.globalOffset;
        rect2.offset(-point2.x, -point2.y);
        if (this.finalBounds.width() / this.finalBounds.height() > this.startBounds.width() / this.startBounds.height()) {
            width = this.startBounds.height() / this.finalBounds.height();
            float width2 = ((this.finalBounds.width() * width) - this.startBounds.width()) / 2.0f;
            Rect rect3 = this.startBounds;
            rect3.left = (int) (rect3.left - width2);
            rect3.right = (int) (rect3.right + width2);
        } else {
            width = this.startBounds.width() / this.finalBounds.width();
            float height = ((this.finalBounds.height() * width) - this.startBounds.height()) / 2.0f;
            Rect rect4 = this.startBounds;
            rect4.top = (int) (rect4.top - height);
            rect4.bottom = (int) (rect4.bottom + height);
        }
        view.setAlpha(0.0f);
        view2.setVisibility(0);
        view2.setPivotX(0.0f);
        view2.setPivotY(0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(view2, View.X, this.startBounds.left, this.finalBounds.left)).with(ObjectAnimator.ofFloat(view2, View.Y, this.startBounds.top, this.finalBounds.top)).with(ObjectAnimator.ofFloat(view2, View.SCALE_X, width, 1.0f)).with(ObjectAnimator.ofFloat(view2, View.SCALE_Y, width, 1.0f));
        animatorSet.setDuration(300L);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.aaspring.utils.ViewZoomHelper.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ViewZoomHelper.this.mCurrentAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewZoomHelper.this.mCurrentAnimator = null;
            }
        });
        Animator.AnimatorListener animatorListener = this.mZoomUpListener;
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        this.mCurrentAnimator = animatorSet;
        this.startScaleFinal = width;
        this.mScaleUp = true;
    }

    public void resetZoom() {
        float width;
        Animator animator = this.mCurrentAnimator;
        if (animator != null) {
            animator.cancel();
        }
        final View view = this.mLarge;
        final View view2 = this.mSmall;
        Rect rect = new Rect();
        this.startBounds = rect;
        view2.getGlobalVisibleRect(rect);
        if (this.finalBounds.width() / this.finalBounds.height() > this.startBounds.width() / this.startBounds.height()) {
            width = this.startBounds.height() / this.finalBounds.height();
            float width2 = ((this.finalBounds.width() * width) - this.startBounds.width()) / 2.0f;
            Rect rect2 = this.startBounds;
            rect2.left = (int) (rect2.left - width2);
            rect2.right = (int) (rect2.right + width2);
        } else {
            width = this.startBounds.width() / this.finalBounds.width();
            float height = ((this.finalBounds.height() * width) - this.startBounds.height()) / 2.0f;
            Rect rect3 = this.startBounds;
            rect3.top = (int) (rect3.top - height);
            rect3.bottom = (int) (rect3.bottom + height);
        }
        view.setPivotY(0.0f);
        view.setPivotX(0.0f);
        this.startScaleFinal = width;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(view, View.X, this.startBounds.left)).with(ObjectAnimator.ofFloat(view, View.Y, this.startBounds.top)).with(ObjectAnimator.ofFloat(view, View.SCALE_X, this.startScaleFinal)).with(ObjectAnimator.ofFloat(view, View.SCALE_Y, this.startScaleFinal));
        animatorSet.setDuration(300L);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.aaspring.utils.ViewZoomHelper.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator2) {
                view2.setAlpha(1.0f);
                view.setVisibility(8);
                ViewZoomHelper.this.mCurrentAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                view2.setAlpha(1.0f);
                view.setVisibility(8);
                ViewZoomHelper.this.mCurrentAnimator = null;
            }
        });
        Animator.AnimatorListener animatorListener = this.mListener;
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        this.mCurrentAnimator = animatorSet;
        this.mScaleUp = false;
    }
}
