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
public final class FragmentLittlePusherBinding implements ViewBinding {
    @NonNull
    public final ImageView avatar;
    @NonNull
    public final TextView countDownTips;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final FrameLayout txCloudVideoView;
    @NonNull
    public final FrameLayout videoContent;

    private FragmentLittlePusherBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.avatar = imageView;
        this.countDownTips = textView;
        this.txCloudVideoView = frameLayout2;
        this.videoContent = frameLayout3;
    }

    @NonNull
    public static FragmentLittlePusherBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (imageView != null) {
            i9 = R.id.count_down_tips;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_down_tips);
            if (textView != null) {
                i9 = R.id.txCloudVideoView;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.txCloudVideoView);
                if (frameLayout != null) {
                    FrameLayout frameLayout2 = (FrameLayout) view;
                    return new FragmentLittlePusherBinding(frameLayout2, imageView, textView, frameLayout, frameLayout2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLittlePusherBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLittlePusherBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_little_pusher, viewGroup, false);
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
