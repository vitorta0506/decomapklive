package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class DialogLiveTranslateBinding implements ViewBinding {
    @NonNull
    public final ImageView atPerson;
    @NonNull
    public final View bgView;
    @NonNull
    public final TextView btnConfirm;
    @NonNull
    public final ImageView ivClose;
    @NonNull
    public final LinearLayout llGuide;
    @NonNull
    public final LinearLayout llTip;
    @NonNull
    public final RelativeLayout rlContent;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LinearLayout someoneTranslateLay;
    @NonNull
    public final SVGAImageView svg;
    @NonNull
    public final ImageView translateBtn;
    @NonNull
    public final ImageView translateLoading;
    @NonNull
    public final TextView tvContent;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final TextView tvTip;

    private DialogLiveTranslateBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout3, @NonNull SVGAImageView sVGAImageView, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.atPerson = imageView;
        this.bgView = view;
        this.btnConfirm = textView;
        this.ivClose = imageView2;
        this.llGuide = linearLayout;
        this.llTip = linearLayout2;
        this.rlContent = relativeLayout;
        this.someoneTranslateLay = linearLayout3;
        this.svg = sVGAImageView;
        this.translateBtn = imageView3;
        this.translateLoading = imageView4;
        this.tvContent = textView2;
        this.tvNickName = textView3;
        this.tvTip = textView4;
    }

    @NonNull
    public static DialogLiveTranslateBinding bind(@NonNull View view) {
        int i9 = R.id.at_person;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.at_person);
        if (imageView != null) {
            i9 = R.id.bg_view;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
            if (findChildViewById != null) {
                i9 = R.id.btn_confirm;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_confirm);
                if (textView != null) {
                    i9 = R.id.iv_close;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                    if (imageView2 != null) {
                        i9 = R.id.ll_guide;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_guide);
                        if (linearLayout != null) {
                            i9 = R.id.ll_tip;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_tip);
                            if (linearLayout2 != null) {
                                i9 = R.id.rl_content;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_content);
                                if (relativeLayout != null) {
                                    i9 = R.id.someone_translate_lay;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.someone_translate_lay);
                                    if (linearLayout3 != null) {
                                        i9 = R.id.svg;
                                        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.svg);
                                        if (sVGAImageView != null) {
                                            i9 = R.id.translate_btn;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.translate_btn);
                                            if (imageView3 != null) {
                                                i9 = R.id.translate_loading;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.translate_loading);
                                                if (imageView4 != null) {
                                                    i9 = R.id.tv_content;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
                                                    if (textView2 != null) {
                                                        i9 = R.id.tv_nick_name;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nick_name);
                                                        if (textView3 != null) {
                                                            i9 = R.id.tv_tip;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tip);
                                                            if (textView4 != null) {
                                                                return new DialogLiveTranslateBinding((FrameLayout) view, imageView, findChildViewById, textView, imageView2, linearLayout, linearLayout2, relativeLayout, linearLayout3, sVGAImageView, imageView3, imageView4, textView2, textView3, textView4);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogLiveTranslateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogLiveTranslateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_live_translate, viewGroup, false);
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
