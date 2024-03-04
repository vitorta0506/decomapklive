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
import com.google.android.exoplayer2.ui.PlayerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DownloadDialogProgressView;
/* loaded from: classes2.dex */
public final class ActivityImVideoBinding implements ViewBinding {
    @NonNull
    public final FrameLayout content;
    @NonNull
    public final ImageView imageThumb;
    @NonNull
    public final ImageView play;
    @NonNull
    public final PlayerView playBt;
    @NonNull
    public final DownloadDialogProgressView progress;
    @NonNull
    public final FrameLayout progressArea;
    @NonNull
    public final TextView progressTv;
    @NonNull
    private final FrameLayout rootView;

    private ActivityImVideoBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull PlayerView playerView, @NonNull DownloadDialogProgressView downloadDialogProgressView, @NonNull FrameLayout frameLayout3, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.content = frameLayout2;
        this.imageThumb = imageView;
        this.play = imageView2;
        this.playBt = playerView;
        this.progress = downloadDialogProgressView;
        this.progressArea = frameLayout3;
        this.progressTv = textView;
    }

    @NonNull
    public static ActivityImVideoBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.image_thumb;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image_thumb);
        if (imageView != null) {
            i9 = R.id.play;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.play);
            if (imageView2 != null) {
                i9 = R.id.play_bt;
                PlayerView playerView = (PlayerView) ViewBindings.findChildViewById(view, R.id.play_bt);
                if (playerView != null) {
                    i9 = R.id.progress;
                    DownloadDialogProgressView downloadDialogProgressView = (DownloadDialogProgressView) ViewBindings.findChildViewById(view, R.id.progress);
                    if (downloadDialogProgressView != null) {
                        i9 = R.id.progress_area;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.progress_area);
                        if (frameLayout2 != null) {
                            i9 = R.id.progress_tv;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.progress_tv);
                            if (textView != null) {
                                return new ActivityImVideoBinding(frameLayout, frameLayout, imageView, imageView2, playerView, downloadDialogProgressView, frameLayout2, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityImVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityImVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_im_video, viewGroup, false);
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
