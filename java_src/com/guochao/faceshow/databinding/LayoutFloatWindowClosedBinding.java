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
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class LayoutFloatWindowClosedBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView cover;
    @NonNull
    public final TextView nickname;
    @NonNull
    private final FrameLayout rootView;

    private LayoutFloatWindowClosedBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.cover = imageView;
        this.nickname = textView;
    }

    @NonNull
    public static LayoutFloatWindowClosedBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.cover;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cover);
            if (imageView != null) {
                i9 = R.id.nickname;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
                if (textView != null) {
                    return new LayoutFloatWindowClosedBinding((FrameLayout) view, headPortraitView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFloatWindowClosedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFloatWindowClosedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_float_window_closed, viewGroup, false);
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
