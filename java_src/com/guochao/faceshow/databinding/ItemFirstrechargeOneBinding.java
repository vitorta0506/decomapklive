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
public final class ItemFirstrechargeOneBinding implements ViewBinding {
    @NonNull
    public final ImageView firstImage;
    @NonNull
    public final TextView firstName;
    @NonNull
    public final TextView firstNumber;
    @NonNull
    private final FrameLayout rootView;

    private ItemFirstrechargeOneBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.firstImage = imageView;
        this.firstName = textView;
        this.firstNumber = textView2;
    }

    @NonNull
    public static ItemFirstrechargeOneBinding bind(@NonNull View view) {
        int i9 = R.id.first_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.first_image);
        if (imageView != null) {
            i9 = R.id.first_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.first_name);
            if (textView != null) {
                i9 = R.id.first_number;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.first_number);
                if (textView2 != null) {
                    return new ItemFirstrechargeOneBinding((FrameLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemFirstrechargeOneBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFirstrechargeOneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_firstrecharge_one, viewGroup, false);
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
