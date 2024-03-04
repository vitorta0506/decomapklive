package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentLayoutChatControllerBinding implements ViewBinding {
    @NonNull
    public final ImageView btnSend;
    @NonNull
    public final ImageView cameraIm;
    @NonNull
    public final FrameLayout extraArea;
    @NonNull
    public final ImageView face;
    @NonNull
    public final FrameLayout fastEmoji;
    @NonNull
    public final ImageView giftIm;
    @NonNull
    public final EditText input;
    @NonNull
    public final LinearLayout linearLayoutIm;
    @NonNull
    public final ImageView photoIm;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final FrameLayout videoIm;
    @NonNull
    public final ImageView yuyinIm;

    private FragmentLayoutChatControllerBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView4, @NonNull EditText editText, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView5, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView6) {
        this.rootView = linearLayout;
        this.btnSend = imageView;
        this.cameraIm = imageView2;
        this.extraArea = frameLayout;
        this.face = imageView3;
        this.fastEmoji = frameLayout2;
        this.giftIm = imageView4;
        this.input = editText;
        this.linearLayoutIm = linearLayout2;
        this.photoIm = imageView5;
        this.videoIm = frameLayout3;
        this.yuyinIm = imageView6;
    }

    @NonNull
    public static FragmentLayoutChatControllerBinding bind(@NonNull View view) {
        int i9 = R.id.btn_send;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_send);
        if (imageView != null) {
            i9 = R.id.camera_im;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.camera_im);
            if (imageView2 != null) {
                i9 = R.id.extra_area;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.extra_area);
                if (frameLayout != null) {
                    i9 = R.id.face;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.face);
                    if (imageView3 != null) {
                        i9 = R.id.fast_emoji;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fast_emoji);
                        if (frameLayout2 != null) {
                            i9 = R.id.gift_im;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_im);
                            if (imageView4 != null) {
                                i9 = R.id.input;
                                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.input);
                                if (editText != null) {
                                    i9 = R.id.linearLayout_im;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout_im);
                                    if (linearLayout != null) {
                                        i9 = R.id.photo_im;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.photo_im);
                                        if (imageView5 != null) {
                                            i9 = R.id.video_im;
                                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.video_im);
                                            if (frameLayout3 != null) {
                                                i9 = R.id.yuyin_im;
                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.yuyin_im);
                                                if (imageView6 != null) {
                                                    return new FragmentLayoutChatControllerBinding((LinearLayout) view, imageView, imageView2, frameLayout, imageView3, frameLayout2, imageView4, editText, linearLayout, imageView5, frameLayout3, imageView6);
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
    public static FragmentLayoutChatControllerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLayoutChatControllerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_layout_chat_controller, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
