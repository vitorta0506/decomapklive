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
/* loaded from: classes2.dex */
public final class DialogFirstRechargeBinding implements ViewBinding {
    @NonNull
    public final LinearLayout contentView;
    @NonNull
    public final FrameLayout firstRechargeBags;
    @NonNull
    public final TextView firstRechargeDiamond;
    @NonNull
    public final ImageView ivClose;
    @NonNull
    public final TextView primaryTitle;
    @NonNull
    public final FrameLayout rootView;
    @NonNull
    private final FrameLayout rootView_;
    @NonNull
    public final TextView tvHour;
    @NonNull
    public final TextView tvMinute;
    @NonNull
    public final TextView tvRechargeBtn;
    @NonNull
    public final TextView tvSecond;

    private DialogFirstRechargeBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView_ = frameLayout;
        this.contentView = linearLayout;
        this.firstRechargeBags = frameLayout2;
        this.firstRechargeDiamond = textView;
        this.ivClose = imageView;
        this.primaryTitle = textView2;
        this.rootView = frameLayout3;
        this.tvHour = textView3;
        this.tvMinute = textView4;
        this.tvRechargeBtn = textView5;
        this.tvSecond = textView6;
    }

    @NonNull
    public static DialogFirstRechargeBinding bind(@NonNull View view) {
        int i9 = R.id.content_view;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_view);
        if (linearLayout != null) {
            i9 = R.id.first_recharge_bags;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.first_recharge_bags);
            if (frameLayout != null) {
                i9 = R.id.first_recharge_diamond;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.first_recharge_diamond);
                if (textView != null) {
                    i9 = R.id.iv_close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                    if (imageView != null) {
                        i9 = R.id.primary_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.primary_title);
                        if (textView2 != null) {
                            FrameLayout frameLayout2 = (FrameLayout) view;
                            i9 = R.id.tv_hour;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hour);
                            if (textView3 != null) {
                                i9 = R.id.tv_minute;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_minute);
                                if (textView4 != null) {
                                    i9 = R.id.tv_recharge_btn;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_recharge_btn);
                                    if (textView5 != null) {
                                        i9 = R.id.tv_second;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_second);
                                        if (textView6 != null) {
                                            return new DialogFirstRechargeBinding(frameLayout2, linearLayout, frameLayout, textView, imageView, textView2, frameLayout2, textView3, textView4, textView5, textView6);
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
    public static DialogFirstRechargeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogFirstRechargeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_first_recharge, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView_;
    }
}
