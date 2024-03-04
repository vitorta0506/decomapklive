package com.guochao.component.mvp.databinding;

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
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
/* loaded from: classes3.dex */
public final class FragmentMvpHelperBinding implements ViewBinding {
    @NonNull
    public final ImageView ivClose;
    @NonNull
    public final ImageView ivTips1;
    @NonNull
    public final ImageView ivTips2;
    @NonNull
    public final ImageView ivTips3;
    @NonNull
    public final ImageView ivTips4;
    @NonNull
    public final ImageView ivTips5;
    @NonNull
    public final ImageView ivTips50;
    @NonNull
    public final ImageView ivTips6;
    @NonNull
    public final ImageView ivTips7;
    @NonNull
    public final ImageView ivTips8;
    @NonNull
    public final ImageView ivTips9;
    @NonNull
    public final ImageView ivTips91;
    @NonNull
    public final LinearLayout llContent;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvIKnow;

    private FragmentMvpHelperBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull ImageView imageView8, @NonNull ImageView imageView9, @NonNull ImageView imageView10, @NonNull ImageView imageView11, @NonNull ImageView imageView12, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.ivClose = imageView;
        this.ivTips1 = imageView2;
        this.ivTips2 = imageView3;
        this.ivTips3 = imageView4;
        this.ivTips4 = imageView5;
        this.ivTips5 = imageView6;
        this.ivTips50 = imageView7;
        this.ivTips6 = imageView8;
        this.ivTips7 = imageView9;
        this.ivTips8 = imageView10;
        this.ivTips9 = imageView11;
        this.ivTips91 = imageView12;
        this.llContent = linearLayout;
        this.tvIKnow = textView;
    }

    @NonNull
    public static FragmentMvpHelperBinding bind(@NonNull View view) {
        int i9 = R$id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.iv_tips1;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView2 != null) {
                i9 = R$id.iv_tips2;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView3 != null) {
                    i9 = R$id.iv_tips3;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i9);
                    if (imageView4 != null) {
                        i9 = R$id.iv_tips4;
                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i9);
                        if (imageView5 != null) {
                            i9 = R$id.iv_tips5;
                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, i9);
                            if (imageView6 != null) {
                                i9 = R$id.iv_tips5_0;
                                ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                if (imageView7 != null) {
                                    i9 = R$id.iv_tips6;
                                    ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                    if (imageView8 != null) {
                                        i9 = R$id.iv_tips7;
                                        ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                        if (imageView9 != null) {
                                            i9 = R$id.iv_tips8;
                                            ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                            if (imageView10 != null) {
                                                i9 = R$id.iv_tips9;
                                                ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                                if (imageView11 != null) {
                                                    i9 = R$id.iv_tips9_1;
                                                    ImageView imageView12 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                                    if (imageView12 != null) {
                                                        i9 = R$id.ll_content;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                                        if (linearLayout != null) {
                                                            i9 = R$id.tv_i_know;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                                                            if (textView != null) {
                                                                return new FragmentMvpHelperBinding((FrameLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11, imageView12, linearLayout, textView);
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
    public static FragmentMvpHelperBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentMvpHelperBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_mvp_helper, viewGroup, false);
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
