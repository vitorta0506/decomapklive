package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityFriendRequestListBinding implements ViewBinding {
    @NonNull
    public final ConstraintLayout explore;
    @NonNull
    public final ImageView imgLab;
    @NonNull
    public final ImageView redPoint;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvExplore;

    private ActivityFriendRequestListBinding(@NonNull LinearLayout linearLayout, @NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.explore = constraintLayout;
        this.imgLab = imageView;
        this.redPoint = imageView2;
        this.tvExplore = textView;
    }

    @NonNull
    public static ActivityFriendRequestListBinding bind(@NonNull View view) {
        int i9 = R.id.explore;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.explore);
        if (constraintLayout != null) {
            i9 = R.id.img_lab;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_lab);
            if (imageView != null) {
                i9 = R.id.red_point;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.red_point);
                if (imageView2 != null) {
                    i9 = R.id.tv_explore;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_explore);
                    if (textView != null) {
                        return new ActivityFriendRequestListBinding((LinearLayout) view, constraintLayout, imageView, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityFriendRequestListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityFriendRequestListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_friend_request_list, viewGroup, false);
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
