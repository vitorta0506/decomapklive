package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.signin.R$layout;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class ItemGrowGiftBagBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;

    private ItemGrowGiftBagBinding(@NonNull FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }

    @NonNull
    public static ItemGrowGiftBagBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new ItemGrowGiftBagBinding((FrameLayout) view);
    }

    @NonNull
    public static ItemGrowGiftBagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemGrowGiftBagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.item_grow_gift_bag, viewGroup, false);
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
