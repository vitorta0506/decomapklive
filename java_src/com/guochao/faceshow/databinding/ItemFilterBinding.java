package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.SquareFrameLayout;
/* loaded from: classes2.dex */
public final class ItemFilterBinding implements ViewBinding {
    @NonNull
    public final ImageView motionPannelItemImg;
    @NonNull
    public final TextView name;
    @NonNull
    private final SquareFrameLayout rootView;
    @NonNull
    public final View selectItem;

    private ItemFilterBinding(@NonNull SquareFrameLayout squareFrameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull View view) {
        this.rootView = squareFrameLayout;
        this.motionPannelItemImg = imageView;
        this.name = textView;
        this.selectItem = view;
    }

    @NonNull
    public static ItemFilterBinding bind(@NonNull View view) {
        int i9 = R.id.motion_pannel_item_img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.motion_pannel_item_img);
        if (imageView != null) {
            i9 = R.id.name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView != null) {
                i9 = R.id.select_item;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.select_item);
                if (findChildViewById != null) {
                    return new ItemFilterBinding((SquareFrameLayout) view, imageView, textView, findChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemFilterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_filter, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public SquareFrameLayout getRoot() {
        return this.rootView;
    }
}
