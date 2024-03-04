package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityWithdrawalMoneyNewBinding implements ViewBinding {
    @NonNull
    public final TextView floatTitle;
    @NonNull
    public final FrameLayout floatTitleBack;
    @NonNull
    public final ImageView ivTitleBar;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView title;
    @NonNull
    public final Toolbar toolbar;

    private ActivityWithdrawalMoneyNewBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull Toolbar toolbar) {
        this.rootView = relativeLayout;
        this.floatTitle = textView;
        this.floatTitleBack = frameLayout;
        this.ivTitleBar = imageView;
        this.title = textView2;
        this.toolbar = toolbar;
    }

    @NonNull
    public static ActivityWithdrawalMoneyNewBinding bind(@NonNull View view) {
        int i9 = R.id.float_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.float_title);
        if (textView != null) {
            i9 = R.id.float_title_back;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.float_title_back);
            if (frameLayout != null) {
                i9 = R.id.iv_title_bar;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_title_bar);
                if (imageView != null) {
                    i9 = 16908310;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, 16908310);
                    if (textView2 != null) {
                        i9 = R.id.toolbar;
                        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                        if (toolbar != null) {
                            return new ActivityWithdrawalMoneyNewBinding((RelativeLayout) view, textView, frameLayout, imageView, textView2, toolbar);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityWithdrawalMoneyNewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityWithdrawalMoneyNewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_withdrawal_money_new, viewGroup, false);
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
