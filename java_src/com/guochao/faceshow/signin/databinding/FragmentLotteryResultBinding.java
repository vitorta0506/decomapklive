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
public final class FragmentLotteryResultBinding implements ViewBinding {
    @NonNull
    public final ImageView bgSigninContent;
    @NonNull
    public final View bgView;
    @NonNull
    public final LayoutLotteryResultContentBinding lotteryContent;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvIKnow;

    private FragmentLotteryResultBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull LayoutLotteryResultContentBinding layoutLotteryResultContentBinding, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.bgSigninContent = imageView;
        this.bgView = view;
        this.lotteryContent = layoutLotteryResultContentBinding;
        this.tvIKnow = textView;
    }

    @NonNull
    public static FragmentLotteryResultBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        int i9 = R$id.bg_signin_content;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.bg_view))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i9 = R$id.lottery_content))) != null) {
            LayoutLotteryResultContentBinding bind = LayoutLotteryResultContentBinding.bind(findChildViewById2);
            i9 = R$id.tv_i_know;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                return new FragmentLotteryResultBinding((FrameLayout) view, imageView, findChildViewById, bind, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLotteryResultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLotteryResultBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_lottery_result, viewGroup, false);
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
