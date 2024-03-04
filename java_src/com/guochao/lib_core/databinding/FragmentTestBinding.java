package com.guochao.lib_core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.lib_core.R$layout;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class FragmentTestBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;

    private FragmentTestBinding(@NonNull FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }

    @NonNull
    public static FragmentTestBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new FragmentTestBinding((FrameLayout) view);
    }

    @NonNull
    public static FragmentTestBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentTestBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_test, viewGroup, false);
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
