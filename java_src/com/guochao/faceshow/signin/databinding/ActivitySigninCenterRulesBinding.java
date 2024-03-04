package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
/* loaded from: classes4.dex */
public final class ActivitySigninCenterRulesBinding implements ViewBinding {
    @NonNull
    public final ImageView ivLeftBack;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView rulesContent2;
    @NonNull
    public final TextView rulesContent3;
    @NonNull
    public final TextView rulesTitle2;
    @NonNull
    public final TextView rulesTitle3;
    @NonNull
    public final Space statusBarSpace;
    @NonNull
    public final FrameLayout titleBar;
    @NonNull
    public final TextView tvTitle;

    private ActivitySigninCenterRulesBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull Space space, @NonNull FrameLayout frameLayout, @NonNull TextView textView5) {
        this.rootView = linearLayout;
        this.ivLeftBack = imageView;
        this.rulesContent2 = textView;
        this.rulesContent3 = textView2;
        this.rulesTitle2 = textView3;
        this.rulesTitle3 = textView4;
        this.statusBarSpace = space;
        this.titleBar = frameLayout;
        this.tvTitle = textView5;
    }

    @NonNull
    public static ActivitySigninCenterRulesBinding bind(@NonNull View view) {
        int i9 = R$id.iv_left_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.rules_content2;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.rules_content3;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView2 != null) {
                    i9 = R$id.rules_title2;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView3 != null) {
                        i9 = R$id.rules_title3;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView4 != null) {
                            i9 = R$id.status_bar_space;
                            Space space = (Space) ViewBindings.findChildViewById(view, i9);
                            if (space != null) {
                                i9 = R$id.title_bar;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                                if (frameLayout != null) {
                                    i9 = R$id.tv_title;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i9);
                                    if (textView5 != null) {
                                        return new ActivitySigninCenterRulesBinding((LinearLayout) view, imageView, textView, textView2, textView3, textView4, space, frameLayout, textView5);
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
    public static ActivitySigninCenterRulesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySigninCenterRulesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.activity_signin_center_rules, viewGroup, false);
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
