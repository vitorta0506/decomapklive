package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemFirstrechargeBagBinding implements ViewBinding {
    @NonNull
    public final ImageView itemImage;
    @NonNull
    public final TextView itemName;
    @NonNull
    public final TextView itemNumber;
    @NonNull
    private final FrameLayout rootView;

    private ItemFirstrechargeBagBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.itemImage = imageView;
        this.itemName = textView;
        this.itemNumber = textView2;
    }

    @NonNull
    public static ItemFirstrechargeBagBinding bind(@NonNull View view) {
        int i9 = R.id.item_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.item_image);
        if (imageView != null) {
            i9 = R.id.item_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.item_name);
            if (textView != null) {
                i9 = R.id.item_number;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.item_number);
                if (textView2 != null) {
                    return new ItemFirstrechargeBagBinding((FrameLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemFirstrechargeBagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFirstrechargeBagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_firstrecharge_bag, viewGroup, false);
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
