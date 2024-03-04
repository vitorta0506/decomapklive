package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RangeSeekBar;
/* loaded from: classes2.dex */
public final class ActivityFindYouBinding implements ViewBinding {
    @NonNull
    public final TextView btnSearch;
    @NonNull
    public final ImageView ivMan;
    @NonNull
    public final ImageView ivUnlimited;
    @NonNull
    public final ImageView ivWoman;
    @NonNull
    public final LinearLayout llIvMan;
    @NonNull
    public final LinearLayout llIvUnlimited;
    @NonNull
    public final LinearLayout llIvWoman;
    @NonNull
    public final LinearLayout llResidence;
    @NonNull
    public final RelativeLayout rlChooseFriendSetting;
    @NonNull
    public final RelativeLayout rlChooseLanguage;
    @NonNull
    public final RelativeLayout rlResidence;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final RangeSeekBar rsbYear;
    @NonNull
    public final TextView tvAddress;
    @NonNull
    public final TextView tvChooseFriendSetting;
    @NonNull
    public final TextView tvChooseLanguage;
    @NonNull
    public final TextView tvFriendSetting;
    @NonNull
    public final TextView tvLanguage;
    @NonNull
    public final TextView tvMan;
    @NonNull
    public final TextView tvMaxYear;
    @NonNull
    public final TextView tvMinYear;
    @NonNull
    public final TextView tvResidence;
    @NonNull
    public final TextView tvUnlimited;
    @NonNull
    public final TextView tvWonam;

    private ActivityFindYouBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RangeSeekBar rangeSeekBar, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12) {
        this.rootView = linearLayout;
        this.btnSearch = textView;
        this.ivMan = imageView;
        this.ivUnlimited = imageView2;
        this.ivWoman = imageView3;
        this.llIvMan = linearLayout2;
        this.llIvUnlimited = linearLayout3;
        this.llIvWoman = linearLayout4;
        this.llResidence = linearLayout5;
        this.rlChooseFriendSetting = relativeLayout;
        this.rlChooseLanguage = relativeLayout2;
        this.rlResidence = relativeLayout3;
        this.rsbYear = rangeSeekBar;
        this.tvAddress = textView2;
        this.tvChooseFriendSetting = textView3;
        this.tvChooseLanguage = textView4;
        this.tvFriendSetting = textView5;
        this.tvLanguage = textView6;
        this.tvMan = textView7;
        this.tvMaxYear = textView8;
        this.tvMinYear = textView9;
        this.tvResidence = textView10;
        this.tvUnlimited = textView11;
        this.tvWonam = textView12;
    }

    @NonNull
    public static ActivityFindYouBinding bind(@NonNull View view) {
        int i9 = R.id.btn_search;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_search);
        if (textView != null) {
            i9 = R.id.iv_man;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_man);
            if (imageView != null) {
                i9 = R.id.iv_unlimited;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_unlimited);
                if (imageView2 != null) {
                    i9 = R.id.iv_woman;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_woman);
                    if (imageView3 != null) {
                        i9 = R.id.ll_iv_man;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_iv_man);
                        if (linearLayout != null) {
                            i9 = R.id.ll_iv_unlimited;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_iv_unlimited);
                            if (linearLayout2 != null) {
                                i9 = R.id.ll_iv_woman;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_iv_woman);
                                if (linearLayout3 != null) {
                                    i9 = R.id.ll_residence;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_residence);
                                    if (linearLayout4 != null) {
                                        i9 = R.id.rl_choose_friend_setting;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_choose_friend_setting);
                                        if (relativeLayout != null) {
                                            i9 = R.id.rl_choose_language;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_choose_language);
                                            if (relativeLayout2 != null) {
                                                i9 = R.id.rl_residence;
                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_residence);
                                                if (relativeLayout3 != null) {
                                                    i9 = R.id.rsb_year;
                                                    RangeSeekBar rangeSeekBar = (RangeSeekBar) ViewBindings.findChildViewById(view, R.id.rsb_year);
                                                    if (rangeSeekBar != null) {
                                                        i9 = R.id.tv_address;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_address);
                                                        if (textView2 != null) {
                                                            i9 = R.id.tv_choose_friend_setting;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_choose_friend_setting);
                                                            if (textView3 != null) {
                                                                i9 = R.id.tv_choose_language;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_choose_language);
                                                                if (textView4 != null) {
                                                                    i9 = R.id.tv_friend_setting;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_friend_setting);
                                                                    if (textView5 != null) {
                                                                        i9 = R.id.tv_language;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_language);
                                                                        if (textView6 != null) {
                                                                            i9 = R.id.tv_man;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_man);
                                                                            if (textView7 != null) {
                                                                                i9 = R.id.tv_max_year;
                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_max_year);
                                                                                if (textView8 != null) {
                                                                                    i9 = R.id.tv_min_year;
                                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_min_year);
                                                                                    if (textView9 != null) {
                                                                                        i9 = R.id.tv_residence;
                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_residence);
                                                                                        if (textView10 != null) {
                                                                                            i9 = R.id.tv_unlimited;
                                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_unlimited);
                                                                                            if (textView11 != null) {
                                                                                                i9 = R.id.tv_wonam;
                                                                                                TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_wonam);
                                                                                                if (textView12 != null) {
                                                                                                    return new ActivityFindYouBinding((LinearLayout) view, textView, imageView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, relativeLayout, relativeLayout2, relativeLayout3, rangeSeekBar, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12);
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
    public static ActivityFindYouBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityFindYouBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_find_you, viewGroup, false);
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
