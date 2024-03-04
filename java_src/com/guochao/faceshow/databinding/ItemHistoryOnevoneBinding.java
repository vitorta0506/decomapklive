package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class ItemHistoryOnevoneBinding implements ViewBinding {
    @NonNull
    public final AgeAndSexView ageSexView;
    @NonNull
    public final TextView chatTime;
    @NonNull
    public final HeadPortraitView ivHeaderImg;
    @NonNull
    public final LinearLayout layCounts;
    @NonNull
    public final LinearLayout layCountsLab;
    @NonNull
    public final LevelView levelView;
    @NonNull
    public final View line;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView tvMatchNum;
    @NonNull
    public final TextView tvReceiveGift;
    @NonNull
    public final TextView tvSendGift;
    @NonNull
    public final TextView tvTotalTime;
    @NonNull
    public final TextView userName;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private ItemHistoryOnevoneBinding(@NonNull ConstraintLayout constraintLayout, @NonNull AgeAndSexView ageAndSexView, @NonNull TextView textView, @NonNull HeadPortraitView headPortraitView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LevelView levelView, @NonNull View view, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = constraintLayout;
        this.ageSexView = ageAndSexView;
        this.chatTime = textView;
        this.ivHeaderImg = headPortraitView;
        this.layCounts = linearLayout;
        this.layCountsLab = linearLayout2;
        this.levelView = levelView;
        this.line = view;
        this.tvMatchNum = textView2;
        this.tvReceiveGift = textView3;
        this.tvSendGift = textView4;
        this.tvTotalTime = textView5;
        this.userName = textView6;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static ItemHistoryOnevoneBinding bind(@NonNull View view) {
        int i9 = R.id.age_sex_view;
        AgeAndSexView ageAndSexView = (AgeAndSexView) ViewBindings.findChildViewById(view, R.id.age_sex_view);
        if (ageAndSexView != null) {
            i9 = R.id.chat_time;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.chat_time);
            if (textView != null) {
                i9 = R.id.iv_header_img;
                HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.iv_header_img);
                if (headPortraitView != null) {
                    i9 = R.id.lay_counts;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_counts);
                    if (linearLayout != null) {
                        i9 = R.id.lay_countsLab;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_countsLab);
                        if (linearLayout2 != null) {
                            i9 = R.id.level_view;
                            LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view);
                            if (levelView != null) {
                                i9 = R.id.line;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                                if (findChildViewById != null) {
                                    i9 = R.id.tv_match_num;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_match_num);
                                    if (textView2 != null) {
                                        i9 = R.id.tv_receive_gift;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_receive_gift);
                                        if (textView3 != null) {
                                            i9 = R.id.tv_send_gift;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send_gift);
                                            if (textView4 != null) {
                                                i9 = R.id.tv_total_time;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_total_time);
                                                if (textView5 != null) {
                                                    i9 = R.id.user_name;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                                    if (textView6 != null) {
                                                        i9 = R.id.vip_indicator;
                                                        VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                                                        if (vipIndicatorView != null) {
                                                            return new ItemHistoryOnevoneBinding((ConstraintLayout) view, ageAndSexView, textView, headPortraitView, linearLayout, linearLayout2, levelView, findChildViewById, textView2, textView3, textView4, textView5, textView6, vipIndicatorView);
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
    public static ItemHistoryOnevoneBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemHistoryOnevoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_history_onevone, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
