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
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityNewRecordBinding implements ViewBinding {
    @NonNull
    public final TextView floatTitle;
    @NonNull
    public final FrameLayout floatTitleBack;
    @NonNull
    public final ImageView ivTitleBar;
    @NonNull
    public final LinearLayout llMore;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView title;
    @NonNull
    public final Toolbar toolbar;
    @NonNull
    public final LinearLayoutCompat topLL;
    @NonNull
    public final TextView tvDate;
    @NonNull
    public final TextView tvIncome;
    @NonNull
    public final TextView tvMore;
    @NonNull
    public final TextView tvSpending;
    @NonNull
    public final TextView tvTimeZone;

    private ActivityNewRecordBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull Toolbar toolbar, @NonNull LinearLayoutCompat linearLayoutCompat, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.rootView = frameLayout;
        this.floatTitle = textView;
        this.floatTitleBack = frameLayout2;
        this.ivTitleBar = imageView;
        this.llMore = linearLayout;
        this.title = textView2;
        this.toolbar = toolbar;
        this.topLL = linearLayoutCompat;
        this.tvDate = textView3;
        this.tvIncome = textView4;
        this.tvMore = textView5;
        this.tvSpending = textView6;
        this.tvTimeZone = textView7;
    }

    @NonNull
    public static ActivityNewRecordBinding bind(@NonNull View view) {
        int i9 = R.id.float_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.float_title);
        if (textView != null) {
            i9 = R.id.float_title_back;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.float_title_back);
            if (frameLayout != null) {
                i9 = R.id.iv_title_bar;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_title_bar);
                if (imageView != null) {
                    i9 = R.id.ll_more;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_more);
                    if (linearLayout != null) {
                        i9 = 16908310;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, 16908310);
                        if (textView2 != null) {
                            i9 = R.id.toolbar;
                            Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                            if (toolbar != null) {
                                i9 = R.id.topLL;
                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, R.id.topLL);
                                if (linearLayoutCompat != null) {
                                    i9 = R.id.tv_date;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_date);
                                    if (textView3 != null) {
                                        i9 = R.id.tv_income;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_income);
                                        if (textView4 != null) {
                                            i9 = R.id.tv_more;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_more);
                                            if (textView5 != null) {
                                                i9 = R.id.tv_spending;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_spending);
                                                if (textView6 != null) {
                                                    i9 = R.id.tv_time_zone;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time_zone);
                                                    if (textView7 != null) {
                                                        return new ActivityNewRecordBinding((FrameLayout) view, textView, frameLayout, imageView, linearLayout, textView2, toolbar, linearLayoutCompat, textView3, textView4, textView5, textView6, textView7);
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
    public static ActivityNewRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityNewRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_new_record, viewGroup, false);
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
