package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ListItemDressUpTitleBinding implements ViewBinding {
    @NonNull
    public final ImageView imgNouse;
    @NonNull
    public final ImageView ivIsCheck;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView tvTitleName;

    private ListItemDressUpTitleBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = constraintLayout;
        this.imgNouse = imageView;
        this.ivIsCheck = imageView2;
        this.tvTitleName = textView;
    }

    @NonNull
    public static ListItemDressUpTitleBinding bind(@NonNull View view) {
        int i9 = R.id.img_nouse;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_nouse);
        if (imageView != null) {
            i9 = R.id.iv_is_check;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_is_check);
            if (imageView2 != null) {
                i9 = R.id.tv_title_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_name);
                if (textView != null) {
                    return new ListItemDressUpTitleBinding((ConstraintLayout) view, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemDressUpTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemDressUpTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_dress_up_title, viewGroup, false);
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
