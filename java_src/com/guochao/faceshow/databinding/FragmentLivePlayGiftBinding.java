package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.gift.view.HandyAnimView;
import com.guochao.faceshow.aaspring.svga.SVGAImageExtend;
/* loaded from: classes2.dex */
public final class FragmentLivePlayGiftBinding implements ViewBinding {
    @NonNull
    public final HandyAnimView handyGift;
    @NonNull
    public final SVGAImageExtend liveBigAnimView;
    @NonNull
    public final FrameLayout liveBigAnimViewVap;
    @NonNull
    public final LinearLayout liveGiftMiddleLeftTipsLy;
    @NonNull
    public final LinearLayout liveGiftTopTipsLy;
    @NonNull
    public final SVGAImageExtend liveSmallAnimView;
    @NonNull
    public final FrameLayout liveSmallAnimViewVap;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final View viewCenterNone;

    private FragmentLivePlayGiftBinding(@NonNull RelativeLayout relativeLayout, @NonNull HandyAnimView handyAnimView, @NonNull SVGAImageExtend sVGAImageExtend, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SVGAImageExtend sVGAImageExtend2, @NonNull FrameLayout frameLayout2, @NonNull View view) {
        this.rootView = relativeLayout;
        this.handyGift = handyAnimView;
        this.liveBigAnimView = sVGAImageExtend;
        this.liveBigAnimViewVap = frameLayout;
        this.liveGiftMiddleLeftTipsLy = linearLayout;
        this.liveGiftTopTipsLy = linearLayout2;
        this.liveSmallAnimView = sVGAImageExtend2;
        this.liveSmallAnimViewVap = frameLayout2;
        this.viewCenterNone = view;
    }

    @NonNull
    public static FragmentLivePlayGiftBinding bind(@NonNull View view) {
        int i9 = R.id.handy_gift;
        HandyAnimView handyAnimView = (HandyAnimView) ViewBindings.findChildViewById(view, R.id.handy_gift);
        if (handyAnimView != null) {
            i9 = R.id.live_big_anim_view;
            SVGAImageExtend sVGAImageExtend = (SVGAImageExtend) ViewBindings.findChildViewById(view, R.id.live_big_anim_view);
            if (sVGAImageExtend != null) {
                i9 = R.id.live_big_anim_view_vap;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_big_anim_view_vap);
                if (frameLayout != null) {
                    i9 = R.id.live_gift_middle_left_tips_ly;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.live_gift_middle_left_tips_ly);
                    if (linearLayout != null) {
                        i9 = R.id.live_gift_top_tips_ly;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.live_gift_top_tips_ly);
                        if (linearLayout2 != null) {
                            i9 = R.id.live_small_anim_view;
                            SVGAImageExtend sVGAImageExtend2 = (SVGAImageExtend) ViewBindings.findChildViewById(view, R.id.live_small_anim_view);
                            if (sVGAImageExtend2 != null) {
                                i9 = R.id.live_small_anim_view_vap;
                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_small_anim_view_vap);
                                if (frameLayout2 != null) {
                                    i9 = R.id.view_center_none;
                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_center_none);
                                    if (findChildViewById != null) {
                                        return new FragmentLivePlayGiftBinding((RelativeLayout) view, handyAnimView, sVGAImageExtend, frameLayout, linearLayout, linearLayout2, sVGAImageExtend2, frameLayout2, findChildViewById);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLivePlayGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLivePlayGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_play_gift, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
