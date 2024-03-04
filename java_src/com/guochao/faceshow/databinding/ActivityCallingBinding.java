package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes2.dex */
public final class ActivityCallingBinding implements ViewBinding {
    @NonNull
    public final TXCloudVideoView bigVideoView;
    @NonNull
    public final ImageView bigVideoViewImg;
    @NonNull
    public final FrameLayout fragmentCalling;
    @NonNull
    public final FrameLayout fragmentReceive;
    @NonNull
    public final FrameLayout rootView;
    @NonNull
    private final FrameLayout rootView_;
    @NonNull
    public final TXCloudVideoView smallVideoView;
    @NonNull
    public final ImageView smallVideoViewImg;
    @NonNull
    public final FrameLayout smallVideoViewLay;
    @NonNull
    public final View smallVideoViewPreview;

    private ActivityCallingBinding(@NonNull FrameLayout frameLayout, @NonNull TXCloudVideoView tXCloudVideoView, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull TXCloudVideoView tXCloudVideoView2, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout5, @NonNull View view) {
        this.rootView_ = frameLayout;
        this.bigVideoView = tXCloudVideoView;
        this.bigVideoViewImg = imageView;
        this.fragmentCalling = frameLayout2;
        this.fragmentReceive = frameLayout3;
        this.rootView = frameLayout4;
        this.smallVideoView = tXCloudVideoView2;
        this.smallVideoViewImg = imageView2;
        this.smallVideoViewLay = frameLayout5;
        this.smallVideoViewPreview = view;
    }

    @NonNull
    public static ActivityCallingBinding bind(@NonNull View view) {
        int i9 = R.id.big_video_view;
        TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) ViewBindings.findChildViewById(view, R.id.big_video_view);
        if (tXCloudVideoView != null) {
            i9 = R.id.big_video_view_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.big_video_view_img);
            if (imageView != null) {
                i9 = R.id.fragment_calling;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_calling);
                if (frameLayout != null) {
                    i9 = R.id.fragment_receive;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_receive);
                    if (frameLayout2 != null) {
                        FrameLayout frameLayout3 = (FrameLayout) view;
                        i9 = R.id.small_video_view;
                        TXCloudVideoView tXCloudVideoView2 = (TXCloudVideoView) ViewBindings.findChildViewById(view, R.id.small_video_view);
                        if (tXCloudVideoView2 != null) {
                            i9 = R.id.small_video_view_img;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.small_video_view_img);
                            if (imageView2 != null) {
                                i9 = R.id.small_video_view_lay;
                                FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.small_video_view_lay);
                                if (frameLayout4 != null) {
                                    i9 = R.id.small_video_view_preview;
                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.small_video_view_preview);
                                    if (findChildViewById != null) {
                                        return new ActivityCallingBinding(frameLayout3, tXCloudVideoView, imageView, frameLayout, frameLayout2, frameLayout3, tXCloudVideoView2, imageView2, frameLayout4, findChildViewById);
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
    public static ActivityCallingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityCallingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_calling, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView_;
    }
}
