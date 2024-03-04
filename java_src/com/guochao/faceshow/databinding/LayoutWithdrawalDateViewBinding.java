package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.loopView.LoopView;
/* loaded from: classes2.dex */
public final class LayoutWithdrawalDateViewBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LoopView wvBirthMonth;
    @NonNull
    public final LoopView wvBirthYear;

    private LayoutWithdrawalDateViewBinding(@NonNull LinearLayout linearLayout, @NonNull LoopView loopView, @NonNull LoopView loopView2) {
        this.rootView = linearLayout;
        this.wvBirthMonth = loopView;
        this.wvBirthYear = loopView2;
    }

    @NonNull
    public static LayoutWithdrawalDateViewBinding bind(@NonNull View view) {
        int i9 = R.id.wv_birth_month;
        LoopView loopView = (LoopView) ViewBindings.findChildViewById(view, R.id.wv_birth_month);
        if (loopView != null) {
            i9 = R.id.wv_birth_year;
            LoopView loopView2 = (LoopView) ViewBindings.findChildViewById(view, R.id.wv_birth_year);
            if (loopView2 != null) {
                return new LayoutWithdrawalDateViewBinding((LinearLayout) view, loopView, loopView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutWithdrawalDateViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutWithdrawalDateViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_withdrawal_date_view, viewGroup, false);
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
