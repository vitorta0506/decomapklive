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
/* loaded from: classes2.dex */
public final class ItemDressUpSpecBinding implements ViewBinding {
    @NonNull
    public final TextView priceOff;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView textView;

    private ItemDressUpSpecBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.priceOff = textView;
        this.textView = textView2;
    }

    @NonNull
    public static ItemDressUpSpecBinding bind(@NonNull View view) {
        int i9 = R.id.price_off;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.price_off);
        if (textView != null) {
            i9 = R.id.text_view;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.text_view);
            if (textView2 != null) {
                return new ItemDressUpSpecBinding((FrameLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemDressUpSpecBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemDressUpSpecBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_dress_up_spec, viewGroup, false);
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
