package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
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
public final class ActivityInviteFriendWithdrawalMoneyBinding implements ViewBinding {
    @NonNull
    public final FrameLayout amountNormal;
    @NonNull
    public final Button btnWithdrawal;
    @NonNull
    public final EditText etAliPayAccount;
    @NonNull
    public final EditText etAliPayName;
    @NonNull
    public final FrameLayout flAliPayAccount;
    @NonNull
    public final FrameLayout flAliPayName;
    @NonNull
    public final FrameLayout flSelectWithdrawalWay;
    @NonNull
    public final ImageView ivWithdrawalLogo;
    @NonNull
    public final ImageView ivWithdrawalMore;
    @NonNull
    public final LinearLayout llAliPayLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvAmount;
    @NonNull
    public final TextView tvWithdrawalWay;

    private ActivityInviteFriendWithdrawalMoneyBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull Button button, @NonNull EditText editText, @NonNull EditText editText2, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.amountNormal = frameLayout;
        this.btnWithdrawal = button;
        this.etAliPayAccount = editText;
        this.etAliPayName = editText2;
        this.flAliPayAccount = frameLayout2;
        this.flAliPayName = frameLayout3;
        this.flSelectWithdrawalWay = frameLayout4;
        this.ivWithdrawalLogo = imageView;
        this.ivWithdrawalMore = imageView2;
        this.llAliPayLayout = linearLayout2;
        this.tvAmount = textView;
        this.tvWithdrawalWay = textView2;
    }

    @NonNull
    public static ActivityInviteFriendWithdrawalMoneyBinding bind(@NonNull View view) {
        int i9 = R.id.amount_normal;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.amount_normal);
        if (frameLayout != null) {
            i9 = R.id.btnWithdrawal;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnWithdrawal);
            if (button != null) {
                i9 = R.id.et_ali_pay_account;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_ali_pay_account);
                if (editText != null) {
                    i9 = R.id.et_ali_pay_name;
                    EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_ali_pay_name);
                    if (editText2 != null) {
                        i9 = R.id.fl_ali_pay_account;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_ali_pay_account);
                        if (frameLayout2 != null) {
                            i9 = R.id.fl_ali_pay_name;
                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_ali_pay_name);
                            if (frameLayout3 != null) {
                                i9 = R.id.fl_select_withdrawal_way;
                                FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_select_withdrawal_way);
                                if (frameLayout4 != null) {
                                    i9 = R.id.iv_withdrawal_logo;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_withdrawal_logo);
                                    if (imageView != null) {
                                        i9 = R.id.iv_withdrawal_more;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_withdrawal_more);
                                        if (imageView2 != null) {
                                            i9 = R.id.ll_ali_pay_layout;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_ali_pay_layout);
                                            if (linearLayout != null) {
                                                i9 = R.id.tvAmount;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvAmount);
                                                if (textView != null) {
                                                    i9 = R.id.tv_withdrawal_way;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_withdrawal_way);
                                                    if (textView2 != null) {
                                                        return new ActivityInviteFriendWithdrawalMoneyBinding((LinearLayout) view, frameLayout, button, editText, editText2, frameLayout2, frameLayout3, frameLayout4, imageView, imageView2, linearLayout, textView, textView2);
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
    public static ActivityInviteFriendWithdrawalMoneyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityInviteFriendWithdrawalMoneyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_invite_friend_withdrawal_money, viewGroup, false);
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
