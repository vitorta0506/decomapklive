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
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class FragmentAudioTobeReceivedBinding implements ViewBinding {
    @NonNull
    public final View bgBlurImage;
    @NonNull
    public final ImageView blurImage;
    @NonNull
    public final TextView connectionStatus;
    @NonNull
    public final LinearLayout hangUpIcon;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final HeadPortraitView userAvatar;
    @NonNull
    public final TextView userName;

    private FragmentAudioTobeReceivedBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.bgBlurImage = view;
        this.blurImage = imageView;
        this.connectionStatus = textView;
        this.hangUpIcon = linearLayout;
        this.userAvatar = headPortraitView;
        this.userName = textView2;
    }

    @NonNull
    public static FragmentAudioTobeReceivedBinding bind(@NonNull View view) {
        int i9 = R.id.bg_blur_image;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_blur_image);
        if (findChildViewById != null) {
            i9 = R.id.blur_image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.blur_image);
            if (imageView != null) {
                i9 = R.id.connection_status;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.connection_status);
                if (textView != null) {
                    i9 = R.id.hang_up_icon;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.hang_up_icon);
                    if (linearLayout != null) {
                        i9 = R.id.user_avatar;
                        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                        if (headPortraitView != null) {
                            i9 = R.id.user_name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                            if (textView2 != null) {
                                return new FragmentAudioTobeReceivedBinding((FrameLayout) view, findChildViewById, imageView, textView, linearLayout, headPortraitView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentAudioTobeReceivedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentAudioTobeReceivedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_audio_tobe_received, viewGroup, false);
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
