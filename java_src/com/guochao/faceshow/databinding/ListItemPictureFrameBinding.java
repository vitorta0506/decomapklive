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
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class ListItemPictureFrameBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView ivIsCheck;
    @NonNull
    public final LinearLayout laytest;
    @NonNull
    public final View mask;
    @NonNull
    public final ImageView mvpIV;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView tvPictureFrameName;
    @NonNull
    public final TextView tvTimeLimit;

    private ListItemPictureFrameBinding(@NonNull ConstraintLayout constraintLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = constraintLayout;
        this.avatarView = headPortraitView;
        this.ivIsCheck = imageView;
        this.laytest = linearLayout;
        this.mask = view;
        this.mvpIV = imageView2;
        this.tvPictureFrameName = textView;
        this.tvTimeLimit = textView2;
    }

    @NonNull
    public static ListItemPictureFrameBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.iv_is_check;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_is_check);
            if (imageView != null) {
                i9 = R.id.laytest;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.laytest);
                if (linearLayout != null) {
                    i9 = R.id.mask;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.mask);
                    if (findChildViewById != null) {
                        i9 = R.id.mvpIV;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.mvpIV);
                        if (imageView2 != null) {
                            i9 = R.id.tv_picture_frame_name;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_picture_frame_name);
                            if (textView != null) {
                                i9 = R.id.tv_time_limit;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time_limit);
                                if (textView2 != null) {
                                    return new ListItemPictureFrameBinding((ConstraintLayout) view, headPortraitView, imageView, linearLayout, findChildViewById, imageView2, textView, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemPictureFrameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemPictureFrameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_picture_frame, viewGroup, false);
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
