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
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
/* loaded from: classes2.dex */
public final class FragmentAudioCallBinding implements ViewBinding {
    @NonNull
    public final FrameLayout animView;
    @NonNull
    public final View bgBlurImage;
    @NonNull
    public final ImageView blurImage;
    @NonNull
    public final TextView callTime;
    @NonNull
    public final FrameLayout chatArea;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LiveScrollToClearScreenView scrollLayout;
    @NonNull
    public final LinearLayout statusWight;
    @NonNull
    public final ImageView trtcHangUp;
    @NonNull
    public final HeadPortraitView userAvatar;
    @NonNull
    public final LinearLayout userInfoLayout;
    @NonNull
    public final TextView userName;

    private FragmentAudioCallBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout3, @NonNull LiveScrollToClearScreenView liveScrollToClearScreenView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView2, @NonNull HeadPortraitView headPortraitView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.animView = frameLayout2;
        this.bgBlurImage = view;
        this.blurImage = imageView;
        this.callTime = textView;
        this.chatArea = frameLayout3;
        this.scrollLayout = liveScrollToClearScreenView;
        this.statusWight = linearLayout;
        this.trtcHangUp = imageView2;
        this.userAvatar = headPortraitView;
        this.userInfoLayout = linearLayout2;
        this.userName = textView2;
    }

    @NonNull
    public static FragmentAudioCallBinding bind(@NonNull View view) {
        int i9 = R.id.anim_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.anim_view);
        if (frameLayout != null) {
            i9 = R.id.bg_blur_image;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_blur_image);
            if (findChildViewById != null) {
                i9 = R.id.blur_image;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.blur_image);
                if (imageView != null) {
                    i9 = R.id.call_time;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.call_time);
                    if (textView != null) {
                        i9 = R.id.chat_area;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.chat_area);
                        if (frameLayout2 != null) {
                            i9 = R.id.scroll_layout;
                            LiveScrollToClearScreenView liveScrollToClearScreenView = (LiveScrollToClearScreenView) ViewBindings.findChildViewById(view, R.id.scroll_layout);
                            if (liveScrollToClearScreenView != null) {
                                i9 = R.id.status_wight;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.status_wight);
                                if (linearLayout != null) {
                                    i9 = R.id.trtc_hang_up;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.trtc_hang_up);
                                    if (imageView2 != null) {
                                        i9 = R.id.user_avatar;
                                        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                                        if (headPortraitView != null) {
                                            i9 = R.id.user_info_layout;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_layout);
                                            if (linearLayout2 != null) {
                                                i9 = R.id.user_name;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                                if (textView2 != null) {
                                                    return new FragmentAudioCallBinding((FrameLayout) view, frameLayout, findChildViewById, imageView, textView, frameLayout2, liveScrollToClearScreenView, linearLayout, imageView2, headPortraitView, linearLayout2, textView2);
                                                }
                                            }
                                        }
                                    }
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
    public static FragmentAudioCallBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentAudioCallBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_audio_call, viewGroup, false);
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
