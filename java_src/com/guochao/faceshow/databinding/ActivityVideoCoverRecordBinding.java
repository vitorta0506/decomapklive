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
import com.guochao.faceshow.aaspring.views.VideoCoverCircleProgressView;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes2.dex */
public final class ActivityVideoCoverRecordBinding implements ViewBinding {
    @NonNull
    public final ImageView cancel;
    @NonNull
    public final LinearLayout effect;
    @NonNull
    public final VideoCoverCircleProgressView record;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView touchView;
    @NonNull
    public final TXCloudVideoView txCloudVideoView;

    private ActivityVideoCoverRecordBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull VideoCoverCircleProgressView videoCoverCircleProgressView, @NonNull ImageView imageView2, @NonNull TXCloudVideoView tXCloudVideoView) {
        this.rootView = linearLayout;
        this.cancel = imageView;
        this.effect = linearLayout2;
        this.record = videoCoverCircleProgressView;
        this.touchView = imageView2;
        this.txCloudVideoView = tXCloudVideoView;
    }

    @NonNull
    public static ActivityVideoCoverRecordBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (imageView != null) {
            i9 = R.id.effect;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.effect);
            if (linearLayout != null) {
                i9 = R.id.record;
                VideoCoverCircleProgressView videoCoverCircleProgressView = (VideoCoverCircleProgressView) ViewBindings.findChildViewById(view, R.id.record);
                if (videoCoverCircleProgressView != null) {
                    i9 = R.id.touch_view;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.touch_view);
                    if (imageView2 != null) {
                        i9 = R.id.txCloudVideoView;
                        TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) ViewBindings.findChildViewById(view, R.id.txCloudVideoView);
                        if (tXCloudVideoView != null) {
                            return new ActivityVideoCoverRecordBinding((LinearLayout) view, imageView, linearLayout, videoCoverCircleProgressView, imageView2, tXCloudVideoView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityVideoCoverRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityVideoCoverRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_video_cover_record, viewGroup, false);
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
