package com.guochao.component.mvp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.component.mvp.R$layout;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class LayoutGetGiftMoreBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;

    private LayoutGetGiftMoreBinding(@NonNull FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }

    @NonNull
    public static LayoutGetGiftMoreBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new LayoutGetGiftMoreBinding((FrameLayout) view);
    }

    @NonNull
    public static LayoutGetGiftMoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutGetGiftMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_get_gift_more, viewGroup, false);
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
