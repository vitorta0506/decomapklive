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
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityInviteUserBinding implements ViewBinding {
    @NonNull
    public final ConstraintLayout adsLl;
    @NonNull
    public final TextView adsTv;
    @NonNull
    public final View bg1;
    @NonNull
    public final TextView btnInviteUser;
    @NonNull
    public final TextView earnMoneyTip;
    @NonNull
    public final TextView floatTitle;
    @NonNull
    public final FrameLayout floatTitleBack;
    @NonNull
    public final ConstraintLayout inviteLl;
    @NonNull
    public final TextView inviteMoney;
    @NonNull
    public final TextView inviteMoneyContent;
    @NonNull
    public final TextView inviteMoneyTitle;
    @NonNull
    public final TextView inviteRegisterUsers;
    @NonNull
    public final ImageView ivTitleBar;
    @NonNull
    public final TextView method1;
    @NonNull
    public final ImageView method1Img;
    @NonNull
    public final TextView method2;
    @NonNull
    public final ImageView method2Img;
    @NonNull
    public final ConstraintLayout method2Lay;
    @NonNull
    public final LinearLayout method2RewardLay;
    @NonNull
    public final TextView method3;
    @NonNull
    public final ImageView method3Img;
    @NonNull
    public final TextView priceInviteUser;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView rulesContent;
    @NonNull
    public final TextView rulesContentTitle;
    @NonNull
    public final TextView tip1;
    @NonNull
    public final TextView title;
    @NonNull
    public final Toolbar toolbar;
    @NonNull
    public final TextView tvInviteDiamonds;
    @NonNull
    public final TextView tvInviteUsers;
    @NonNull
    public final TextView tvWatchvideo;
    @NonNull
    public final TextView viewlab;

    private ActivityInviteUserBinding(@NonNull RelativeLayout relativeLayout, @NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull View view, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull FrameLayout frameLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull ImageView imageView, @NonNull TextView textView9, @NonNull ImageView imageView2, @NonNull TextView textView10, @NonNull ImageView imageView3, @NonNull ConstraintLayout constraintLayout3, @NonNull LinearLayout linearLayout, @NonNull TextView textView11, @NonNull ImageView imageView4, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull TextView textView14, @NonNull TextView textView15, @NonNull TextView textView16, @NonNull Toolbar toolbar, @NonNull TextView textView17, @NonNull TextView textView18, @NonNull TextView textView19, @NonNull TextView textView20) {
        this.rootView = relativeLayout;
        this.adsLl = constraintLayout;
        this.adsTv = textView;
        this.bg1 = view;
        this.btnInviteUser = textView2;
        this.earnMoneyTip = textView3;
        this.floatTitle = textView4;
        this.floatTitleBack = frameLayout;
        this.inviteLl = constraintLayout2;
        this.inviteMoney = textView5;
        this.inviteMoneyContent = textView6;
        this.inviteMoneyTitle = textView7;
        this.inviteRegisterUsers = textView8;
        this.ivTitleBar = imageView;
        this.method1 = textView9;
        this.method1Img = imageView2;
        this.method2 = textView10;
        this.method2Img = imageView3;
        this.method2Lay = constraintLayout3;
        this.method2RewardLay = linearLayout;
        this.method3 = textView11;
        this.method3Img = imageView4;
        this.priceInviteUser = textView12;
        this.rulesContent = textView13;
        this.rulesContentTitle = textView14;
        this.tip1 = textView15;
        this.title = textView16;
        this.toolbar = toolbar;
        this.tvInviteDiamonds = textView17;
        this.tvInviteUsers = textView18;
        this.tvWatchvideo = textView19;
        this.viewlab = textView20;
    }

    @NonNull
    public static ActivityInviteUserBinding bind(@NonNull View view) {
        int i9 = R.id.ads_ll;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.ads_ll);
        if (constraintLayout != null) {
            i9 = R.id.ads_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ads_tv);
            if (textView != null) {
                i9 = R.id.bg1;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg1);
                if (findChildViewById != null) {
                    i9 = R.id.btn_invite_user;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_invite_user);
                    if (textView2 != null) {
                        i9 = R.id.earn_money_tip;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.earn_money_tip);
                        if (textView3 != null) {
                            i9 = R.id.float_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.float_title);
                            if (textView4 != null) {
                                i9 = R.id.float_title_back;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.float_title_back);
                                if (frameLayout != null) {
                                    i9 = R.id.invite_ll;
                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.invite_ll);
                                    if (constraintLayout2 != null) {
                                        i9 = R.id.invite_money;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.invite_money);
                                        if (textView5 != null) {
                                            i9 = R.id.invite_money_content;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.invite_money_content);
                                            if (textView6 != null) {
                                                i9 = R.id.invite_money_title;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.invite_money_title);
                                                if (textView7 != null) {
                                                    i9 = R.id.invite_register_users;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.invite_register_users);
                                                    if (textView8 != null) {
                                                        i9 = R.id.iv_title_bar;
                                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_title_bar);
                                                        if (imageView != null) {
                                                            i9 = R.id.method1;
                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.method1);
                                                            if (textView9 != null) {
                                                                i9 = R.id.method1Img;
                                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.method1Img);
                                                                if (imageView2 != null) {
                                                                    i9 = R.id.method2;
                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.method2);
                                                                    if (textView10 != null) {
                                                                        i9 = R.id.method2Img;
                                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.method2Img);
                                                                        if (imageView3 != null) {
                                                                            i9 = R.id.method2_lay;
                                                                            ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.method2_lay);
                                                                            if (constraintLayout3 != null) {
                                                                                i9 = R.id.method2_reward_lay;
                                                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.method2_reward_lay);
                                                                                if (linearLayout != null) {
                                                                                    i9 = R.id.method3;
                                                                                    TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.method3);
                                                                                    if (textView11 != null) {
                                                                                        i9 = R.id.method3Img;
                                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.method3Img);
                                                                                        if (imageView4 != null) {
                                                                                            i9 = R.id.price_invite_user;
                                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.price_invite_user);
                                                                                            if (textView12 != null) {
                                                                                                i9 = R.id.rules_content;
                                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.rules_content);
                                                                                                if (textView13 != null) {
                                                                                                    i9 = R.id.rules_content_title;
                                                                                                    TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.rules_content_title);
                                                                                                    if (textView14 != null) {
                                                                                                        i9 = R.id.tip1;
                                                                                                        TextView textView15 = (TextView) ViewBindings.findChildViewById(view, R.id.tip1);
                                                                                                        if (textView15 != null) {
                                                                                                            i9 = 16908310;
                                                                                                            TextView textView16 = (TextView) ViewBindings.findChildViewById(view, 16908310);
                                                                                                            if (textView16 != null) {
                                                                                                                i9 = R.id.toolbar;
                                                                                                                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                                                                                                if (toolbar != null) {
                                                                                                                    i9 = R.id.tv_invite_diamonds;
                                                                                                                    TextView textView17 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_invite_diamonds);
                                                                                                                    if (textView17 != null) {
                                                                                                                        i9 = R.id.tv_invite_users;
                                                                                                                        TextView textView18 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_invite_users);
                                                                                                                        if (textView18 != null) {
                                                                                                                            i9 = R.id.tv_watchvideo;
                                                                                                                            TextView textView19 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_watchvideo);
                                                                                                                            if (textView19 != null) {
                                                                                                                                i9 = R.id.viewlab;
                                                                                                                                TextView textView20 = (TextView) ViewBindings.findChildViewById(view, R.id.viewlab);
                                                                                                                                if (textView20 != null) {
                                                                                                                                    return new ActivityInviteUserBinding((RelativeLayout) view, constraintLayout, textView, findChildViewById, textView2, textView3, textView4, frameLayout, constraintLayout2, textView5, textView6, textView7, textView8, imageView, textView9, imageView2, textView10, imageView3, constraintLayout3, linearLayout, textView11, imageView4, textView12, textView13, textView14, textView15, textView16, toolbar, textView17, textView18, textView19, textView20);
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
    public static ActivityInviteUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityInviteUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_invite_user, viewGroup, false);
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
