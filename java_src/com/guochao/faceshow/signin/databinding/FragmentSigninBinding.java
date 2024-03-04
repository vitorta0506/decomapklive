package com.guochao.faceshow.signin.databinding;

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
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
/* loaded from: classes4.dex */
public final class FragmentSigninBinding implements ViewBinding {
    @NonNull
    public final TextView ignoreDialog;
    @NonNull
    public final ImageView ivClose;
    @NonNull
    public final ImageView ivTitle;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LayoutSigninContentBinding signinContentLay;
    @NonNull
    public final TextView startSignin;
    @NonNull
    public final TextView tvSignedTip;
    @NonNull
    public final TextView tvTitle;

    private FragmentSigninBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LayoutSigninContentBinding layoutSigninContentBinding, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.ignoreDialog = textView;
        this.ivClose = imageView;
        this.ivTitle = imageView2;
        this.signinContentLay = layoutSigninContentBinding;
        this.startSignin = textView2;
        this.tvSignedTip = textView3;
        this.tvTitle = textView4;
    }

    @NonNull
    public static FragmentSigninBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.ignore_dialog;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.iv_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.iv_title;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.signin_content_lay))) != null) {
                    LayoutSigninContentBinding bind = LayoutSigninContentBinding.bind(findChildViewById);
                    i9 = R$id.start_signin;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView2 != null) {
                        i9 = R$id.tv_signed_tip;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView3 != null) {
                            i9 = R$id.tv_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                            if (textView4 != null) {
                                return new FragmentSigninBinding((FrameLayout) view, textView, imageView, imageView2, bind, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentSigninBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentSigninBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_signin, viewGroup, false);
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
