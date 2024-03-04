package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
public final class ActivityAccountSecurityNewBinding implements ViewBinding {
    @NonNull
    public final RelativeLayout flBg;
    @NonNull
    public final ImageView ivMobileMore;
    @NonNull
    public final FrameLayout ivMobileMoreLay;
    @NonNull
    public final ImageView ivMobileWaring;
    @NonNull
    public final ImageView ivMore;
    @NonNull
    public final ImageView ivTitleBg;
    @NonNull
    public final LinearLayout llTitle;
    @NonNull
    public final RelativeLayout rlChangeLoginPassword;
    @NonNull
    public final RelativeLayout rlChangePaymentPassword;
    @NonNull
    public final RelativeLayout rlEmail;
    @NonNull
    public final RelativeLayout rlPhone;
    @NonNull
    public final RelativeLayout rlRealNameAuthentication;
    @NonNull
    public final RelativeLayout rlUnregAccount;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tvAuthorizedResult;
    @NonNull
    public final TextView tvChange;
    @NonNull
    public final TextView tvEmail;
    @NonNull
    public final TextView tvLoginPwd;
    @NonNull
    public final TextView tvMobile;
    @NonNull
    public final TextView tvMobileChange;
    @NonNull
    public final TextView tvPlayPwd;
    @NonNull
    public final TextView tvRealNameAuthentication;
    @NonNull
    public final TextView tvSafetyLevel;

    private ActivityAccountSecurityNewBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull RelativeLayout relativeLayout5, @NonNull RelativeLayout relativeLayout6, @NonNull RelativeLayout relativeLayout7, @NonNull RelativeLayout relativeLayout8, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9) {
        this.rootView = relativeLayout;
        this.flBg = relativeLayout2;
        this.ivMobileMore = imageView;
        this.ivMobileMoreLay = frameLayout;
        this.ivMobileWaring = imageView2;
        this.ivMore = imageView3;
        this.ivTitleBg = imageView4;
        this.llTitle = linearLayout;
        this.rlChangeLoginPassword = relativeLayout3;
        this.rlChangePaymentPassword = relativeLayout4;
        this.rlEmail = relativeLayout5;
        this.rlPhone = relativeLayout6;
        this.rlRealNameAuthentication = relativeLayout7;
        this.rlUnregAccount = relativeLayout8;
        this.tvAuthorizedResult = textView;
        this.tvChange = textView2;
        this.tvEmail = textView3;
        this.tvLoginPwd = textView4;
        this.tvMobile = textView5;
        this.tvMobileChange = textView6;
        this.tvPlayPwd = textView7;
        this.tvRealNameAuthentication = textView8;
        this.tvSafetyLevel = textView9;
    }

    @NonNull
    public static ActivityAccountSecurityNewBinding bind(@NonNull View view) {
        int i9 = R.id.fl_bg;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.fl_bg);
        if (relativeLayout != null) {
            i9 = R.id.iv_mobile_more;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_mobile_more);
            if (imageView != null) {
                i9 = R.id.iv_mobile_more_lay;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.iv_mobile_more_lay);
                if (frameLayout != null) {
                    i9 = R.id.iv_mobile_waring;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_mobile_waring);
                    if (imageView2 != null) {
                        i9 = R.id.iv_more;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_more);
                        if (imageView3 != null) {
                            i9 = R.id.iv_title_bg;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_title_bg);
                            if (imageView4 != null) {
                                i9 = R.id.ll_title;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_title);
                                if (linearLayout != null) {
                                    i9 = R.id.rl_change_login_password;
                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_change_login_password);
                                    if (relativeLayout2 != null) {
                                        i9 = R.id.rl_change_payment_password;
                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_change_payment_password);
                                        if (relativeLayout3 != null) {
                                            i9 = R.id.rl_email;
                                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_email);
                                            if (relativeLayout4 != null) {
                                                i9 = R.id.rl_phone;
                                                RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_phone);
                                                if (relativeLayout5 != null) {
                                                    i9 = R.id.rl_real_name_authentication;
                                                    RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_real_name_authentication);
                                                    if (relativeLayout6 != null) {
                                                        i9 = R.id.rl_unreg_account;
                                                        RelativeLayout relativeLayout7 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_unreg_account);
                                                        if (relativeLayout7 != null) {
                                                            i9 = R.id.tv_authorized_result;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_authorized_result);
                                                            if (textView != null) {
                                                                i9 = R.id.tv_change;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_change);
                                                                if (textView2 != null) {
                                                                    i9 = R.id.tv_email;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_email);
                                                                    if (textView3 != null) {
                                                                        i9 = R.id.tv_login_pwd;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_login_pwd);
                                                                        if (textView4 != null) {
                                                                            i9 = R.id.tv_mobile;
                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mobile);
                                                                            if (textView5 != null) {
                                                                                i9 = R.id.tv_mobile_change;
                                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mobile_change);
                                                                                if (textView6 != null) {
                                                                                    i9 = R.id.tv_play_pwd;
                                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_play_pwd);
                                                                                    if (textView7 != null) {
                                                                                        i9 = R.id.tv_real_name_authentication;
                                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_real_name_authentication);
                                                                                        if (textView8 != null) {
                                                                                            i9 = R.id.tv_safety_level;
                                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_safety_level);
                                                                                            if (textView9 != null) {
                                                                                                return new ActivityAccountSecurityNewBinding((RelativeLayout) view, relativeLayout, imageView, frameLayout, imageView2, imageView3, imageView4, linearLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
    public static ActivityAccountSecurityNewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityAccountSecurityNewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_account_security_new, viewGroup, false);
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
