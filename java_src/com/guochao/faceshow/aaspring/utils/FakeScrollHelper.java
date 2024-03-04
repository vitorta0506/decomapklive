package com.guochao.faceshow.aaspring.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
/* loaded from: classes3.dex */
public class FakeScrollHelper {
    private static final int MAX_COUNT = 2;
    private static int count;
    static int last;
    static int lastDown;

    static /* synthetic */ int access$108() {
        int i9 = count;
        count = i9 + 1;
        return i9;
    }

    public static void start(Context context, View view, ViewPager2 viewPager2, RecyclerView recyclerView, View view2, Animator.AnimatorListener animatorListener) {
        start(context, view, viewPager2, recyclerView, view2, animatorListener, "first_Main_v2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void startAnimation(final Context context, final View view, final ViewPager2 viewPager2, final RecyclerView recyclerView, final View view2, final Animator.AnimatorListener animatorListener) {
        if (count >= 2) {
            animatorListener.onAnimationEnd(null);
            view.setOnTouchListener(null);
            viewPager2.setUserInputEnabled(true);
            AppSettings.setSetting("first_Main_v2", false);
            return;
        }
        view2.setVisibility(0);
        view2.setAlpha(0.0f);
        view2.animate().alpha(1.0f).start();
        int i9 = (int) (context.getResources().getDisplayMetrics().heightPixels * 0.4d);
        final ValueAnimator ofInt = ValueAnimator.ofInt(i9);
        final ValueAnimator ofInt2 = ValueAnimator.ofInt(i9, 0);
        ofInt2.setDuration(800L);
        ofInt2.setStartDelay(300L);
        ofInt.setDuration(1200L);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt2.setInterpolator(new DecelerateInterpolator());
        ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.aaspring.utils.FakeScrollHelper.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                RecyclerView.this.scrollBy(0, intValue - FakeScrollHelper.lastDown);
                view2.setTranslationY(-intValue);
                FakeScrollHelper.lastDown = intValue;
            }
        });
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.aaspring.utils.FakeScrollHelper.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                RecyclerView.this.scrollBy(0, intValue - FakeScrollHelper.last);
                view2.setTranslationY(-intValue);
                FakeScrollHelper.last = intValue;
                FakeScrollHelper.lastDown = intValue;
            }
        });
        final Runnable runnable = new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.FakeScrollHelper.4
            @Override // java.lang.Runnable
            public void run() {
                view2.setVisibility(8);
            }
        };
        ofInt.addListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.aaspring.utils.FakeScrollHelper.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                view2.postDelayed(runnable, 250L);
                view2.animate().alpha(0.0f).start();
                ofInt2.start();
            }
        });
        ofInt2.addListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.aaspring.utils.FakeScrollHelper.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                FakeScrollHelper.access$108();
                view2.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.FakeScrollHelper.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        FakeScrollHelper.startAnimation(context, view, viewPager2, recyclerView, view2, animatorListener);
                    }
                }, 300L);
            }
        });
        ofInt.start();
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.faceshow.aaspring.utils.FakeScrollHelper.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view3, MotionEvent motionEvent) {
                ofInt.removeAllUpdateListeners();
                ofInt.removeAllListeners();
                ofInt.cancel();
                ofInt2.removeAllListeners();
                ofInt2.removeAllUpdateListeners();
                ofInt2.cancel();
                view2.setVisibility(8);
                view2.removeCallbacks(runnable);
                viewPager2.setUserInputEnabled(true);
                recyclerView.scrollToPosition(0);
                view.setOnTouchListener(null);
                Animator.AnimatorListener animatorListener2 = animatorListener;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationEnd(null);
                }
                return true;
            }
        });
    }

    public static void start(final Context context, final View view, final ViewPager2 viewPager2, final RecyclerView recyclerView, final View view2, final Animator.AnimatorListener animatorListener, String str) {
        if (AppSettings.getSetting(str, true)) {
            AppSettings.setSetting(str, false);
            count = 0;
            viewPager2.setUserInputEnabled(false);
            recyclerView.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.FakeScrollHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    FakeScrollHelper.startAnimation(context, view, viewPager2, recyclerView, view2, animatorListener);
                }
            }, 1000L);
        }
    }
}
