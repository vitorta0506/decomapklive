package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentRecordNewBinding implements ViewBinding {
    @NonNull
    public final ImageView ivTitleBar;
    @NonNull
    public final LinearLayoutCompat llDiamond;
    @NonNull
    public final LinearLayoutCompat llF;
    @NonNull
    public final LinearLayoutCompat llG;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvDiamondDate;
    @NonNull
    public final TextView tvDiamondIncome;
    @NonNull
    public final TextView tvDiamondSpending;
    @NonNull
    public final TextView tvFDate;
    @NonNull
    public final TextView tvFIncome;
    @NonNull
    public final TextView tvFSpending;
    @NonNull
    public final TextView tvGDate;
    @NonNull
    public final TextView tvGIncome;
    @NonNull
    public final TextView tvGSpending;

    private FragmentRecordNewBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull LinearLayoutCompat linearLayoutCompat, @NonNull LinearLayoutCompat linearLayoutCompat2, @NonNull LinearLayoutCompat linearLayoutCompat3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9) {
        this.rootView = frameLayout;
        this.ivTitleBar = imageView;
        this.llDiamond = linearLayoutCompat;
        this.llF = linearLayoutCompat2;
        this.llG = linearLayoutCompat3;
        this.tvDiamondDate = textView;
        this.tvDiamondIncome = textView2;
        this.tvDiamondSpending = textView3;
        this.tvFDate = textView4;
        this.tvFIncome = textView5;
        this.tvFSpending = textView6;
        this.tvGDate = textView7;
        this.tvGIncome = textView8;
        this.tvGSpending = textView9;
    }

    @NonNull
    public static FragmentRecordNewBinding bind(@NonNull View view) {
        int i9 = R.id.iv_title_bar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_title_bar);
        if (imageView != null) {
            i9 = R.id.ll_diamond;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, R.id.ll_diamond);
            if (linearLayoutCompat != null) {
                i9 = R.id.ll_f;
                LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) ViewBindings.findChildViewById(view, R.id.ll_f);
                if (linearLayoutCompat2 != null) {
                    i9 = R.id.ll_g;
                    LinearLayoutCompat linearLayoutCompat3 = (LinearLayoutCompat) ViewBindings.findChildViewById(view, R.id.ll_g);
                    if (linearLayoutCompat3 != null) {
                        i9 = R.id.tv_diamond_date;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_diamond_date);
                        if (textView != null) {
                            i9 = R.id.tv_diamond_income;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_diamond_income);
                            if (textView2 != null) {
                                i9 = R.id.tv_diamond_spending;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_diamond_spending);
                                if (textView3 != null) {
                                    i9 = R.id.tv_f_date;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_f_date);
                                    if (textView4 != null) {
                                        i9 = R.id.tv_f_income;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_f_income);
                                        if (textView5 != null) {
                                            i9 = R.id.tv_f_spending;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_f_spending);
                                            if (textView6 != null) {
                                                i9 = R.id.tv_g_date;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_g_date);
                                                if (textView7 != null) {
                                                    i9 = R.id.tv_g_income;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_g_income);
                                                    if (textView8 != null) {
                                                        i9 = R.id.tv_g_spending;
                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_g_spending);
                                                        if (textView9 != null) {
                                                            return new FragmentRecordNewBinding((FrameLayout) view, imageView, linearLayoutCompat, linearLayoutCompat2, linearLayoutCompat3, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
    public static FragmentRecordNewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentRecordNewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_record_new, viewGroup, false);
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
