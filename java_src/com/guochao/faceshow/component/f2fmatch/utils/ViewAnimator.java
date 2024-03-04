package com.guochao.faceshow.component.f2fmatch.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.component.f2fmatch.R$id;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fPrepareFragment;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fPreviewFragment;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.rtmp.ui.TXCloudVideoView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eJ&\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014J\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;", "", "()V", "animating", "", "getAnimating", "()Z", "setAnimating", "(Z)V", "anim", "", PushConstants.INTENT_ACTIVITY_NAME, "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;", "preview", "Landroid/view/View;", "prepare", "matching", "animToPrepare", "animateAddress", "addr", "Landroid/widget/TextView;", "moveView", "previewView", "container", "Landroid/view/ViewGroup;", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ViewAnimator {
    private boolean animating;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: anim$lambda-0  reason: not valid java name */
    public static final void m652anim$lambda0(View preview, View prepare, View matching, int i9, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(preview, "$preview");
        Intrinsics.checkNotNullParameter(prepare, "$prepare");
        Intrinsics.checkNotNullParameter(matching, "$matching");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        preview.setTranslationY(floatValue);
        prepare.setTranslationY(floatValue);
        matching.setTranslationY(i9 + floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: animToPrepare$lambda-1  reason: not valid java name */
    public static final void m653animToPrepare$lambda1(View preview, View prepare, View matching, int i9, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(preview, "$preview");
        Intrinsics.checkNotNullParameter(prepare, "$prepare");
        Intrinsics.checkNotNullParameter(matching, "$matching");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        preview.setTranslationY(floatValue);
        prepare.setTranslationY(floatValue);
        matching.setTranslationY(i9 + floatValue);
    }

    private final void moveView(View view, ViewGroup viewGroup) {
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        if (viewGroup2 != null) {
            viewGroup2.removeView(view);
        }
        viewGroup.addView(view);
    }

    public final void anim(@NotNull final F2fMatchActivity activity, @NotNull final View preview, @NotNull final View prepare, @NotNull final View matching) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(preview, "preview");
        Intrinsics.checkNotNullParameter(prepare, "prepare");
        Intrinsics.checkNotNullParameter(matching, "matching");
        if (this.animating) {
            return;
        }
        this.animating = true;
        Fragment findFragmentById = activity.getSupportFragmentManager().findFragmentById(R$id.preview);
        Intrinsics.checkNotNull(findFragmentById, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.fragment.F2fPreviewFragment");
        Fragment findFragmentById2 = activity.getSupportFragmentManager().findFragmentById(R$id.prepare);
        Intrinsics.checkNotNull(findFragmentById2, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.fragment.F2fPrepareFragment");
        final F2fPrepareFragment f2fPrepareFragment = (F2fPrepareFragment) findFragmentById2;
        TXCloudVideoView tXCloudVideoView = ((F2fPreviewFragment) findFragmentById).getViewBinding().previewView;
        Intrinsics.checkNotNullExpressionValue(tXCloudVideoView, "previewFragment.viewBinding.previewView");
        CardView cardView = activity.getViewBinding().smallVideoArea;
        Intrinsics.checkNotNullExpressionValue(cardView, "activity.viewBinding.smallVideoArea");
        moveView(tXCloudVideoView, cardView);
        matching.setVisibility(0);
        final int height = preview.getHeight();
        float f10 = height;
        matching.setTranslationY(f10);
        matching.setVisibility(0);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, -f10);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.component.f2fmatch.utils.k
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewAnimator.m652anim$lambda0(preview, prepare, matching, height, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.component.f2fmatch.utils.ViewAnimator$anim$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                super.onAnimationCancel(animation);
                this.setAnimating(false);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                super.onAnimationEnd(animation);
                preview.setVisibility(4);
                prepare.setVisibility(4);
                this.setAnimating(false);
                activity.getSupportFragmentManager().beginTransaction().hide(f2fPrepareFragment).commitAllowingStateLoss();
            }
        });
        ofFloat.start();
    }

    public final void animToPrepare(@NotNull final F2fMatchActivity activity, @NotNull final View preview, @NotNull final View prepare, @NotNull final View matching) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(preview, "preview");
        Intrinsics.checkNotNullParameter(prepare, "prepare");
        Intrinsics.checkNotNullParameter(matching, "matching");
        if (this.animating) {
            return;
        }
        this.animating = true;
        Fragment findFragmentById = activity.getSupportFragmentManager().findFragmentById(R$id.preview);
        Intrinsics.checkNotNull(findFragmentById, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.fragment.F2fPreviewFragment");
        F2fPreviewFragment f2fPreviewFragment = (F2fPreviewFragment) findFragmentById;
        final F2fPrepareFragment f2fPrepareFragment = activity.getF2fPrepareFragment();
        TXCloudVideoView tXCloudVideoView = f2fPreviewFragment.getViewBinding().previewView;
        Intrinsics.checkNotNullExpressionValue(tXCloudVideoView, "previewFragment.viewBinding.previewView");
        FrameLayout frameLayout = f2fPreviewFragment.getViewBinding().largeVideo;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "previewFragment.viewBinding.largeVideo");
        moveView(tXCloudVideoView, frameLayout);
        activity.getViewBinding().smallVideoContainer.setVisibility(4);
        preview.setVisibility(0);
        prepare.setVisibility(0);
        final int height = matching.getHeight();
        float f10 = height;
        preview.setTranslationY(f10);
        prepare.setTranslationY(f10);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(-f10, 0.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.component.f2fmatch.utils.j
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewAnimator.m653animToPrepare$lambda1(preview, prepare, matching, height, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.component.f2fmatch.utils.ViewAnimator$animToPrepare$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                super.onAnimationCancel(animation);
                this.setAnimating(false);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                super.onAnimationEnd(animation);
                matching.setVisibility(4);
                prepare.setVisibility(0);
                activity.getViewBinding().smallVideoContainer.setVisibility(8);
                activity.getSupportFragmentManager().beginTransaction().show(f2fPrepareFragment).commitAllowingStateLoss();
                this.setAnimating(false);
            }
        });
        ofFloat.start();
    }

    public final void animateAddress(@NotNull final TextView addr) {
        Intrinsics.checkNotNullParameter(addr, "addr");
        AnimatorSet animatorSet = (AnimatorSet) addr.getTag();
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        if (ViewCompat.isLaidOut(addr) && !addr.isLayoutRequested()) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(addr, "translationX", -addr.getWidth(), 0.0f);
            ofFloat.setDuration(400L);
            Unit unit = Unit.INSTANCE;
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(addr, "translationX", 0.0f, -addr.getWidth());
            ofFloat2.setDuration(400L);
            ofFloat2.setStartDelay(800L);
            animatorSet2.playSequentially(ofFloat, ofFloat2);
            animatorSet2.addListener(new ViewAnimator$animateAddress$2$3(addr));
            addr.setTag(animatorSet2);
            animatorSet2.start();
            return;
        }
        addr.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.guochao.faceshow.component.f2fmatch.utils.ViewAnimator$animateAddress$$inlined$doOnLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(@NotNull View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
                Intrinsics.checkNotNullParameter(view, "view");
                view.removeOnLayoutChangeListener(this);
                AnimatorSet animatorSet3 = new AnimatorSet();
                TextView textView = addr;
                ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(textView, "translationX", -textView.getWidth(), 0.0f);
                ofFloat3.setDuration(400L);
                Unit unit2 = Unit.INSTANCE;
                TextView textView2 = addr;
                ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(textView2, "translationX", 0.0f, -textView2.getWidth());
                ofFloat4.setDuration(400L);
                ofFloat4.setStartDelay(800L);
                animatorSet3.playSequentially(ofFloat3, ofFloat4);
                animatorSet3.addListener(new ViewAnimator$animateAddress$2$3(addr));
                addr.setTag(animatorSet3);
                animatorSet3.start();
            }
        });
    }

    public final boolean getAnimating() {
        return this.animating;
    }

    public final void setAnimating(boolean z10) {
        this.animating = z10;
    }
}
