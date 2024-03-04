package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityWithdrawalBinding implements ViewBinding {
    @NonNull
    public final TextView btnWithdrawal;
    @NonNull
    public final EditText enterPayName;
    @NonNull
    public final EditText etAccount;
    @NonNull
    public final EditText etAccountHolder;
    @NonNull
    public final EditText etBankAddress;
    @NonNull
    public final EditText etBankCardNo;
    @NonNull
    public final LinearLayout flRegion;
    @NonNull
    public final ImageView ivArrowRight;
    @NonNull
    public final RelativeLayout rlBankNameLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvAmount;
    @NonNull
    public final TextView tvBankName;
    @NonNull
    public final TextView tvRegion;
    @NonNull
    public final TextView tvRegionName;
    @NonNull
    public final TextView tvSelectAccount;
    @NonNull
    public final TextView tvSymbol;

    private ActivityWithdrawalBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull EditText editText3, @NonNull EditText editText4, @NonNull EditText editText5, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.rootView = linearLayout;
        this.btnWithdrawal = textView;
        this.enterPayName = editText;
        this.etAccount = editText2;
        this.etAccountHolder = editText3;
        this.etBankAddress = editText4;
        this.etBankCardNo = editText5;
        this.flRegion = linearLayout2;
        this.ivArrowRight = imageView;
        this.rlBankNameLayout = relativeLayout;
        this.tvAmount = textView2;
        this.tvBankName = textView3;
        this.tvRegion = textView4;
        this.tvRegionName = textView5;
        this.tvSelectAccount = textView6;
        this.tvSymbol = textView7;
    }

    @NonNull
    public static ActivityWithdrawalBinding bind(@NonNull View view) {
        int i9 = R.id.btnWithdrawal;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnWithdrawal);
        if (textView != null) {
            i9 = R.id.enter_pay_name;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.enter_pay_name);
            if (editText != null) {
                i9 = R.id.etAccount;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.etAccount);
                if (editText2 != null) {
                    i9 = R.id.etAccountHolder;
                    EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.etAccountHolder);
                    if (editText3 != null) {
                        i9 = R.id.etBankAddress;
                        EditText editText4 = (EditText) ViewBindings.findChildViewById(view, R.id.etBankAddress);
                        if (editText4 != null) {
                            i9 = R.id.etBankCardNo;
                            EditText editText5 = (EditText) ViewBindings.findChildViewById(view, R.id.etBankCardNo);
                            if (editText5 != null) {
                                i9 = R.id.fl_region;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.fl_region);
                                if (linearLayout != null) {
                                    i9 = R.id.ivArrowRight;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivArrowRight);
                                    if (imageView != null) {
                                        i9 = R.id.rlBankNameLayout;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlBankNameLayout);
                                        if (relativeLayout != null) {
                                            i9 = R.id.tvAmount;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvAmount);
                                            if (textView2 != null) {
                                                i9 = R.id.tvBankName;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvBankName);
                                                if (textView3 != null) {
                                                    i9 = R.id.tv_region;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_region);
                                                    if (textView4 != null) {
                                                        i9 = R.id.tv_region_name;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_region_name);
                                                        if (textView5 != null) {
                                                            i9 = R.id.tvSelectAccount;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tvSelectAccount);
                                                            if (textView6 != null) {
                                                                i9 = R.id.tvSymbol;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tvSymbol);
                                                                if (textView7 != null) {
                                                                    return new ActivityWithdrawalBinding((LinearLayout) view, textView, editText, editText2, editText3, editText4, editText5, linearLayout, imageView, relativeLayout, textView2, textView3, textView4, textView5, textView6, textView7);
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
    public static ActivityWithdrawalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityWithdrawalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_withdrawal, viewGroup, false);
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
