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
import com.guochao.faceshow.views.ObservableScrollView;
/* loaded from: classes2.dex */
public final class FragmentWithdrawalBinding implements ViewBinding {
    @NonNull
    public final TextView btnDiamond;
    @NonNull
    public final TextView btnMoney;
    @NonNull
    public final ImageView ivFHelp;
    @NonNull
    public final ImageView ivFreezeBalance;
    @NonNull
    public final ImageView ivTitleBar;
    @NonNull
    public final LinearLayout llBottom;
    @NonNull
    public final LinearLayout llFreeze;
    @NonNull
    public final LinearLayout llFreezeLayout;
    @NonNull
    public final LinearLayout llFreezeTip;
    @NonNull
    public final ObservableScrollView obScrollview;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvAvailableBalance;
    @NonNull
    public final TextView tvFCount1;
    @NonNull
    public final TextView tvFreezeBalance;
    @NonNull
    public final TextView tvFreezeJia;
    @NonNull
    public final TextView tvFreezeTip;
    @NonNull
    public final TextView tvIntro;
    @NonNull
    public final TextView tvWithdrawalOf;

    private FragmentWithdrawalBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull ObservableScrollView observableScrollView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9) {
        this.rootView = frameLayout;
        this.btnDiamond = textView;
        this.btnMoney = textView2;
        this.ivFHelp = imageView;
        this.ivFreezeBalance = imageView2;
        this.ivTitleBar = imageView3;
        this.llBottom = linearLayout;
        this.llFreeze = linearLayout2;
        this.llFreezeLayout = linearLayout3;
        this.llFreezeTip = linearLayout4;
        this.obScrollview = observableScrollView;
        this.tvAvailableBalance = textView3;
        this.tvFCount1 = textView4;
        this.tvFreezeBalance = textView5;
        this.tvFreezeJia = textView6;
        this.tvFreezeTip = textView7;
        this.tvIntro = textView8;
        this.tvWithdrawalOf = textView9;
    }

    @NonNull
    public static FragmentWithdrawalBinding bind(@NonNull View view) {
        int i9 = R.id.btnDiamond;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnDiamond);
        if (textView != null) {
            i9 = R.id.btnMoney;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btnMoney);
            if (textView2 != null) {
                i9 = R.id.iv_f_help;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_f_help);
                if (imageView != null) {
                    i9 = R.id.iv_freeze_balance;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_freeze_balance);
                    if (imageView2 != null) {
                        i9 = R.id.iv_title_bar;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_title_bar);
                        if (imageView3 != null) {
                            i9 = R.id.ll_bottom;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_bottom);
                            if (linearLayout != null) {
                                i9 = R.id.ll_freeze;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_freeze);
                                if (linearLayout2 != null) {
                                    i9 = R.id.ll_freeze_layout;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_freeze_layout);
                                    if (linearLayout3 != null) {
                                        i9 = R.id.ll_freeze_tip;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_freeze_tip);
                                        if (linearLayout4 != null) {
                                            i9 = R.id.ob_scrollview;
                                            ObservableScrollView observableScrollView = (ObservableScrollView) ViewBindings.findChildViewById(view, R.id.ob_scrollview);
                                            if (observableScrollView != null) {
                                                i9 = R.id.tv_available_balance;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_available_balance);
                                                if (textView3 != null) {
                                                    i9 = R.id.tv_f_count1;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_f_count1);
                                                    if (textView4 != null) {
                                                        i9 = R.id.tv_freeze_balance;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_freeze_balance);
                                                        if (textView5 != null) {
                                                            i9 = R.id.tv_freeze_jia;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_freeze_jia);
                                                            if (textView6 != null) {
                                                                i9 = R.id.tv_freeze_tip;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_freeze_tip);
                                                                if (textView7 != null) {
                                                                    i9 = R.id.tv_intro;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_intro);
                                                                    if (textView8 != null) {
                                                                        i9 = R.id.tv_withdrawal_of;
                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_withdrawal_of);
                                                                        if (textView9 != null) {
                                                                            return new FragmentWithdrawalBinding((FrameLayout) view, textView, textView2, imageView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, observableScrollView, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentWithdrawalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentWithdrawalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_withdrawal, viewGroup, false);
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
