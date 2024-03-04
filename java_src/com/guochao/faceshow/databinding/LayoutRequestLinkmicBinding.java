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
import com.guochao.faceshow.aaspring.views.InterceptTouchLinearLayout;
/* loaded from: classes2.dex */
public final class LayoutRequestLinkmicBinding implements ViewBinding {
    @NonNull
    public final TextView applyLinkmicCount;
    @NonNull
    public final ImageView firstRecharge;
    @NonNull
    public final ImageView firstRechargeClose;
    @NonNull
    public final FrameLayout firstRechargeLay;
    @NonNull
    public final ImageView gameIcon;
    @NonNull
    public final TextView gameInfo;
    @NonNull
    public final TextView linkMicText;
    @NonNull
    public final InterceptTouchLinearLayout requestLinkmic;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView smallMiniGameClose;
    @NonNull
    public final LinearLayout smallMiniGameLay;
    @NonNull
    public final TextView tvRechargeDowntownTime;

    private LayoutRequestLinkmicBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull InterceptTouchLinearLayout interceptTouchLinearLayout, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.applyLinkmicCount = textView;
        this.firstRecharge = imageView;
        this.firstRechargeClose = imageView2;
        this.firstRechargeLay = frameLayout;
        this.gameIcon = imageView3;
        this.gameInfo = textView2;
        this.linkMicText = textView3;
        this.requestLinkmic = interceptTouchLinearLayout;
        this.smallMiniGameClose = imageView4;
        this.smallMiniGameLay = linearLayout2;
        this.tvRechargeDowntownTime = textView4;
    }

    @NonNull
    public static LayoutRequestLinkmicBinding bind(@NonNull View view) {
        int i9 = R.id.apply_linkmic_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.apply_linkmic_count);
        if (textView != null) {
            i9 = R.id.first_recharge;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.first_recharge);
            if (imageView != null) {
                i9 = R.id.first_recharge_close;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.first_recharge_close);
                if (imageView2 != null) {
                    i9 = R.id.first_recharge_lay;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.first_recharge_lay);
                    if (frameLayout != null) {
                        i9 = R.id.game_icon;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.game_icon);
                        if (imageView3 != null) {
                            i9 = R.id.game_info;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.game_info);
                            if (textView2 != null) {
                                i9 = R.id.link_mic_text;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.link_mic_text);
                                if (textView3 != null) {
                                    i9 = R.id.request_linkmic;
                                    InterceptTouchLinearLayout interceptTouchLinearLayout = (InterceptTouchLinearLayout) ViewBindings.findChildViewById(view, R.id.request_linkmic);
                                    if (interceptTouchLinearLayout != null) {
                                        i9 = R.id.small_mini_game_close;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.small_mini_game_close);
                                        if (imageView4 != null) {
                                            i9 = R.id.small_mini_game_lay;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.small_mini_game_lay);
                                            if (linearLayout != null) {
                                                i9 = R.id.tv_recharge_downtown_time;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_recharge_downtown_time);
                                                if (textView4 != null) {
                                                    return new LayoutRequestLinkmicBinding((LinearLayout) view, textView, imageView, imageView2, frameLayout, imageView3, textView2, textView3, interceptTouchLinearLayout, imageView4, linearLayout, textView4);
                                                }
                                            }
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
    public static LayoutRequestLinkmicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRequestLinkmicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_request_linkmic, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
