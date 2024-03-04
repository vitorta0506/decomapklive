package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.lib_core.databinding.GcBaseTitleBarBinding;
/* loaded from: classes4.dex */
public final class ActivityMyLiveBinding implements ViewBinding {
    @NonNull
    public final ConstraintLayout constraintLayout;
    @NonNull
    public final LinearLayout constraintLayout2;
    @NonNull
    public final Guideline guideline6;
    @NonNull
    public final LinearLayout layData;
    @NonNull
    public final LinearLayout layMonthDatas;
    @NonNull
    public final LinearLayout layoutEarnings;
    @NonNull
    public final LinearLayout layoutEarningsMonth;
    @NonNull
    public final View line1;
    @NonNull
    public final View line2;
    @NonNull
    public final View line3;
    @NonNull
    public final View line4;
    @NonNull
    public final TextView liveDays;
    @NonNull
    public final LinearLayout liveDaysLayout;
    @NonNull
    public final TextView liveDaysMonth;
    @NonNull
    public final TextView liveDaysTips;
    @NonNull
    public final FrameLayout liveDetail;
    @NonNull
    public final TextView liveEarnings;
    @NonNull
    public final TextView liveEarningsMonth;
    @NonNull
    public final LinearLayout liveMonthLayout;
    @NonNull
    public final TextView liveMonthTime;
    @NonNull
    public final TextView liveMonthTips;
    @NonNull
    public final TextView monthData;
    @NonNull
    public final TextView popularity;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final FrameLayout signing;
    @NonNull
    public final TextView textView10;
    @NonNull
    public final GcBaseTitleBarBinding titleBar;
    @NonNull
    public final TextView todayData;
    @NonNull
    public final TextView watchNumber;
    @NonNull
    public final LinearLayout watchNumberArea;

    private ActivityMyLiveBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull LinearLayout linearLayout, @NonNull Guideline guideline, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull View view, @NonNull View view2, @NonNull View view3, @NonNull View view4, @NonNull TextView textView, @NonNull LinearLayout linearLayout6, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FrameLayout frameLayout, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull LinearLayout linearLayout7, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull FrameLayout frameLayout2, @NonNull TextView textView10, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull LinearLayout linearLayout8) {
        this.rootView = constraintLayout;
        this.constraintLayout = constraintLayout2;
        this.constraintLayout2 = linearLayout;
        this.guideline6 = guideline;
        this.layData = linearLayout2;
        this.layMonthDatas = linearLayout3;
        this.layoutEarnings = linearLayout4;
        this.layoutEarningsMonth = linearLayout5;
        this.line1 = view;
        this.line2 = view2;
        this.line3 = view3;
        this.line4 = view4;
        this.liveDays = textView;
        this.liveDaysLayout = linearLayout6;
        this.liveDaysMonth = textView2;
        this.liveDaysTips = textView3;
        this.liveDetail = frameLayout;
        this.liveEarnings = textView4;
        this.liveEarningsMonth = textView5;
        this.liveMonthLayout = linearLayout7;
        this.liveMonthTime = textView6;
        this.liveMonthTips = textView7;
        this.monthData = textView8;
        this.popularity = textView9;
        this.signing = frameLayout2;
        this.textView10 = textView10;
        this.titleBar = gcBaseTitleBarBinding;
        this.todayData = textView11;
        this.watchNumber = textView12;
        this.watchNumberArea = linearLayout8;
    }

    @NonNull
    public static ActivityMyLiveBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        View findChildViewById4;
        View findChildViewById5;
        int i9 = R$id.constraintLayout;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i9);
        if (constraintLayout != null) {
            i9 = R$id.constraintLayout2;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
            if (linearLayout != null) {
                i9 = R$id.guideline6;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i9);
                if (guideline != null) {
                    i9 = R$id.lay_data;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                    if (linearLayout2 != null) {
                        i9 = R$id.layMonthDatas;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                        if (linearLayout3 != null) {
                            i9 = R$id.layout_earnings;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                            if (linearLayout4 != null) {
                                i9 = R$id.layout_earnings_month;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                if (linearLayout5 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.line1))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i9 = R$id.line2))) != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i9 = R$id.line3))) != null && (findChildViewById4 = ViewBindings.findChildViewById(view, (i9 = R$id.line4))) != null) {
                                    i9 = R$id.live_days;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                                    if (textView != null) {
                                        i9 = R$id.live_days_layout;
                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                        if (linearLayout6 != null) {
                                            i9 = R$id.live_days_month;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                                            if (textView2 != null) {
                                                i9 = R$id.live_days_tips;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                if (textView3 != null) {
                                                    i9 = R$id.live_detail;
                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                                                    if (frameLayout != null) {
                                                        i9 = R$id.live_earnings;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                        if (textView4 != null) {
                                                            i9 = R$id.live_earnings_month;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                            if (textView5 != null) {
                                                                i9 = R$id.live_month_layout;
                                                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                                                if (linearLayout7 != null) {
                                                                    i9 = R$id.live_month_time;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                    if (textView6 != null) {
                                                                        i9 = R$id.live_month_tips;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                        if (textView7 != null) {
                                                                            i9 = R$id.month_data;
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                            if (textView8 != null) {
                                                                                i9 = R$id.popularity;
                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                if (textView9 != null) {
                                                                                    i9 = R$id.signing;
                                                                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                                                                                    if (frameLayout2 != null) {
                                                                                        i9 = R$id.textView10;
                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                        if (textView10 != null && (findChildViewById5 = ViewBindings.findChildViewById(view, (i9 = R$id.title_bar))) != null) {
                                                                                            GcBaseTitleBarBinding bind = GcBaseTitleBarBinding.bind(findChildViewById5);
                                                                                            i9 = R$id.today_data;
                                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                            if (textView11 != null) {
                                                                                                i9 = R$id.watch_number;
                                                                                                TextView textView12 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                if (textView12 != null) {
                                                                                                    i9 = R$id.watch_number_area;
                                                                                                    LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                                                                                    if (linearLayout8 != null) {
                                                                                                        return new ActivityMyLiveBinding((ConstraintLayout) view, constraintLayout, linearLayout, guideline, linearLayout2, linearLayout3, linearLayout4, linearLayout5, findChildViewById, findChildViewById2, findChildViewById3, findChildViewById4, textView, linearLayout6, textView2, textView3, frameLayout, textView4, textView5, linearLayout7, textView6, textView7, textView8, textView9, frameLayout2, textView10, bind, textView11, textView12, linearLayout8);
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
    public static ActivityMyLiveBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityMyLiveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.activity_my_live, viewGroup, false);
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
