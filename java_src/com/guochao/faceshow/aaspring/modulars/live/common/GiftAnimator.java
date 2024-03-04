package com.guochao.faceshow.aaspring.modulars.live.common;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.utils.DensityUtil;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGADrawable;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J \u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u001e\u001a\u00020\u000fH\u0002J\b\u0010\u001f\u001a\u00020\rH\u0002J\u0010\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u000fH\u0002J\u0010\u0010\"\u001a\u00020\u00132\u0006\u0010!\u001a\u00020\rH\u0002J\u0006\u0010#\u001a\u00020\u0013R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;", "", "container", "Landroid/view/ViewGroup;", "playView", "Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;", "(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V", "animations", "Ljava/util/ArrayList;", "Landroid/animation/AnimatorSet;", "Lkotlin/collections/ArrayList;", "cacheSvgaViews", "", "Lcom/opensource/svgaplayer/SVGAImageView;", "cacheViews", "Landroid/widget/ImageView;", "handler", "Landroid/os/Handler;", "anim", "", "msg", "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;", "animTo", "imageView", TypedValues.AttributesType.S_TARGET, "Landroid/view/View;", "id", "", "hasBoomAnimation", "", "obtainImageView", "obtainSvgaView", "recycle", ViewHierarchyConstants.VIEW_KEY, "recycleSvga", "reset", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftAnimator {
    @NotNull
    private final ArrayList<AnimatorSet> animations;
    @NotNull
    private final List<SVGAImageView> cacheSvgaViews;
    @NotNull
    private final List<ImageView> cacheViews;
    @NotNull
    private final ViewGroup container;
    @NotNull
    private final Handler handler;
    @NotNull
    private final MultiLivePlayView playView;

    public GiftAnimator(@NotNull ViewGroup container, @NotNull MultiLivePlayView playView) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(playView, "playView");
        this.container = container;
        this.playView = playView;
        this.cacheViews = new ArrayList();
        this.cacheSvgaViews = new ArrayList();
        this.handler = new Handler(Looper.getMainLooper());
        this.animations = new ArrayList<>();
    }

    private final void animTo(String str, GiftLiveMessage giftLiveMessage) {
        List<BaseLiveRoomHolder> k10;
        BaseLiveAdapter adapter = this.playView.getAdapter();
        if (adapter == null || (k10 = adapter.k()) == null) {
            return;
        }
        for (BaseLiveRoomHolder baseLiveRoomHolder : k10) {
            LiveRoomModel liveRoomModel = baseLiveRoomHolder.f19918c;
            if (liveRoomModel != null && Objects.equals(liveRoomModel.getCurrentUserId(), str)) {
                ImageView obtainImageView = obtainImageView();
                this.container.addView(obtainImageView);
                hc.a.j(obtainImageView, giftLiveMessage.getGiftImg());
                View view = baseLiveRoomHolder.itemView;
                Intrinsics.checkNotNullExpressionValue(view, "it.itemView");
                animTo(obtainImageView, view, giftLiveMessage);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: animTo$lambda-4  reason: not valid java name */
    public static final void m466animTo$lambda4(final GiftAnimator this$0, AnimatorSet animator, GiftLiveMessage msg, final ImageView imageView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(animator, "$animator");
        Intrinsics.checkNotNullParameter(msg, "$msg");
        Intrinsics.checkNotNullParameter(imageView, "$imageView");
        this$0.animations.remove(animator);
        if (this$0.hasBoomAnimation(msg)) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(ObjectAnimator.ofFloat(imageView, "scaleX", 0.0f));
            animatorSet.play(ObjectAnimator.ofFloat(imageView, "scaleY", 0.0f));
            animatorSet.setDuration(150L);
            this$0.handler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.k
                @Override // java.lang.Runnable
                public final void run() {
                    GiftAnimator.m467animTo$lambda4$lambda3(GiftAnimator.this, imageView);
                }
            }, 150L);
            animatorSet.start();
            SVGAParser shareParser = SVGAParser.Companion.shareParser();
            InputStream openRawResource = BaseApplication.getInstance().getResources().openRawResource(R.raw.gift_blow_effects);
            Intrinsics.checkNotNullExpressionValue(openRawResource, "getInstance().resources.…                        )");
            shareParser.decodeFromInputStream(openRawResource, "blow", new SVGAParser.ParseCompletion() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.GiftAnimator$animTo$2$2
                @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                public void onComplete(@NotNull SVGAVideoEntity videoItem) {
                    final SVGAImageView obtainSvgaView;
                    ViewGroup viewGroup;
                    Intrinsics.checkNotNullParameter(videoItem, "videoItem");
                    obtainSvgaView = GiftAnimator.this.obtainSvgaView();
                    viewGroup = GiftAnimator.this.container;
                    viewGroup.addView(obtainSvgaView);
                    obtainSvgaView.setTranslationX(imageView.getTranslationX());
                    obtainSvgaView.setTranslationY(imageView.getTranslationY());
                    final GiftAnimator giftAnimator = GiftAnimator.this;
                    obtainSvgaView.setCallback(new SVGACallback() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.GiftAnimator$animTo$2$2$onComplete$1
                        @Override // com.opensource.svgaplayer.SVGACallback
                        public void onFinished() {
                            GiftAnimator.this.recycleSvga(obtainSvgaView);
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
            return;
        }
        this$0.recycle(imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: animTo$lambda-4$lambda-3  reason: not valid java name */
    public static final void m467animTo$lambda4$lambda3(GiftAnimator this$0, ImageView imageView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(imageView, "$imageView");
        this$0.recycle(imageView);
    }

    private final boolean hasBoomAnimation(GiftLiveMessage giftLiveMessage) {
        return Intrinsics.areEqual("2", giftLiveMessage.getGiftTypeId());
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

    public final void anim(@NotNull GiftLiveMessage msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (this.playView.getAdapter() == null || this.playView.getAdapter().getItemCount() <= 1 || this.playView.getAdapter().getItemCount() <= 1) {
            return;
        }
        ArrayList<String> arrayList = new ArrayList();
        if (msg.getIsGiftAllSend() == 1) {
            List<GiftFragment.r> giftSendList = msg.getGiftSendList();
            Intrinsics.checkNotNullExpressionValue(giftSendList, "msg.giftSendList");
            for (GiftFragment.r rVar : giftSendList) {
                arrayList.add(rVar.f17819a);
            }
        } else {
            arrayList.add(msg.getToUserId());
        }
        for (String str : arrayList) {
            animTo(str, msg);
        }
    }

    public final void reset() {
        this.handler.removeMessages(0);
        for (AnimatorSet animatorSet : this.animations) {
            animatorSet.cancel();
        }
        this.animations.clear();
        this.container.removeAllViews();
    }

    private final void animTo(final ImageView imageView, View view, final GiftLiveMessage giftLiveMessage) {
        if (view.getParent() == null) {
            return;
        }
        int[] iArr = new int[2];
        float f10 = 2;
        view.getLocationInWindow(iArr);
        int height = (iArr[1] + (view.getHeight() / 2)) - DensityUtil.dp2px(32.0f);
        final AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(imageView, "translationX", ((iArr[0] + (view.getWidth() / 2)) - DensityUtil.dp2px(32.0f)) - ((this.container.getWidth() / f10) - DensityUtil.dp2px(32.0f))));
        animatorSet.play(ObjectAnimator.ofFloat(imageView, "translationY", height - ((this.container.getHeight() / f10) - DensityUtil.dp2px(32.0f))));
        animatorSet.setDuration(1000L);
        animatorSet.start();
        this.animations.add(animatorSet);
        this.handler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.j
            @Override // java.lang.Runnable
            public final void run() {
                GiftAnimator.m466animTo$lambda4(GiftAnimator.this, animatorSet, giftLiveMessage, imageView);
            }
        }, 1250L);
    }
}
