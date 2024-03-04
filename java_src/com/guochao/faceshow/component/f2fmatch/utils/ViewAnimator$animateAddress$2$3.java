package com.guochao.faceshow.component.f2fmatch.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"com/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$2$3", "Landroid/animation/AnimatorListenerAdapter;", "onAnimationEnd", "", "animation", "Landroid/animation/Animator;", "onAnimationStart", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ViewAnimator$animateAddress$2$3 extends AnimatorListenerAdapter {
    final /* synthetic */ TextView $addr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewAnimator$animateAddress$2$3(TextView textView) {
        this.$addr = textView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(@NotNull Animator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        super.onAnimationEnd(animation);
        this.$addr.setVisibility(4);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(@NotNull Animator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        super.onAnimationStart(animation);
        this.$addr.setVisibility(0);
    }
}
