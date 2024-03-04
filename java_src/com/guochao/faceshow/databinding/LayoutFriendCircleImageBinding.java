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
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
/* loaded from: classes2.dex */
public final class LayoutFriendCircleImageBinding implements ViewBinding {
    @NonNull
    public final FrameLayout bgFL;
    @NonNull
    public final FrameLayout content;
    @NonNull
    public final ImageView gifIndicator;
    @NonNull
    public final RatioHeightImageView img;
    @NonNull
    public final TextView numTV;
    @NonNull
    private final FrameLayout rootView;

    private LayoutFriendCircleImageBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView, @NonNull RatioHeightImageView ratioHeightImageView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.bgFL = frameLayout2;
        this.content = frameLayout3;
        this.gifIndicator = imageView;
        this.img = ratioHeightImageView;
        this.numTV = textView;
    }

    @NonNull
    public static LayoutFriendCircleImageBinding bind(@NonNull View view) {
        int i9 = R.id.bgFL;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.bgFL);
        if (frameLayout != null) {
            FrameLayout frameLayout2 = (FrameLayout) view;
            i9 = R.id.gif_indicator;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gif_indicator);
            if (imageView != null) {
                i9 = R.id.img;
                RatioHeightImageView ratioHeightImageView = (RatioHeightImageView) ViewBindings.findChildViewById(view, R.id.img);
                if (ratioHeightImageView != null) {
                    i9 = R.id.numTV;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.numTV);
                    if (textView != null) {
                        return new LayoutFriendCircleImageBinding(frameLayout2, frameLayout, frameLayout2, imageView, ratioHeightImageView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFriendCircleImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFriendCircleImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_friend_circle_image, viewGroup, false);
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
