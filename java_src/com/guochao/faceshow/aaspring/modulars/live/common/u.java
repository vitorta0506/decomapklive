package com.guochao.faceshow.aaspring.modulars.live.common;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.Key;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.utils.DensityUtil;
import d9.e;
/* loaded from: classes3.dex */
public class u {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f19081a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f19082b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f19083c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f19084d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ e.a f19085e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ float f19086f;

        /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0182a extends AnimatorListenerAdapter {
            C0182a() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                a aVar = a.this;
                u.l(aVar.f19084d - 1, aVar.f19083c, aVar.f19081a, aVar.f19085e, aVar.f19086f, aVar.f19082b);
            }
        }

        a(TextView textView, float f10, int i9, int i10, e.a aVar, float f11) {
            this.f19081a = textView;
            this.f19082b = f10;
            this.f19083c = i9;
            this.f19084d = i10;
            this.f19085e = aVar;
            this.f19086f = f11;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f19081a, "scaleX", this.f19082b);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f19081a, "scaleY", this.f19082b);
            ofFloat.setDuration(300L);
            ofFloat2.setDuration(300L);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat, ofFloat2);
            animatorSet.setDuration(300L);
            animatorSet.start();
            if (Math.abs(this.f19083c - (this.f19084d - 1)) == 0) {
                this.f19081a.setVisibility(8);
                e.a aVar = this.f19085e;
                if (aVar != null) {
                    aVar.onSuccess(Boolean.TRUE);
                    return;
                }
                return;
            }
            animatorSet.addListener(new C0182a());
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f19088a;

        b(View view) {
            this.f19088a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            AnimatorSet animatorSet = new AnimatorSet();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f19088a, Key.ROTATION, -1.0f, 1.0f);
            ofFloat.setRepeatCount(-1);
            ofFloat.setRepeatMode(2);
            animatorSet.playTogether(ofFloat);
            animatorSet.setDuration(400L);
            animatorSet.start();
            animatorSet.setInterpolator(new LinearInterpolator());
            this.f19088a.setTag(animatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f19089a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f19090b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f19091c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ g f19092d;

        /* loaded from: classes3.dex */
        class a extends AnimatorListenerAdapter {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.u$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0183a implements Animator.AnimatorListener {
                C0183a() {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    c.this.f19089a.setVisibility(8);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }

            /* loaded from: classes3.dex */
            class b implements ValueAnimator.AnimatorUpdateListener {

                /* renamed from: a  reason: collision with root package name */
                boolean f19095a = false;

                b() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    if (this.f19095a || animatedFraction <= 0.5f) {
                        return;
                    }
                    this.f19095a = true;
                    g gVar = c.this.f19092d;
                    if (gVar != null) {
                        gVar.a();
                    }
                }
            }

            a() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ObjectAnimator ofFloat;
                c.this.f19091c.setVisibility(4);
                if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                    ofFloat = ObjectAnimator.ofFloat(c.this.f19089a, "translationX", 0.0f, 1500.0f);
                } else {
                    View view = c.this.f19089a;
                    ofFloat = ObjectAnimator.ofFloat(view, "translationX", 0.0f, -view.getMeasuredWidth());
                }
                ofFloat.setDuration(300L);
                ofFloat.addListener(new C0183a());
                ofFloat.addUpdateListener(new b());
                ofFloat.start();
                c.this.f19089a.setTag(ofFloat);
            }
        }

        c(View view, int[] iArr, TextView textView, g gVar) {
            this.f19089a = view;
            this.f19090b = iArr;
            this.f19091c = textView;
            this.f19092d = gVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f19091c.setVisibility(0);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f19089a, "scaleY", 1.0f, 0.1f);
            ofFloat.setStartDelay(2000L);
            ofFloat.setDuration(200L);
            ofFloat.addListener(new a());
            this.f19089a.setTag(ofFloat);
            ofFloat.start();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f19089a.setVisibility(0);
            this.f19089a.getLocationOnScreen(this.f19090b);
            this.f19089a.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f19097a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecyclerView f19098b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ d9.i f19099c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Handler f19100d;

        d(View view, RecyclerView recyclerView, d9.i iVar, Handler handler) {
            this.f19097a = view;
            this.f19098b = recyclerView;
            this.f19099c = iVar;
            this.f19100d = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f19097a.setVisibility(8);
            this.f19098b.scrollToPosition(0);
            this.f19099c.onCallback();
            this.f19100d.removeCallbacks(this);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f19101a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PKLiveInfoFragment f19102b;

        e(boolean z10, PKLiveInfoFragment pKLiveInfoFragment) {
            this.f19101a = z10;
            this.f19102b = pKLiveInfoFragment;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (this.f19101a) {
                this.f19102b.w2();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes3.dex */
    class f implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f19103a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecyclerView f19104b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ d9.i f19105c;

        f(View view, RecyclerView recyclerView, d9.i iVar) {
            this.f19103a = view;
            this.f19104b = recyclerView;
            this.f19105c = iVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f19103a.setVisibility(8);
            this.f19104b.scrollToPosition(0);
            this.f19105c.onCallback();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes3.dex */
    public interface g {
        void a();
    }

    public static void a(View view) {
        b(view);
        view.post(new b(view));
    }

    public static void b(View view) {
        if (view == null) {
            return;
        }
        Object tag = view.getTag();
        if (tag instanceof Animator) {
            ((Animator) tag).cancel();
            view.setTag(null);
        }
    }

    public static void c(View view) {
        if (view == null) {
            return;
        }
        Animator animator = (Animator) view.getTag();
        if (animator != null) {
            animator.cancel();
        }
        view.setTranslationX(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setVisibility(4);
    }

    public static void d(View view, RecyclerView recyclerView, Handler handler, d9.i iVar) {
        if (view.getVisibility() == 8) {
            return;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, Language.ARABIC.equalsIgnoreCase(q7.a.e().c()) ? 1.0f : -1.0f, 1, 0.0f, 1, 0.0f);
        translateAnimation.setDuration(500L);
        view.startAnimation(translateAnimation);
        handler.postDelayed(new d(view, recyclerView, iVar, handler), 500L);
    }

    public static void e(View view, RecyclerView recyclerView, d9.i iVar) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(1000L);
        view.startAnimation(alphaAnimation);
        alphaAnimation.setAnimationListener(new f(view, recyclerView, iVar));
    }

    public static Animator f(ImageView imageView) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(imageView, "scaleX", 1.0f, 0.75f, 1.0f);
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(imageView, "scaleY", 1.0f, 0.75f, 1.0f);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setRepeatMode(1);
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.setDuration(1080L);
        animatorSet.start();
        return animatorSet;
    }

    public static void g(View view, TextView textView, LinearLayout linearLayout, g gVar) {
        if (linearLayout.getLayoutTransition() != null) {
            linearLayout.getLayoutTransition().setAnimateParentHierarchy(false);
        }
        view.setScaleY(1.0f);
        view.setTranslationX(0.0f);
        view.setVisibility(0);
        textView.setVisibility(4);
        int[] iArr = new int[2];
        view.getLocationOnScreen(new int[2]);
        AnimatorSet animatorSet = new AnimatorSet();
        view.setTranslationX(Language.ARABIC.equalsIgnoreCase(q7.a.e().c()) ? 1500 : -1500);
        animatorSet.setStartDelay(200L);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", view.getTranslationX(), 0.0f);
        ofFloat.setDuration(300L);
        view.setScaleY(0.1f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 0.1f, 1.0f);
        ofFloat2.setStartDelay(300L);
        ofFloat2.setDuration(300L);
        animatorSet.setDuration(600L);
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.addListener(new c(view, iArr, textView, gVar));
        animatorSet.start();
        view.setTag(animatorSet);
    }

    public static void h(View view, int i9) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            if (layoutParams.width == i9 && layoutParams.height == i9) {
                return;
            }
            layoutParams.width = i9;
            layoutParams.height = i9;
        } else {
            layoutParams = new ViewGroup.MarginLayoutParams(i9, i9);
        }
        view.setLayoutParams(layoutParams);
    }

    public static void i(ViewGroup viewGroup, RecyclerView recyclerView, int i9) {
        View findViewById = viewGroup.findViewById(R.id.click_view);
        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = recyclerView.getLayoutParams();
        if (i9 == -1) {
            layoutParams2.height = -2;
            viewGroup.setBackground(null);
            layoutParams.height = DensityUtil.dp2px(80.0f);
        } else {
            layoutParams2.height = DensityUtil.dp2px(35.0f);
            viewGroup.setBackgroundResource(i9);
            layoutParams.height = DensityUtil.dp2px(45.0f);
        }
        findViewById.setLayoutParams(layoutParams);
        recyclerView.setLayoutParams(layoutParams2);
    }

    public static void j(int i9, int i10, TextView textView) {
        k(i9, i10, textView, null);
    }

    public static void k(int i9, int i10, TextView textView, e.a<Boolean> aVar) {
        l(i9, i10, textView, aVar, 0.3f, 1.2f);
    }

    public static void l(int i9, int i10, TextView textView, e.a<Boolean> aVar, float f10, float f11) {
        if (Math.abs(i10 - i9) == 0) {
            textView.setVisibility(8);
            if (aVar != null) {
                aVar.onSuccess(Boolean.TRUE);
                return;
            }
            return;
        }
        textView.setVisibility(0);
        textView.setText(i9 + "");
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, "scaleX", f10);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, "scaleY", f10);
        ofFloat.setDuration(700L);
        ofFloat2.setDuration(700L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(700L);
        animatorSet.start();
        animatorSet.addListener(new a(textView, f11, i10, i9, aVar, f10));
    }

    public static void m(PKLiveInfoFragment pKLiveInfoFragment, View view, boolean z10) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(200L);
        view.setVisibility(0);
        view.startAnimation(alphaAnimation);
        alphaAnimation.setAnimationListener(new e(z10, pKLiveInfoFragment));
    }
}
