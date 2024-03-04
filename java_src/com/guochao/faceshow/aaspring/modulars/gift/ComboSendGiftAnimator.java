package com.guochao.faceshow.aaspring.modulars.gift;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.gift.controller.GiftImageViewLocationEvent;
import com.guochao.faceshow.gift.view.GiftComboView;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\b\u0010\u0017\u001a\u00020\u0010H\u0007J\b\u0010\u0018\u001a\u00020\tH\u0007J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\tH\u0003R&\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u00068\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002R&\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0004j\b\u0012\u0004\u0012\u00020\t`\u00068\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u0002R\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;", "", "()V", "animCache", "Ljava/util/ArrayList;", "Landroid/animation/Animator;", "Lkotlin/collections/ArrayList;", "getAnimCache$annotations", "imageViewCache", "Landroid/widget/ImageView;", "getImageViewCache$annotations", "imageViewWidth", "", "isForEach", "", "animate", "", "comboView", "Lcom/guochao/faceshow/gift/view/GiftComboView;", "event", "Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;", "giftFragment", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;", "cancelAll", "obtainImageView", "recycleView", "imageView", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ComboSendGiftAnimator {
    public static final float imageViewWidth = 32.0f;
    private static boolean isForEach;
    @NotNull
    public static final ComboSendGiftAnimator INSTANCE = new ComboSendGiftAnimator();
    @NotNull
    private static final ArrayList<ImageView> imageViewCache = new ArrayList<>();
    @NotNull
    private static final ArrayList<Animator> animCache = new ArrayList<>();

    private ComboSendGiftAnimator() {
    }

    @JvmStatic
    public static final void animate(@NotNull GiftComboView comboView, @NotNull GiftImageViewLocationEvent event, @NotNull GiftFragment giftFragment) {
        int[] comboLocation;
        Window window;
        Intrinsics.checkNotNullParameter(comboView, "comboView");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(giftFragment, "giftFragment");
        if (giftFragment.isDetached() || !giftFragment.isAdded()) {
            return;
        }
        Dialog dialog = giftFragment.getDialog();
        View decorView = (dialog == null || (window = dialog.getWindow()) == null) ? null : window.getDecorView();
        ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
        if (viewGroup == null || comboView.getVisibility() != 0 || (comboLocation = comboView.getComboLocation()) == null) {
            return;
        }
        int[] location = event.getLocation();
        final ImageView obtainImageView = obtainImageView();
        viewGroup.addView(obtainImageView);
        com.bumptech.glide.c.w(giftFragment).r(event.getImageUrl()).Z(DensityUtil.dp2px(32.0f)).Q0(obtainImageView);
        comboLocation[0] = comboLocation[0] - (DensityUtil.dp2px(32.0f) / 2);
        comboLocation[1] = comboLocation[1] - DensityUtil.dp2px(32.0f);
        obtainImageView.setX(comboLocation[0]);
        obtainImageView.setY(comboLocation[1]);
        int i9 = Resources.getSystem().getDisplayMetrics().heightPixels;
        int i10 = Resources.getSystem().getDisplayMetrics().widthPixels;
        ValueAnimator ofObject = ValueAnimator.ofObject(new BezierEvaluator(i10 - 20, location[1] + ((float) ((i9 - location[1]) * 0.35d)), location[0] + ((float) ((i10 - location[0]) * 0.25d)), location[1]), new PointF(comboLocation[0], comboLocation[1]), new PointF(location[0], location[1]));
        ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ComboSendGiftAnimator.m390animate$lambda0(obtainImageView, valueAnimator);
            }
        });
        final AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(obtainImageView, "scaleX", 1.0f, 2.0f, 1.5f, 1.3f, 0.5f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(obtainImageView, "scaleY", 1.0f, 2.0f, 1.5f, 1.3f, 0.5f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(obtainImageView, "alpha", 0.05f, 0.45f, 0.05f);
        animatorSet.setDuration(1200L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.aaspring.modulars.gift.ComboSendGiftAnimator$animate$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@Nullable Animator animator) {
                boolean z10;
                ArrayList arrayList;
                super.onAnimationCancel(animator);
                ComboSendGiftAnimator.recycleView(obtainImageView);
                z10 = ComboSendGiftAnimator.isForEach;
                if (z10) {
                    return;
                }
                arrayList = ComboSendGiftAnimator.animCache;
                arrayList.remove(animatorSet);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@Nullable Animator animator) {
                boolean z10;
                ArrayList arrayList;
                super.onAnimationEnd(animator);
                ComboSendGiftAnimator.recycleView(obtainImageView);
                z10 = ComboSendGiftAnimator.isForEach;
                if (z10) {
                    return;
                }
                arrayList = ComboSendGiftAnimator.animCache;
                arrayList.remove(animatorSet);
            }
        });
        animatorSet.playTogether(ofObject, ofFloat, ofFloat2, ofFloat3);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.start();
        animCache.add(animatorSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: animate$lambda-0  reason: not valid java name */
    public static final void m390animate$lambda0(ImageView imageView, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(imageView, "$imageView");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type android.graphics.PointF");
        PointF pointF = (PointF) animatedValue;
        imageView.setX(pointF.x);
        imageView.setY(pointF.y);
    }

    @JvmStatic
    public static final void cancelAll() {
        isForEach = true;
        for (Animator animator : animCache) {
            animator.cancel();
        }
        isForEach = false;
        animCache.clear();
        imageViewCache.clear();
    }

    @JvmStatic
    private static /* synthetic */ void getAnimCache$annotations() {
    }

    @JvmStatic
    private static /* synthetic */ void getImageViewCache$annotations() {
    }

    @JvmStatic
    @NotNull
    public static final ImageView obtainImageView() {
        ArrayList<ImageView> arrayList = imageViewCache;
        if (arrayList.isEmpty()) {
            AppCompatImageView appCompatImageView = new AppCompatImageView(BaseApplication.getInstance());
            appCompatImageView.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(32.0f), DensityUtil.dp2px(32.0f)));
            return appCompatImageView;
        }
        ImageView remove = arrayList.remove(0);
        Intrinsics.checkNotNullExpressionValue(remove, "{\n            imageViewCache.removeAt(0)\n        }");
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final void recycleView(ImageView imageView) {
        ViewParent parent = imageView.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(imageView);
        }
        imageViewCache.add(imageView);
    }
}
