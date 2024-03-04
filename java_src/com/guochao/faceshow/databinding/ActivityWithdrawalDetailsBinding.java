package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityWithdrawalDetailsBinding implements ViewBinding {
    @NonNull
    public final LinearLayout llCause;
    @NonNull
    public final LinearLayout llModeBank;
    @NonNull
    public final LinearLayout llModeUsdt;
    @NonNull
    public final LinearLayout llModeZfb;
    @NonNull
    public final LinearLayout llName;
    @NonNull
    public final RecyclerView rcvProgress;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvAccount;
    @NonNull
    public final TextView tvAccountHolder;
    @NonNull
    public final TextView tvAccountMode;
    @NonNull
    public final TextView tvAccountTip;
    @NonNull
    public final TextView tvBankAddress;
    @NonNull
    public final TextView tvBankCode;
    @NonNull
    public final TextView tvBankName;
    @NonNull
    public final TextView tvCause;
    @NonNull
    public final TextView tvDeductFb;
    @NonNull
    public final TextView tvName;
    @NonNull
    public final TextView tvUsdt;
    @NonNull
    public final TextView tvWithdrawalMoney;
    @NonNull
    public final TextView tvWithdrawalState;
    @NonNull
    public final TextView tvWithdrawalTip;

    private ActivityWithdrawalDetailsBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull TextView textView14) {
        this.rootView = linearLayout;
        this.llCause = linearLayout2;
        this.llModeBank = linearLayout3;
        this.llModeUsdt = linearLayout4;
        this.llModeZfb = linearLayout5;
        this.llName = linearLayout6;
        this.rcvProgress = recyclerView;
        this.tvAccount = textView;
        this.tvAccountHolder = textView2;
        this.tvAccountMode = textView3;
        this.tvAccountTip = textView4;
        this.tvBankAddress = textView5;
        this.tvBankCode = textView6;
        this.tvBankName = textView7;
        this.tvCause = textView8;
        this.tvDeductFb = textView9;
        this.tvName = textView10;
        this.tvUsdt = textView11;
        this.tvWithdrawalMoney = textView12;
        this.tvWithdrawalState = textView13;
        this.tvWithdrawalTip = textView14;
    }

    @NonNull
    public static ActivityWithdrawalDetailsBinding bind(@NonNull View view) {
        int i9 = R.id.ll_cause;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_cause);
        if (linearLayout != null) {
            i9 = R.id.ll_mode_bank;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_mode_bank);
            if (linearLayout2 != null) {
                i9 = R.id.ll_mode_usdt;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_mode_usdt);
                if (linearLayout3 != null) {
                    i9 = R.id.ll_mode_zfb;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_mode_zfb);
                    if (linearLayout4 != null) {
                        i9 = R.id.ll_name;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_name);
                        if (linearLayout5 != null) {
                            i9 = R.id.rcv_progress;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcv_progress);
                            if (recyclerView != null) {
                                i9 = R.id.tv_account;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_account);
                                if (textView != null) {
                                    i9 = R.id.tv_account_holder;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_account_holder);
                                    if (textView2 != null) {
                                        i9 = R.id.tv_account_mode;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_account_mode);
                                        if (textView3 != null) {
                                            i9 = R.id.tv_account_tip;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_account_tip);
                                            if (textView4 != null) {
                                                i9 = R.id.tv_bank_address;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bank_address);
                                                if (textView5 != null) {
                                                    i9 = R.id.tv_bank_code;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bank_code);
                                                    if (textView6 != null) {
                                                        i9 = R.id.tv_bank_name;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bank_name);
                                                        if (textView7 != null) {
                                                            i9 = R.id.tv_cause;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cause);
                                                            if (textView8 != null) {
                                                                i9 = R.id.tv_deduct_fb;
                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_deduct_fb);
                                                                if (textView9 != null) {
                                                                    i9 = R.id.tv_name;
                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                                    if (textView10 != null) {
                                                                        i9 = R.id.tv_usdt;
                                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_usdt);
                                                                        if (textView11 != null) {
                                                                            i9 = R.id.tv_withdrawal_money;
                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_withdrawal_money);
                                                                            if (textView12 != null) {
                                                                                i9 = R.id.tv_withdrawal_state;
                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_withdrawal_state);
                                                                                if (textView13 != null) {
                                                                                    i9 = R.id.tv_withdrawal_tip;
                                                                                    TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_withdrawal_tip);
                                                                                    if (textView14 != null) {
                                                                                        return new ActivityWithdrawalDetailsBinding((LinearLayout) view, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, recyclerView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityWithdrawalDetailsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityWithdrawalDetailsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_withdrawal_details, viewGroup, false);
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
