package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes2.dex */
public final class VideoListHelloPlayVideoBinding implements ViewBinding {
    @NonNull
    public final RelativeLayout itemLayout;
    @NonNull
    public final ImageButton playBt;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TXCloudVideoView txCloudVideoView;
    @NonNull
    public final ImageView videoCover;
    @NonNull
    public final ProgressBar videoProgress;

    private VideoListHelloPlayVideoBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ImageButton imageButton, @NonNull TXCloudVideoView tXCloudVideoView, @NonNull ImageView imageView, @NonNull ProgressBar progressBar) {
        this.rootView = relativeLayout;
        this.itemLayout = relativeLayout2;
        this.playBt = imageButton;
        this.txCloudVideoView = tXCloudVideoView;
        this.videoCover = imageView;
        this.videoProgress = progressBar;
    }

    @NonNull
    public static VideoListHelloPlayVideoBinding bind(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i9 = R.id.play_bt;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.play_bt);
        if (imageButton != null) {
            i9 = R.id.txCloudVideoView;
            TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) ViewBindings.findChildViewById(view, R.id.txCloudVideoView);
            if (tXCloudVideoView != null) {
                i9 = R.id.video_cover;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.video_cover);
                if (imageView != null) {
                    i9 = R.id.video_progress;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.video_progress);
                    if (progressBar != null) {
                        return new VideoListHelloPlayVideoBinding(relativeLayout, relativeLayout, imageButton, tXCloudVideoView, imageView, progressBar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static VideoListHelloPlayVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static VideoListHelloPlayVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.video_list_hello_play_video, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
