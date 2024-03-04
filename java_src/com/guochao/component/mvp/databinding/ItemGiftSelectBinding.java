package com.guochao.component.mvp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
/* loaded from: classes3.dex */
public final class ItemGiftSelectBinding implements ViewBinding {
    @NonNull
    public final FrameLayout bgFL;
    @NonNull
    public final ImageView imageView;
    @NonNull
    public final TextView nameTV;
    @NonNull
    private final ConstraintLayout rootView;

    private ItemGiftSelectBinding(@NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = constraintLayout;
        this.bgFL = frameLayout;
        this.imageView = imageView;
        this.nameTV = textView;
    }

    @NonNull
    public static ItemGiftSelectBinding bind(@NonNull View view) {
        int i9 = R$id.bgFL;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
        if (frameLayout != null) {
            i9 = R$id.imageView;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.nameTV;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView != null) {
                    return new ItemGiftSelectBinding((ConstraintLayout) view, frameLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemGiftSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemGiftSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.item_gift_select, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
