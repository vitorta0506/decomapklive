package com.guochao.faceshow.component.f2fmatch.utils;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.chat.models.GiftMessage;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.utils.DensityUtil;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGADrawable;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u000fH\u0002J\b\u0010\u0017\u001a\u00020\rH\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0015J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u000fH\u0002J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\rH\u0002J\u0006\u0010\u001e\u001a\u00020\u0019R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;", "", "f2fMatchActivity", "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;", "container", "Landroid/view/ViewGroup;", "(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/ViewGroup;)V", "animations", "Ljava/util/ArrayList;", "Landroid/animation/AnimatorSet;", "Lkotlin/collections/ArrayList;", "cacheSvgaViews", "", "Lcom/opensource/svgaplayer/SVGAImageView;", "cacheViews", "Landroid/widget/ImageView;", "handler", "Landroid/os/Handler;", "hasBoomAnimation", "", "msg", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;", "obtainImageView", "obtainSvgaView", "playGift", "", "giftMessage", "recycle", ViewHierarchyConstants.VIEW_KEY, "recycleSvga", "reset", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fGiftAnimator {
    @NotNull
    private final ArrayList<AnimatorSet> animations;
    @NotNull
    private final List<SVGAImageView> cacheSvgaViews;
    @NotNull
    private final List<ImageView> cacheViews;
    @NotNull
    private final ViewGroup container;
    @NotNull
    private final F2fMatchActivity f2fMatchActivity;
    @NotNull
    private final Handler handler;

    public F2fGiftAnimator(@NotNull F2fMatchActivity f2fMatchActivity, @NotNull ViewGroup container) {
        Intrinsics.checkNotNullParameter(f2fMatchActivity, "f2fMatchActivity");
        Intrinsics.checkNotNullParameter(container, "container");
        this.f2fMatchActivity = f2fMatchActivity;
        this.container = container;
        this.animations = new ArrayList<>();
        this.cacheViews = new ArrayList();
        this.cacheSvgaViews = new ArrayList();
        this.handler = new Handler(Looper.getMainLooper());
    }

    private final boolean hasBoomAnimation(GiftMessage giftMessage) {
        return Intrinsics.areEqual("2", giftMessage.getGiftInfo().giftTypeId);
    }

    private final ImageView obtainImageView() {
        if (!this.cacheViews.isEmpty()) {
            ImageView remove = this.cacheViews.remove(0);
            remove.setImageDrawable(null);
            remove.setTranslationX(0.0f);
            remove.setTranslationY(0.0f);
            remove.setScaleX(1.0f);
            remove.setScaleY(1.0f);
            return remove;
        }
        ImageView imageView = new ImageView(this.container.getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(DensityUtil.dp2px(64.0f), DensityUtil.dp2px(64.0f));
        layoutParams.gravity = 17;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SVGAImageView obtainSvgaView() {
        if (!this.cacheSvgaViews.isEmpty()) {
            SVGAImageView remove = this.cacheSvgaViews.remove(0);
            remove.setImageDrawable(null);
            remove.setTranslationX(0.0f);
            remove.setTranslationY(0.0f);
            return remove;
        }
        Context context = this.container.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "container.context");
        SVGAImageView sVGAImageView = new SVGAImageView(context, null, 0, 6, null);
        sVGAImageView.setLoops(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(DensityUtil.dp2px(64.0f), DensityUtil.dp2px(64.0f));
        layoutParams.gravity = 17;
        sVGAImageView.setLayoutParams(layoutParams);
        return sVGAImageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: playGift$lambda-1  reason: not valid java name */
    public static final void m644playGift$lambda1(final ImageView imageView, final F2fGiftAnimator this$0, GiftMessage giftMessage) {
        Intrinsics.checkNotNullParameter(imageView, "$imageView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(giftMessage, "$giftMessage");
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(imageView, "scaleX", 0.0f));
        animatorSet.play(ObjectAnimator.ofFloat(imageView, "scaleY", 0.0f));
        animatorSet.setDuration(150L);
        animatorSet.start();
        this$0.handler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.utils.c
            @Override // java.lang.Runnable
            public final void run() {
                F2fGiftAnimator.m645playGift$lambda1$lambda0(F2fGiftAnimator.this, imageView);
            }
        }, 150L);
        if (this$0.hasBoomAnimation(giftMessage)) {
            SVGAParser shareParser = SVGAParser.Companion.shareParser();
            InputStream openRawResource = BaseApplication.getInstance().getResources().openRawResource(R.raw.gift_blow_effects);
            Intrinsics.checkNotNullExpressionValue(openRawResource, "getInstance().resources.…                        )");
            shareParser.decodeFromInputStream(openRawResource, "blow", new SVGAParser.ParseCompletion() { // from class: com.guochao.faceshow.component.f2fmatch.utils.F2fGiftAnimator$playGift$1$2
                @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                public void onComplete(@NotNull SVGAVideoEntity videoItem) {
                    final SVGAImageView obtainSvgaView;
                    ViewGroup viewGroup;
                    Intrinsics.checkNotNullParameter(videoItem, "videoItem");
                    obtainSvgaView = F2fGiftAnimator.this.obtainSvgaView();
                    viewGroup = F2fGiftAnimator.this.container;
                    viewGroup.addView(obtainSvgaView);
                    obtainSvgaView.setTranslationX(imageView.getTranslationX());
                    obtainSvgaView.setTranslationY(imageView.getTranslationY());
                    final F2fGiftAnimator f2fGiftAnimator = F2fGiftAnimator.this;
                    obtainSvgaView.setCallback(new SVGACallback() { // from class: com.guochao.faceshow.component.f2fmatch.utils.F2fGiftAnimator$playGift$1$2$onComplete$1
                        @Override // com.opensource.svgaplayer.SVGACallback
                        public void onFinished() {
                            F2fGiftAnimator.this.recycleSvga(obtainSvgaView);
                        }

                        @Override // com.opensource.svgaplayer.SVGACallback
                        public void onPause() {
                        }

                        @Override // com.opensource.svgaplayer.SVGACallback
                        public void onRepeat() {
                        }

                        @Override // com.opensource.svgaplayer.SVGACallback
                        public void onStep(int i9, double d10) {
                        }
                    });
                    obtainSvgaView.setImageDrawable(new SVGADrawable(videoItem));
                    obtainSvgaView.startAnimation();
                }

                @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                public void onError() {
                }
            }, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: playGift$lambda-1$lambda-0  reason: not valid java name */
    public static final void m645playGift$lambda1$lambda0(F2fGiftAnimator this$0, ImageView imageView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(imageView, "$imageView");
        this$0.recycle(imageView);
    }

    private final void recycle(ImageView imageView) {
        ViewGroup viewGroup = (ViewGroup) imageView.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(imageView);
        }
        if (this.cacheViews.size() >= 9) {
            return;
        }
        this.cacheViews.add(imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void recycleSvga(SVGAImageView sVGAImageView) {
        ViewGroup viewGroup = (ViewGroup) sVGAImageView.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(sVGAImageView);
        }
        if (this.cacheSvgaViews.size() >= 3) {
            return;
        }
        this.cacheSvgaViews.add(sVGAImageView);
    }

    public final void playGift(@NotNull final GiftMessage giftMessage) {
        Intrinsics.checkNotNullParameter(giftMessage, "giftMessage");
        final ImageView obtainImageView = obtainImageView();
        this.container.addView(obtainImageView);
        hc.a.j(obtainImageView, giftMessage.getGiftInfo().img);
        CardView cardView = this.f2fMatchActivity.getViewBinding().smallVideoContainer;
        Intrinsics.checkNotNullExpressionValue(cardView, "f2fMatchActivity.viewBinding.smallVideoContainer");
        int[] iArr = new int[2];
        float f10 = 2;
        cardView.getLocationInWindow(iArr);
        int height = iArr[1] + (cardView.getHeight() / 2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(obtainImageView, "translationX", (iArr[0] + (cardView.getWidth() / 2)) - (this.container.getWidth() / f10)));
        animatorSet.play(ObjectAnimator.ofFloat(obtainImageView, "translationY", height - (this.container.getHeight() / f10)));
        animatorSet.play(ObjectAnimator.ofFloat(obtainImageView, "scaleX", 0.0f, 1.0f));
        animatorSet.play(ObjectAnimator.ofFloat(obtainImageView, "scaleY", 0.0f, 1.0f));
        animatorSet.setDuration(1000L);
        animatorSet.start();
        this.handler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.utils.b
            @Override // java.lang.Runnable
            public final void run() {
                F2fGiftAnimator.m644playGift$lambda1(obtainImageView, this, giftMessage);
            }
        }, 1000L);
    }

    public final void reset() {
        this.handler.removeMessages(0);
        for (AnimatorSet animatorSet : this.animations) {
            animatorSet.cancel();
        }
        this.animations.clear();
        this.container.removeAllViews();
        this.cacheViews.clear();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ F2fGiftAnimator(com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity r1, android.view.ViewGroup r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r3 = r3 & 2
            if (r3 == 0) goto L16
            android.view.Window r2 = r1.getWindow()
            r3 = 2131364513(0x7f0a0aa1, float:1.8348865E38)
            android.view.View r2 = r2.findViewById(r3)
            java.lang.String r3 = "f2fMatchActivity.window.…tch.R.id.small_gift\n    )"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
        L16:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.component.f2fmatch.utils.F2fGiftAnimator.<init>(com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity, android.view.ViewGroup, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
