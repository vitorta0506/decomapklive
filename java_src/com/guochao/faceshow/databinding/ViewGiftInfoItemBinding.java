package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ViewGiftInfoItemBinding implements ViewBinding {
    @NonNull
    public final TextView countTV;
    @NonNull
    public final TextView doubleTV;
    @NonNull
    private final LinearLayout rootView;

    private ViewGiftInfoItemBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.countTV = textView;
        this.doubleTV = textView2;
    }

    @NonNull
    public static ViewGiftInfoItemBinding bind(@NonNull View view) {
        int i9 = R.id.countTV;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.countTV);
        if (textView != null) {
            i9 = R.id.doubleTV;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.doubleTV);
            if (textView2 != null) {
                return new ViewGiftInfoItemBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ViewGiftInfoItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ViewGiftInfoItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.view_gift_info_item, viewGroup, false);
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
