package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
/* loaded from: classes4.dex */
public final class FragmentSigninResultBinding implements ViewBinding {
    @NonNull
    public final ImageView ivClose;
    @NonNull
    public final TextView primaryTitle;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ViewStub signinFourResultLay;
    @NonNull
    public final ViewStub signinThreeResultLay;
    @NonNull
    public final ViewStub signinTwoResultLay;
    @NonNull
    public final TextView tvIKnow;
    @NonNull
    public final TextView tvSignedTip;
    @NonNull
    public final TextView tvTitle;

    private FragmentSigninResultBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ViewStub viewStub, @NonNull ViewStub viewStub2, @NonNull ViewStub viewStub3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.ivClose = imageView;
        this.primaryTitle = textView;
        this.signinFourResultLay = viewStub;
        this.signinThreeResultLay = viewStub2;
        this.signinTwoResultLay = viewStub3;
        this.tvIKnow = textView2;
        this.tvSignedTip = textView3;
        this.tvTitle = textView4;
    }

    @NonNull
    public static FragmentSigninResultBinding bind(@NonNull View view) {
        int i9 = R$id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.primary_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.signin_four_result_lay;
                ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, i9);
                if (viewStub != null) {
                    i9 = R$id.signin_three_result_lay;
                    ViewStub viewStub2 = (ViewStub) ViewBindings.findChildViewById(view, i9);
                    if (viewStub2 != null) {
                        i9 = R$id.signin_two_result_lay;
                        ViewStub viewStub3 = (ViewStub) ViewBindings.findChildViewById(view, i9);
                        if (viewStub3 != null) {
                            i9 = R$id.tv_i_know;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                            if (textView2 != null) {
                                i9 = R$id.tv_signed_tip;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                if (textView3 != null) {
                                    i9 = R$id.tv_title;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                                    if (textView4 != null) {
                                        return new FragmentSigninResultBinding((FrameLayout) view, imageView, textView, viewStub, viewStub2, viewStub3, textView2, textView3, textView4);
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
    public static FragmentSigninResultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentSigninResultBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_signin_result, viewGroup, false);
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
