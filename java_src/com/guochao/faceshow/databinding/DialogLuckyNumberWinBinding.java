package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class DialogLuckyNumberWinBinding implements ViewBinding {
    @NonNull
    public final FrameLayout bgWinLayout;
    @NonNull
    public final TextView btnContinue;
    @NonNull
    public final TextView diamondCount;
    @NonNull
    public final ImageView diamondIcon;
    @NonNull
    public final TextView diamondWin;
    @NonNull
    public final TextView realNumber;
    @NonNull
    public final TextView rewardTip;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SVGAImageView svgaWin;
    @NonNull
    public final NormalCircleImageView userAvatar;
    @NonNull
    public final NormalCircleImageView userFlag;
    @NonNull
    public final TextView winName;

    private DialogLuckyNumberWinBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull SVGAImageView sVGAImageView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull NormalCircleImageView normalCircleImageView2, @NonNull TextView textView6) {
        this.rootView = frameLayout;
        this.bgWinLayout = frameLayout2;
        this.btnContinue = textView;
        this.diamondCount = textView2;
        this.diamondIcon = imageView;
        this.diamondWin = textView3;
        this.realNumber = textView4;
        this.rewardTip = textView5;
        this.svgaWin = sVGAImageView;
        this.userAvatar = normalCircleImageView;
        this.userFlag = normalCircleImageView2;
        this.winName = textView6;
    }

    @NonNull
    public static DialogLuckyNumberWinBinding bind(@NonNull View view) {
        int i9 = R.id.bg_win_layout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.bg_win_layout);
        if (frameLayout != null) {
            i9 = R.id.btn_continue;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_continue);
            if (textView != null) {
                i9 = R.id.diamond_count;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.diamond_count);
                if (textView2 != null) {
                    i9 = R.id.diamond_icon;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.diamond_icon);
                    if (imageView != null) {
                        i9 = R.id.diamond_win;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.diamond_win);
                        if (textView3 != null) {
                            i9 = R.id.real_number;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.real_number);
                            if (textView4 != null) {
                                i9 = R.id.reward_tip;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.reward_tip);
                                if (textView5 != null) {
                                    i9 = R.id.svga_win;
                                    SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.svga_win);
                                    if (sVGAImageView != null) {
                                        i9 = R.id.user_avatar;
                                        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                                        if (normalCircleImageView != null) {
                                            i9 = R.id.user_flag;
                                            NormalCircleImageView normalCircleImageView2 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.user_flag);
                                            if (normalCircleImageView2 != null) {
                                                i9 = R.id.win_name;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.win_name);
                                                if (textView6 != null) {
                                                    return new DialogLuckyNumberWinBinding((FrameLayout) view, frameLayout, textView, textView2, imageView, textView3, textView4, textView5, sVGAImageView, normalCircleImageView, normalCircleImageView2, textView6);
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
    public static DialogLuckyNumberWinBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogLuckyNumberWinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_lucky_number_win, viewGroup, false);
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
