package com.twitter.sdk.android.tweetui.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes4.dex */
class a {

    /* renamed from: com.twitter.sdk.android.tweetui.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class C0363a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f35531a;

        C0363a(View view) {
            this.f35531a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f35531a.setVisibility(4);
            this.f35531a.setAlpha(1.0f);
        }
    }

    public static ViewPropertyAnimator a(View view, int i9) {
        if (view.getVisibility() != 0) {
            view.setAlpha(0.0f);
            view.setVisibility(0);
        }
        view.clearAnimation();
        ViewPropertyAnimator animate = view.animate();
        animate.alpha(1.0f).setDuration(i9).setListener(null);
        return animate;
    }

    public static ViewPropertyAnimator b(View view, int i9) {
        if (view.getVisibility() == 0) {
            view.clearAnimation();
            ViewPropertyAnimator animate = view.animate();
            animate.alpha(0.0f).setDuration(i9).setListener(new C0363a(view));
            return animate;
        }
        return null;
    }
}
