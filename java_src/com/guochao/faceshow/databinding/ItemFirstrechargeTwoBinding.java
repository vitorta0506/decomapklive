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
public final class ItemFirstrechargeTwoBinding implements ViewBinding {
    @NonNull
    public final ImageView firstImage;
    @NonNull
    public final TextView firstName;
    @NonNull
    public final TextView firstNumber;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView secondImage;
    @NonNull
    public final TextView secondName;
    @NonNull
    public final TextView secondNumber;

    private ItemFirstrechargeTwoBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.firstImage = imageView;
        this.firstName = textView;
        this.firstNumber = textView2;
        this.secondImage = imageView2;
        this.secondName = textView3;
        this.secondNumber = textView4;
    }

    @NonNull
    public static ItemFirstrechargeTwoBinding bind(@NonNull View view) {
        int i9 = R.id.first_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.first_image);
        if (imageView != null) {
            i9 = R.id.first_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.first_name);
            if (textView != null) {
                i9 = R.id.first_number;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.first_number);
                if (textView2 != null) {
                    i9 = R.id.second_image;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.second_image);
                    if (imageView2 != null) {
                        i9 = R.id.second_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.second_name);
                        if (textView3 != null) {
                            i9 = R.id.second_number;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.second_number);
                            if (textView4 != null) {
                                return new ItemFirstrechargeTwoBinding((FrameLayout) view, imageView, textView, textView2, imageView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemFirstrechargeTwoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFirstrechargeTwoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_firstrecharge_two, viewGroup, false);
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
