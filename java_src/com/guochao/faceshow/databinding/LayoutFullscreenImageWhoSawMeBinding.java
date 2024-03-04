package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class LayoutFullscreenImageWhoSawMeBinding implements ViewBinding {
    @NonNull
    public final LinearLayout actionArea;
    @NonNull
    public final FullScreenScrollToExitViewV2 content;
    @NonNull
    public final FrameLayout conversation;
    @NonNull
    public final ImageView focus;
    @NonNull
    public final FrameLayout fullScreenView;
    @NonNull
    public final HeadPortraitView headImg;
    @NonNull
    public final TextView indicator;
    @NonNull
    public final TextView nickname;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LinearLayout userLay;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private LayoutFullscreenImageWhoSawMeBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout3, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = frameLayout;
        this.actionArea = linearLayout;
        this.content = fullScreenScrollToExitViewV2;
        this.conversation = frameLayout2;
        this.focus = imageView;
        this.fullScreenView = frameLayout3;
        this.headImg = headPortraitView;
        this.indicator = textView;
        this.nickname = textView2;
        this.userLay = linearLayout2;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static LayoutFullscreenImageWhoSawMeBinding bind(@NonNull View view) {
        int i9 = R.id.action_area;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.action_area);
        if (linearLayout != null) {
            i9 = R.id.content;
            FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2 = (FullScreenScrollToExitViewV2) ViewBindings.findChildViewById(view, R.id.content);
            if (fullScreenScrollToExitViewV2 != null) {
                i9 = R.id.conversation;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.conversation);
                if (frameLayout != null) {
                    i9 = R.id.focus;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.focus);
                    if (imageView != null) {
                        FrameLayout frameLayout2 = (FrameLayout) view;
                        i9 = R.id.head_img;
                        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head_img);
                        if (headPortraitView != null) {
                            i9 = R.id.indicator;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.indicator);
                            if (textView != null) {
                                i9 = R.id.nickname;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
                                if (textView2 != null) {
                                    i9 = R.id.user_lay;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_lay);
                                    if (linearLayout2 != null) {
                                        i9 = R.id.vip_indicator;
                                        VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                                        if (vipIndicatorView != null) {
                                            return new LayoutFullscreenImageWhoSawMeBinding(frameLayout2, linearLayout, fullScreenScrollToExitViewV2, frameLayout, imageView, frameLayout2, headPortraitView, textView, textView2, linearLayout2, vipIndicatorView);
                                        }
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
    public static LayoutFullscreenImageWhoSawMeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFullscreenImageWhoSawMeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_fullscreen_image_who_saw_me, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
