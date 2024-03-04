package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemBeautyFaceBinding implements ViewBinding {
    @NonNull
    public final ImageView beautyIcon;
    @NonNull
    public final TextView beautyName;
    @NonNull
    private final LinearLayout rootView;

    private ItemBeautyFaceBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.beautyIcon = imageView;
        this.beautyName = textView;
    }

    @NonNull
    public static ItemBeautyFaceBinding bind(@NonNull View view) {
        int i9 = R.id.beauty_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.beauty_icon);
        if (imageView != null) {
            i9 = R.id.beauty_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.beauty_name);
            if (textView != null) {
                return new ItemBeautyFaceBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemBeautyFaceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemBeautyFaceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_beauty_face, viewGroup, false);
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
