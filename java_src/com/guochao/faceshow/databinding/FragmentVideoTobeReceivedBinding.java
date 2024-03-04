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
public final class FragmentVideoTobeReceivedBinding implements ViewBinding {
    @NonNull
    public final ImageView beautyIcon;
    @NonNull
    public final LinearLayout hangUpIcon;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LinearLayout statusWight;
    @NonNull
    public final HeadPortraitView userAvatar;
    @NonNull
    public final LinearLayout userInfo;
    @NonNull
    public final TextView userName;

    private FragmentVideoTobeReceivedBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull HeadPortraitView headPortraitView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.beautyIcon = imageView;
        this.hangUpIcon = linearLayout;
        this.statusWight = linearLayout2;
        this.userAvatar = headPortraitView;
        this.userInfo = linearLayout3;
        this.userName = textView;
    }

    @NonNull
    public static FragmentVideoTobeReceivedBinding bind(@NonNull View view) {
        int i9 = R.id.beauty_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.beauty_icon);
        if (imageView != null) {
            i9 = R.id.hang_up_icon;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.hang_up_icon);
            if (linearLayout != null) {
                i9 = R.id.status_wight;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.status_wight);
                if (linearLayout2 != null) {
                    i9 = R.id.user_avatar;
                    HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                    if (headPortraitView != null) {
                        i9 = R.id.user_info;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info);
                        if (linearLayout3 != null) {
                            i9 = R.id.user_name;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                            if (textView != null) {
                                return new FragmentVideoTobeReceivedBinding((FrameLayout) view, imageView, linearLayout, linearLayout2, headPortraitView, linearLayout3, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVideoTobeReceivedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVideoTobeReceivedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_video_tobe_received, viewGroup, false);
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
