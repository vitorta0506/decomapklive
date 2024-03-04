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
public final class ListItemMvpTagBinding implements ViewBinding {
    @NonNull
    public final ImageView imageView;
    @NonNull
    public final ImageView ivIsCheck;
    @NonNull
    public final View mask;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView tvPictureFrameName;
    @NonNull
    public final TextView tvTimeLimit;

    private ListItemMvpTagBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = constraintLayout;
        this.imageView = imageView;
        this.ivIsCheck = imageView2;
        this.mask = view;
        this.tvPictureFrameName = textView;
        this.tvTimeLimit = textView2;
    }

    @NonNull
    public static ListItemMvpTagBinding bind(@NonNull View view) {
        int i9 = R.id.imageView;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView);
        if (imageView != null) {
            i9 = R.id.iv_is_check;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_is_check);
            if (imageView2 != null) {
                i9 = R.id.mask;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.mask);
                if (findChildViewById != null) {
                    i9 = R.id.tv_picture_frame_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_picture_frame_name);
                    if (textView != null) {
                        i9 = R.id.tv_time_limit;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time_limit);
                        if (textView2 != null) {
                            return new ListItemMvpTagBinding((ConstraintLayout) view, imageView, imageView2, findChildViewById, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemMvpTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemMvpTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_mvp_tag, viewGroup, false);
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
