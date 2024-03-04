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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.StatusBarPlaceHolderView;
/* loaded from: classes2.dex */
public final class ActivityH5WithdrawalMoneyBinding implements ViewBinding {
    @NonNull
    public final TextView dollar;
    @NonNull
    public final FrameLayout flBlack;
    @NonNull
    public final TextView floatTitle;
    @NonNull
    public final ImageView ivBack;
    @NonNull
    public final ImageView ivRight;
    @NonNull
    public final LinearLayout llTitle;
    @NonNull
    public final LinearLayout llTitleBar;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final StatusBarPlaceHolderView statusView;
    @NonNull
    public final TextView tvCanBalance;
    @NonNull
    public final TextView tvTotalBalance;
    @NonNull
    public final TextView usableDollar;

    private ActivityH5WithdrawalMoneyBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull RecyclerView recyclerView, @NonNull StatusBarPlaceHolderView statusBarPlaceHolderView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = linearLayout;
        this.dollar = textView;
        this.flBlack = frameLayout;
        this.floatTitle = textView2;
        this.ivBack = imageView;
        this.ivRight = imageView2;
        this.llTitle = linearLayout2;
        this.llTitleBar = linearLayout3;
        this.recyclerView = recyclerView;
        this.statusView = statusBarPlaceHolderView;
        this.tvCanBalance = textView3;
        this.tvTotalBalance = textView4;
        this.usableDollar = textView5;
    }

    @NonNull
    public static ActivityH5WithdrawalMoneyBinding bind(@NonNull View view) {
        int i9 = R.id.dollar;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dollar);
        if (textView != null) {
            i9 = R.id.fl_black;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_black);
            if (frameLayout != null) {
                i9 = R.id.float_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.float_title);
                if (textView2 != null) {
                    i9 = R.id.iv_back;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_back);
                    if (imageView != null) {
                        i9 = R.id.iv_right;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_right);
                        if (imageView2 != null) {
                            i9 = R.id.ll_title;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_title);
                            if (linearLayout != null) {
                                i9 = R.id.ll_title_bar;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_title_bar);
                                if (linearLayout2 != null) {
                                    i9 = R.id.recycler_view;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                                    if (recyclerView != null) {
                                        i9 = R.id.status_view;
                                        StatusBarPlaceHolderView statusBarPlaceHolderView = (StatusBarPlaceHolderView) ViewBindings.findChildViewById(view, R.id.status_view);
                                        if (statusBarPlaceHolderView != null) {
                                            i9 = R.id.tv_can_balance;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_can_balance);
                                            if (textView3 != null) {
                                                i9 = R.id.tv_total_balance;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_total_balance);
                                                if (textView4 != null) {
                                                    i9 = R.id.usable_dollar;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.usable_dollar);
                                                    if (textView5 != null) {
                                                        return new ActivityH5WithdrawalMoneyBinding((LinearLayout) view, textView, frameLayout, textView2, imageView, imageView2, linearLayout, linearLayout2, recyclerView, statusBarPlaceHolderView, textView3, textView4, textView5);
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
    public static ActivityH5WithdrawalMoneyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityH5WithdrawalMoneyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_h5_withdrawal_money, viewGroup, false);
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
