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
/* loaded from: classes2.dex */
public final class UserPageVideoInfoItemBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView videoPlayFakeItemBg;
    @NonNull
    public final TextView videoPlayFakeItemIcon;

    private UserPageVideoInfoItemBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.videoPlayFakeItemBg = imageView;
        this.videoPlayFakeItemIcon = textView;
    }

    @NonNull
    public static UserPageVideoInfoItemBinding bind(@NonNull View view) {
        int i9 = R.id.video_play_fake_item_bg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.video_play_fake_item_bg);
        if (imageView != null) {
            i9 = R.id.video_play_fake_item_icon;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.video_play_fake_item_icon);
            if (textView != null) {
                return new UserPageVideoInfoItemBinding((FrameLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static UserPageVideoInfoItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static UserPageVideoInfoItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_page_video_info_item, viewGroup, false);
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
