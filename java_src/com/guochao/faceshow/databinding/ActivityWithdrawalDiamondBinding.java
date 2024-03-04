package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.MeasureListView;
/* loaded from: classes2.dex */
public final class ActivityWithdrawalDiamondBinding implements ViewBinding {
    @NonNull
    public final MeasureListView lvRechargeList;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout topLayout;
    @NonNull
    public final TextView tvAgreement;
    @NonNull
    public final TextView tvDiamondCount;

    private ActivityWithdrawalDiamondBinding(@NonNull LinearLayout linearLayout, @NonNull MeasureListView measureListView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.lvRechargeList = measureListView;
        this.topLayout = linearLayout2;
        this.tvAgreement = textView;
        this.tvDiamondCount = textView2;
    }

    @NonNull
    public static ActivityWithdrawalDiamondBinding bind(@NonNull View view) {
        int i9 = R.id.lvRechargeList;
        MeasureListView measureListView = (MeasureListView) ViewBindings.findChildViewById(view, R.id.lvRechargeList);
        if (measureListView != null) {
            i9 = R.id.topLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.topLayout);
            if (linearLayout != null) {
                i9 = R.id.tvAgreement;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvAgreement);
                if (textView != null) {
                    i9 = R.id.tvDiamondCount;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDiamondCount);
                    if (textView2 != null) {
                        return new ActivityWithdrawalDiamondBinding((LinearLayout) view, measureListView, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityWithdrawalDiamondBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityWithdrawalDiamondBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_withdrawal_diamond, viewGroup, false);
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
