package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityWithdrawalNewBinding implements ViewBinding {
    @NonNull
    public final FrameLayout amountNormal;
    @NonNull
    public final TextView btnWithdrawal;
    @NonNull
    public final EditText etAliPayAccount;
    @NonNull
    public final EditText etAliPayName;
    @NonNull
    public final EditText etBankCardAccount;
    @NonNull
    public final EditText etBankCardAccountHolder;
    @NonNull
    public final EditText etBankCardAddress;
    @NonNull
    public final EditText etPayPalAccount;
    @NonNull
    public final EditText etPayPalName;
    @NonNull
    public final EditText etPayoneerAccount;
    @NonNull
    public final TextView etPayoneerId;
    @NonNull
    public final FrameLayout flAliPayAccount;
    @NonNull
    public final FrameLayout flAliPayName;
    @NonNull
    public final FrameLayout flBankCard;
    @NonNull
    public final FrameLayout flBankCardAccountHolder;
    @NonNull
    public final FrameLayout flBankCardAddress;
    @NonNull
    public final FrameLayout flPayoneer;
    @NonNull
    public final LinearLayout flRegion;
    @NonNull
    public final FrameLayout flSelectWithdrawalWay;
    @NonNull
    public final ImageView ivArrowRight;
    @NonNull
    public final ImageView ivPayoneerMore;
    @NonNull
    public final ImageView ivWithdrawalLogo;
    @NonNull
    public final ImageView ivWithdrawalMore;
    @NonNull
    public final LinearLayout llAliPayLayout;
    @NonNull
    public final LinearLayout llBankCardLayout;
    @NonNull
    public final LinearLayout llPayPalLayout;
    @NonNull
    public final LinearLayout llPayoneerLayout;
    @NonNull
    public final LinearLayout llPayoneerSelect;
    @NonNull
    public final LinearLayout llPayoneerv2Layout;
    @NonNull
    public final RelativeLayout rlBankNameLayout;
    @NonNull
    private final View rootView;
    @NonNull
    public final TextView tvAddPayoneer;
    @NonNull
    public final TextView tvAmount;
    @NonNull
    public final TextView tvBankName;
    @NonNull
    public final TextView tvPayoneerTip;
    @NonNull
    public final TextView tvRegion;
    @NonNull
    public final TextView tvRegionName;
    @NonNull
    public final TextView tvWithdrawalWay;
    @NonNull
    public final ViewStub usdtArea;
    @NonNull
    public final ViewStub usdtTipsArea;

    private ActivityWithdrawalNewBinding(@NonNull View view, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull EditText editText3, @NonNull EditText editText4, @NonNull EditText editText5, @NonNull EditText editText6, @NonNull EditText editText7, @NonNull EditText editText8, @NonNull TextView textView2, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6, @NonNull FrameLayout frameLayout7, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout8, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull ViewStub viewStub, @NonNull ViewStub viewStub2) {
        this.rootView = view;
        this.amountNormal = frameLayout;
        this.btnWithdrawal = textView;
        this.etAliPayAccount = editText;
        this.etAliPayName = editText2;
        this.etBankCardAccount = editText3;
        this.etBankCardAccountHolder = editText4;
        this.etBankCardAddress = editText5;
        this.etPayPalAccount = editText6;
        this.etPayPalName = editText7;
        this.etPayoneerAccount = editText8;
        this.etPayoneerId = textView2;
        this.flAliPayAccount = frameLayout2;
        this.flAliPayName = frameLayout3;
        this.flBankCard = frameLayout4;
        this.flBankCardAccountHolder = frameLayout5;
        this.flBankCardAddress = frameLayout6;
        this.flPayoneer = frameLayout7;
        this.flRegion = linearLayout;
        this.flSelectWithdrawalWay = frameLayout8;
        this.ivArrowRight = imageView;
        this.ivPayoneerMore = imageView2;
        this.ivWithdrawalLogo = imageView3;
        this.ivWithdrawalMore = imageView4;
        this.llAliPayLayout = linearLayout2;
        this.llBankCardLayout = linearLayout3;
        this.llPayPalLayout = linearLayout4;
        this.llPayoneerLayout = linearLayout5;
        this.llPayoneerSelect = linearLayout6;
        this.llPayoneerv2Layout = linearLayout7;
        this.rlBankNameLayout = relativeLayout;
        this.tvAddPayoneer = textView3;
        this.tvAmount = textView4;
        this.tvBankName = textView5;
        this.tvPayoneerTip = textView6;
        this.tvRegion = textView7;
        this.tvRegionName = textView8;
        this.tvWithdrawalWay = textView9;
        this.usdtArea = viewStub;
        this.usdtTipsArea = viewStub2;
    }

    @NonNull
    public static ActivityWithdrawalNewBinding bind(@NonNull View view) {
        int i9 = R.id.amount_normal;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.amount_normal);
        if (frameLayout != null) {
            i9 = R.id.btnWithdrawal;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnWithdrawal);
            if (textView != null) {
                i9 = R.id.et_ali_pay_account;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_ali_pay_account);
                if (editText != null) {
                    i9 = R.id.et_ali_pay_name;
                    EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_ali_pay_name);
                    if (editText2 != null) {
                        i9 = R.id.et_bank_card_account;
                        EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.et_bank_card_account);
                        if (editText3 != null) {
                            i9 = R.id.et_bank_card_account_holder;
                            EditText editText4 = (EditText) ViewBindings.findChildViewById(view, R.id.et_bank_card_account_holder);
                            if (editText4 != null) {
                                i9 = R.id.et_bank_card_address;
                                EditText editText5 = (EditText) ViewBindings.findChildViewById(view, R.id.et_bank_card_address);
                                if (editText5 != null) {
                                    i9 = R.id.et_pay_pal_account;
                                    EditText editText6 = (EditText) ViewBindings.findChildViewById(view, R.id.et_pay_pal_account);
                                    if (editText6 != null) {
                                        i9 = R.id.et_pay_pal_name;
                                        EditText editText7 = (EditText) ViewBindings.findChildViewById(view, R.id.et_pay_pal_name);
                                        if (editText7 != null) {
                                            i9 = R.id.et_payoneer_account;
                                            EditText editText8 = (EditText) ViewBindings.findChildViewById(view, R.id.et_payoneer_account);
                                            if (editText8 != null) {
                                                i9 = R.id.et_payoneer_id;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.et_payoneer_id);
                                                if (textView2 != null) {
                                                    i9 = R.id.fl_ali_pay_account;
                                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_ali_pay_account);
                                                    if (frameLayout2 != null) {
                                                        i9 = R.id.fl_ali_pay_name;
                                                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_ali_pay_name);
                                                        if (frameLayout3 != null) {
                                                            i9 = R.id.fl_bank_card;
                                                            FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_bank_card);
                                                            if (frameLayout4 != null) {
                                                                i9 = R.id.fl_bank_card_account_holder;
                                                                FrameLayout frameLayout5 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_bank_card_account_holder);
                                                                if (frameLayout5 != null) {
                                                                    i9 = R.id.fl_bank_card_address;
                                                                    FrameLayout frameLayout6 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_bank_card_address);
                                                                    if (frameLayout6 != null) {
                                                                        i9 = R.id.fl_payoneer;
                                                                        FrameLayout frameLayout7 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_payoneer);
                                                                        if (frameLayout7 != null) {
                                                                            i9 = R.id.fl_region;
                                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.fl_region);
                                                                            if (linearLayout != null) {
                                                                                i9 = R.id.fl_select_withdrawal_way;
                                                                                FrameLayout frameLayout8 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_select_withdrawal_way);
                                                                                if (frameLayout8 != null) {
                                                                                    i9 = R.id.ivArrowRight;
                                                                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivArrowRight);
                                                                                    if (imageView != null) {
                                                                                        i9 = R.id.iv_payoneer_more;
                                                                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_payoneer_more);
                                                                                        if (imageView2 != null) {
                                                                                            i9 = R.id.iv_withdrawal_logo;
                                                                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_withdrawal_logo);
                                                                                            if (imageView3 != null) {
                                                                                                i9 = R.id.iv_withdrawal_more;
                                                                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_withdrawal_more);
                                                                                                if (imageView4 != null) {
                                                                                                    i9 = R.id.ll_ali_pay_layout;
                                                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_ali_pay_layout);
                                                                                                    if (linearLayout2 != null) {
                                                                                                        i9 = R.id.ll_bank_card_layout;
                                                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_bank_card_layout);
                                                                                                        if (linearLayout3 != null) {
                                                                                                            i9 = R.id.ll_pay_pal_layout;
                                                                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_pay_pal_layout);
                                                                                                            if (linearLayout4 != null) {
                                                                                                                i9 = R.id.ll_payoneer_layout;
                                                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_payoneer_layout);
                                                                                                                if (linearLayout5 != null) {
                                                                                                                    i9 = R.id.ll_payoneer_select;
                                                                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_payoneer_select);
                                                                                                                    if (linearLayout6 != null) {
                                                                                                                        i9 = R.id.ll_payoneerv2_layout;
                                                                                                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_payoneerv2_layout);
                                                                                                                        if (linearLayout7 != null) {
                                                                                                                            i9 = R.id.rlBankNameLayout;
                                                                                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlBankNameLayout);
                                                                                                                            if (relativeLayout != null) {
                                                                                                                                i9 = R.id.tv_add_payoneer;
                                                                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_add_payoneer);
                                                                                                                                if (textView3 != null) {
                                                                                                                                    i9 = R.id.tvAmount;
                                                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvAmount);
                                                                                                                                    if (textView4 != null) {
                                                                                                                                        i9 = R.id.tvBankName;
                                                                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvBankName);
                                                                                                                                        if (textView5 != null) {
                                                                                                                                            i9 = R.id.tv_payoneer_tip;
                                                                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_payoneer_tip);
                                                                                                                                            if (textView6 != null) {
                                                                                                                                                i9 = R.id.tv_region;
                                                                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_region);
                                                                                                                                                if (textView7 != null) {
                                                                                                                                                    i9 = R.id.tv_region_name;
                                                                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_region_name);
                                                                                                                                                    if (textView8 != null) {
                                                                                                                                                        i9 = R.id.tv_withdrawal_way;
                                                                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_withdrawal_way);
                                                                                                                                                        if (textView9 != null) {
                                                                                                                                                            i9 = R.id.usdt_area;
                                                                                                                                                            ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.usdt_area);
                                                                                                                                                            if (viewStub != null) {
                                                                                                                                                                i9 = R.id.usdt_tips_area;
                                                                                                                                                                ViewStub viewStub2 = (ViewStub) ViewBindings.findChildViewById(view, R.id.usdt_tips_area);
                                                                                                                                                                if (viewStub2 != null) {
                                                                                                                                                                    return new ActivityWithdrawalNewBinding(view, frameLayout, textView, editText, editText2, editText3, editText4, editText5, editText6, editText7, editText8, textView2, frameLayout2, frameLayout3, frameLayout4, frameLayout5, frameLayout6, frameLayout7, linearLayout, frameLayout8, imageView, imageView2, imageView3, imageView4, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, relativeLayout, textView3, textView4, textView5, textView6, textView7, textView8, textView9, viewStub, viewStub2);
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
    public static ActivityWithdrawalNewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.activity_withdrawal_new, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
