package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes2.dex */
public final class ActivityVideoPreviewBinding implements ViewBinding {
    @NonNull
    public final ImageView cover;
    @NonNull
    public final TextView progressTime;
    @NonNull
    public final RelativeLayout publishLayout;
    @NonNull
    public final ImageView recordDelete;
    @NonNull
    public final ImageView recordDownload;
    @NonNull
    public final ImageView recordPreview;
    @NonNull
    public final ImageView recordPublish;
    @NonNull
    public final RelativeLayout rlPlayRoot;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final SeekBar seekbar;
    @NonNull
    public final TXCloudVideoView videoView;

    private ActivityVideoPreviewBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull RelativeLayout relativeLayout3, @NonNull SeekBar seekBar, @NonNull TXCloudVideoView tXCloudVideoView) {
        this.rootView = relativeLayout;
        this.cover = imageView;
        this.progressTime = textView;
        this.publishLayout = relativeLayout2;
        this.recordDelete = imageView2;
        this.recordDownload = imageView3;
        this.recordPreview = imageView4;
        this.recordPublish = imageView5;
        this.rlPlayRoot = relativeLayout3;
        this.seekbar = seekBar;
        this.videoView = tXCloudVideoView;
    }

    @NonNull
    public static ActivityVideoPreviewBinding bind(@NonNull View view) {
        int i9 = R.id.cover;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cover);
        if (imageView != null) {
            i9 = R.id.progress_time;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.progress_time);
            if (textView != null) {
                i9 = R.id.publishLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.publishLayout);
                if (relativeLayout != null) {
                    i9 = R.id.record_delete;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.record_delete);
                    if (imageView2 != null) {
                        i9 = R.id.record_download;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.record_download);
                        if (imageView3 != null) {
                            i9 = R.id.record_preview;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.record_preview);
                            if (imageView4 != null) {
                                i9 = R.id.record_publish;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.record_publish);
                                if (imageView5 != null) {
                                    RelativeLayout relativeLayout2 = (RelativeLayout) view;
                                    i9 = R.id.seekbar;
                                    SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.seekbar);
                                    if (seekBar != null) {
                                        i9 = R.id.video_view;
                                        TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) ViewBindings.findChildViewById(view, R.id.video_view);
                                        if (tXCloudVideoView != null) {
                                            return new ActivityVideoPreviewBinding(relativeLayout2, imageView, textView, relativeLayout, imageView2, imageView3, imageView4, imageView5, relativeLayout2, seekBar, tXCloudVideoView);
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
    public static ActivityVideoPreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityVideoPreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_video_preview, viewGroup, false);
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
