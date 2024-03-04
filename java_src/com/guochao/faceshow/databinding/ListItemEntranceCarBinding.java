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
public final class ListItemEntranceCarBinding implements ViewBinding {
    @NonNull
    public final ImageView ivEntranceCar;
    @NonNull
    public final ImageView ivIsCheck;
    @NonNull
    public final View mask;
    @NonNull
    public final ImageView mvpIV;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView tvEntranceCarName;
    @NonNull
    public final TextView tvTimeLimit;

    private ListItemEntranceCarBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = constraintLayout;
        this.ivEntranceCar = imageView;
        this.ivIsCheck = imageView2;
        this.mask = view;
        this.mvpIV = imageView3;
        this.tvEntranceCarName = textView;
        this.tvTimeLimit = textView2;
    }

    @NonNull
    public static ListItemEntranceCarBinding bind(@NonNull View view) {
        int i9 = R.id.iv_entrance_car;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_entrance_car);
        if (imageView != null) {
            i9 = R.id.iv_is_check;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_is_check);
            if (imageView2 != null) {
                i9 = R.id.mask;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.mask);
                if (findChildViewById != null) {
                    i9 = R.id.mvpIV;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.mvpIV);
                    if (imageView3 != null) {
                        i9 = R.id.tv_entrance_car_name;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_entrance_car_name);
                        if (textView != null) {
                            i9 = R.id.tv_time_limit;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time_limit);
                            if (textView2 != null) {
                                return new ListItemEntranceCarBinding((ConstraintLayout) view, imageView, imageView2, findChildViewById, imageView3, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemEntranceCarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemEntranceCarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_entrance_car, viewGroup, false);
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
