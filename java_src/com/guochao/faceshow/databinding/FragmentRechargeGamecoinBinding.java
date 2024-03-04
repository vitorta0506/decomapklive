package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView;
/* loaded from: classes2.dex */
public final class FragmentRechargeGamecoinBinding implements ViewBinding {
    @NonNull
    public final DisTouchRecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView startBuy;

    private FragmentRechargeGamecoinBinding(@NonNull FrameLayout frameLayout, @NonNull DisTouchRecyclerView disTouchRecyclerView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.recyclerView = disTouchRecyclerView;
        this.startBuy = textView;
    }

    @NonNull
    public static FragmentRechargeGamecoinBinding bind(@NonNull View view) {
        int i9 = R.id.recycler_view;
        DisTouchRecyclerView disTouchRecyclerView = (DisTouchRecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
        if (disTouchRecyclerView != null) {
            i9 = R.id.start_buy;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.start_buy);
            if (textView != null) {
                return new FragmentRechargeGamecoinBinding((FrameLayout) view, disTouchRecyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentRechargeGamecoinBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentRechargeGamecoinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_recharge_gamecoin, viewGroup, false);
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
