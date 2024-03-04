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
public final class ListItemFindYouSearchBinding implements ViewBinding {
    @NonNull
    public final ImageView ivResidence;
    @NonNull
    public final ImageView ivSelector;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvAddress;

    private ListItemFindYouSearchBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.ivResidence = imageView;
        this.ivSelector = imageView2;
        this.tvAddress = textView;
    }

    @NonNull
    public static ListItemFindYouSearchBinding bind(@NonNull View view) {
        int i9 = R.id.iv_residence;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_residence);
        if (imageView != null) {
            i9 = R.id.iv_selector;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_selector);
            if (imageView2 != null) {
                i9 = R.id.tv_address;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_address);
                if (textView != null) {
                    return new ListItemFindYouSearchBinding((LinearLayout) view, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemFindYouSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemFindYouSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_find_you_search, viewGroup, false);
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
