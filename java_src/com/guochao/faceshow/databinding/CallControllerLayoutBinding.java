package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class CallControllerLayoutBinding implements ViewBinding {
    @NonNull
    public final LinearLayout callControllerLay;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView trtcMic;
    @NonNull
    public final ImageView trtcReport;
    @NonNull
    public final ImageView trtcSwitchCamera;
    @NonNull
    public final ImageView trtcVoice;

    private CallControllerLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4) {
        this.rootView = linearLayout;
        this.callControllerLay = linearLayout2;
        this.trtcMic = imageView;
        this.trtcReport = imageView2;
        this.trtcSwitchCamera = imageView3;
        this.trtcVoice = imageView4;
    }

    @NonNull
    public static CallControllerLayoutBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.trtc_mic;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.trtc_mic);
        if (imageView != null) {
            i9 = R.id.trtc_report;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.trtc_report);
            if (imageView2 != null) {
                i9 = R.id.trtc_switch_camera;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.trtc_switch_camera);
                if (imageView3 != null) {
                    i9 = R.id.trtc_voice;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.trtc_voice);
                    if (imageView4 != null) {
                        return new CallControllerLayoutBinding(linearLayout, linearLayout, imageView, imageView2, imageView3, imageView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static CallControllerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static CallControllerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.call_controller_layout, viewGroup, false);
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
