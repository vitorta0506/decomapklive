package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.signin.R$layout;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class LayoutFourRewardSigninBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;

    private LayoutFourRewardSigninBinding(@NonNull LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    @NonNull
    public static LayoutFourRewardSigninBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new LayoutFourRewardSigninBinding((LinearLayout) view);
    }

    @NonNull
    public static LayoutFourRewardSigninBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFourRewardSigninBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_four_reward_signin, viewGroup, false);
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
