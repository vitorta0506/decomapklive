package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.ObservableScrollView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class FragmentBuyVipBinding implements ViewBinding {
    @NonNull
    private final ObservableScrollView rootView;
    @NonNull
    public final ObservableScrollView scroll;

    private FragmentBuyVipBinding(@NonNull ObservableScrollView observableScrollView, @NonNull ObservableScrollView observableScrollView2) {
        this.rootView = observableScrollView;
        this.scroll = observableScrollView2;
    }

    @NonNull
    public static FragmentBuyVipBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        ObservableScrollView observableScrollView = (ObservableScrollView) view;
        return new FragmentBuyVipBinding(observableScrollView, observableScrollView);
    }

    @NonNull
    public static FragmentBuyVipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentBuyVipBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_buy_vip, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ObservableScrollView getRoot() {
        return this.rootView;
    }
}
