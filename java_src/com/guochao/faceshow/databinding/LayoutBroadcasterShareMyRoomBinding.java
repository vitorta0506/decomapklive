package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutBroadcasterShareMyRoomBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView avatar;
    @NonNull
    public final LinearLayout contentArea;
    @NonNull
    public final ImageView icon;
    @NonNull
    public final ImageView iconLeft;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView textView;

    private LayoutBroadcasterShareMyRoomBinding(@NonNull FrameLayout frameLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.avatar = normalCircleImageView;
        this.contentArea = linearLayout;
        this.icon = imageView;
        this.iconLeft = imageView2;
        this.textView = textView;
    }

    @NonNull
    public static LayoutBroadcasterShareMyRoomBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (normalCircleImageView != null) {
            i9 = R.id.content_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_area);
            if (linearLayout != null) {
                i9 = R.id.icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
                if (imageView != null) {
                    i9 = R.id.icon_left;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_left);
                    if (imageView2 != null) {
                        i9 = R.id.text_view;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text_view);
                        if (textView != null) {
                            return new LayoutBroadcasterShareMyRoomBinding((FrameLayout) view, normalCircleImageView, linearLayout, imageView, imageView2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBroadcasterShareMyRoomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBroadcasterShareMyRoomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_broadcaster_share_my_room, viewGroup, false);
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
