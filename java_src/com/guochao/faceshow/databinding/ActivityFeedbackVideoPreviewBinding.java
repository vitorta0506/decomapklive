package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.exoplayer2.ui.PlayerView;
import com.guochao.faceshow.R;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes2.dex */
public final class ActivityFeedbackVideoPreviewBinding implements ViewBinding {
    @NonNull
    public final TextView current;
    @NonNull
    public final TextView duration;
    @NonNull
    public final ImageView play;
    @NonNull
    public final ImageView playCenter;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SeekBar seekBar;
    @NonNull
    public final TXCloudVideoView txCloudVideoView;
    @NonNull
    public final PlayerView videoView;

    private ActivityFeedbackVideoPreviewBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SeekBar seekBar, @NonNull TXCloudVideoView tXCloudVideoView, @NonNull PlayerView playerView) {
        this.rootView = frameLayout;
        this.current = textView;
        this.duration = textView2;
        this.play = imageView;
        this.playCenter = imageView2;
        this.seekBar = seekBar;
        this.txCloudVideoView = tXCloudVideoView;
        this.videoView = playerView;
    }

    @NonNull
    public static ActivityFeedbackVideoPreviewBinding bind(@NonNull View view) {
        int i9 = R.id.current;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.current);
        if (textView != null) {
            i9 = R.id.duration;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.duration);
            if (textView2 != null) {
                i9 = R.id.play;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.play);
                if (imageView != null) {
                    i9 = R.id.play_center;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.play_center);
                    if (imageView2 != null) {
                        i9 = R.id.seek_bar;
                        SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.seek_bar);
                        if (seekBar != null) {
                            i9 = R.id.txCloudVideoView;
                            TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) ViewBindings.findChildViewById(view, R.id.txCloudVideoView);
                            if (tXCloudVideoView != null) {
                                i9 = R.id.video_view;
                                PlayerView playerView = (PlayerView) ViewBindings.findChildViewById(view, R.id.video_view);
                                if (playerView != null) {
                                    return new ActivityFeedbackVideoPreviewBinding((FrameLayout) view, textView, textView2, imageView, imageView2, seekBar, tXCloudVideoView, playerView);
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
    public static ActivityFeedbackVideoPreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityFeedbackVideoPreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_feedback_video_preview, viewGroup, false);
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
