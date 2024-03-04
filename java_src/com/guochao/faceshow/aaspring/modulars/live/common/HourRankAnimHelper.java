package com.guochao.faceshow.aaspring.modulars.live.common;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.databinding.LayoutHourRankAnimBinding;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.SvgaImageViewV2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0012\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;", "", "()V", "handler", "Landroid/os/Handler;", "anim", "", "container", "Landroid/view/ViewGroup;", "itemData", "Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;", "checkRelease", "viewGroup", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HourRankAnimHelper {
    @NotNull
    public static final HourRankAnimHelper INSTANCE = new HourRankAnimHelper();
    @NotNull
    private static final Handler handler = new Handler(Looper.getMainLooper());

    private HourRankAnimHelper() {
    }

    @JvmStatic
    public static final void anim(@Nullable final ViewGroup viewGroup, @NotNull LiveRoomModel itemData) {
        Intrinsics.checkNotNullParameter(itemData, "itemData");
        if (viewGroup == null) {
            return;
        }
        final View findViewById = viewGroup.findViewById(R.id.hour_rank_anim);
        if (findViewById == null) {
            findViewById = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_hour_rank_anim, viewGroup, false);
            viewGroup.addView(findViewById);
        }
        final LayoutHourRankAnimBinding bind = LayoutHourRankAnimBinding.bind(findViewById);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
        bind.bigAnim.playRaw(R.raw.hour_rank_anim_bg);
        TextViewUtils.setMaxEcplise(bind.nickName, 8, itemData.getBroadCasterUserName());
        bind.avatar.d(itemData);
        SvgaImageViewV2 svgaImageViewV2 = bind.smallAnim;
        svgaImageViewV2.setResizeScale(2.0f);
        svgaImageViewV2.playRaw(R.raw.hour_rank_anim_enter);
        FrameLayout frameLayout = bind.smallAnimArea;
        frameLayout.setAlpha(0.0f);
        frameLayout.setTranslationY(DensityUtil.dp2px(20.0f));
        handler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.l
            @Override // java.lang.Runnable
            public final void run() {
                HourRankAnimHelper.m468anim$lambda7(LayoutHourRankAnimBinding.this, viewGroup, findViewById);
            }
        }, 1700L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: anim$lambda-7  reason: not valid java name */
    public static final void m468anim$lambda7(LayoutHourRankAnimBinding viewBinding, final ViewGroup viewGroup, final View view) {
        Intrinsics.checkNotNullParameter(viewBinding, "$viewBinding");
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(viewBinding.smallAnimArea, "translationY", DensityUtil.dp2px(20.0f), 0.0f);
        ofFloat.setDuration(280L);
        Unit unit = Unit.INSTANCE;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(viewBinding.smallAnimArea, "alpha", 0.0f, 1.0f);
        ofFloat2.setDuration(280L);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(viewBinding.smallAnimArea, "translationY", DensityUtil.dp2px(20.0f));
        ofFloat3.setStartDelay(3000L);
        ofFloat3.setDuration(600L);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(viewBinding.smallAnimArea, "alpha", 1.0f, 0.0f);
        ofFloat4.setStartDelay(3000L);
        ofFloat4.setDuration(600L);
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4);
        viewGroup.setTag(R.id.tagFlowLayout, animatorSet);
        view.setTag(animatorSet);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.HourRankAnimHelper$anim$run$1$5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@Nullable Animator animator) {
                super.onAnimationEnd(animator);
                viewGroup.removeView(view);
                viewGroup.setTag(R.id.tagFlowLayout, null);
            }
        });
        animatorSet.start();
    }

    @JvmStatic
    public static final void checkRelease(@Nullable ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        Object tag = viewGroup.getTag(R.id.tagFlowLayout);
        AnimatorSet animatorSet = tag instanceof AnimatorSet ? (AnimatorSet) tag : null;
        if (animatorSet == null) {
            return;
        }
        View findViewById = viewGroup.findViewById(R.id.hour_rank_anim);
        if (findViewById != null) {
            animatorSet.cancel();
            viewGroup.removeView(findViewById);
        }
        handler.removeCallbacksAndMessages(null);
    }
}
