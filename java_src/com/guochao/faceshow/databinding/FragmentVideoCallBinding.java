package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
/* loaded from: classes2.dex */
public final class FragmentVideoCallBinding implements ViewBinding {
    @NonNull
    public final FrameLayout animView;
    @NonNull
    public final TextView callTime;
    @NonNull
    public final FrameLayout chatArea;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LiveScrollToClearScreenView scrollLayout;
    @NonNull
    public final Space smallVideoMask;
    @NonNull
    public final FrameLayout smallVideoMaskLay;
    @NonNull
    public final LinearLayout statusWight;
    @NonNull
    public final ImageView trtcHangUp;

    private FragmentVideoCallBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull FrameLayout frameLayout3, @NonNull LiveScrollToClearScreenView liveScrollToClearScreenView, @NonNull Space space, @NonNull FrameLayout frameLayout4, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.animView = frameLayout2;
        this.callTime = textView;
        this.chatArea = frameLayout3;
        this.scrollLayout = liveScrollToClearScreenView;
        this.smallVideoMask = space;
        this.smallVideoMaskLay = frameLayout4;
        this.statusWight = linearLayout;
        this.trtcHangUp = imageView;
    }

    @NonNull
    public static FragmentVideoCallBinding bind(@NonNull View view) {
        int i9 = R.id.anim_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.anim_view);
        if (frameLayout != null) {
            i9 = R.id.call_time;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.call_time);
            if (textView != null) {
                i9 = R.id.chat_area;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.chat_area);
                if (frameLayout2 != null) {
                    i9 = R.id.scroll_layout;
                    LiveScrollToClearScreenView liveScrollToClearScreenView = (LiveScrollToClearScreenView) ViewBindings.findChildViewById(view, R.id.scroll_layout);
                    if (liveScrollToClearScreenView != null) {
                        i9 = R.id.small_video_mask;
                        Space space = (Space) ViewBindings.findChildViewById(view, R.id.small_video_mask);
                        if (space != null) {
                            i9 = R.id.small_video_mask_lay;
                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.small_video_mask_lay);
                            if (frameLayout3 != null) {
                                i9 = R.id.status_wight;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.status_wight);
                                if (linearLayout != null) {
                                    i9 = R.id.trtc_hang_up;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.trtc_hang_up);
                                    if (imageView != null) {
                                        return new FragmentVideoCallBinding((FrameLayout) view, frameLayout, textView, frameLayout2, liveScrollToClearScreenView, space, frameLayout3, linearLayout, imageView);
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
    public static FragmentVideoCallBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVideoCallBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_video_call, viewGroup, false);
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
