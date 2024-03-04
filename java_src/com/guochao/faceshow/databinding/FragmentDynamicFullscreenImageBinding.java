package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DownloadDialogProgressView;
import com.guochao.faceshow.aaspring.views.GifImageView;
/* loaded from: classes2.dex */
public final class FragmentDynamicFullscreenImageBinding implements ViewBinding {
    @NonNull
    public final GifImageView photoView;
    @NonNull
    public final FrameLayout progress;
    @NonNull
    public final DownloadDialogProgressView progressImg;
    @NonNull
    public final TextView progressPercent;
    @NonNull
    private final FrameLayout rootView;

    private FragmentDynamicFullscreenImageBinding(@NonNull FrameLayout frameLayout, @NonNull GifImageView gifImageView, @NonNull FrameLayout frameLayout2, @NonNull DownloadDialogProgressView downloadDialogProgressView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.photoView = gifImageView;
        this.progress = frameLayout2;
        this.progressImg = downloadDialogProgressView;
        this.progressPercent = textView;
    }

    @NonNull
    public static FragmentDynamicFullscreenImageBinding bind(@NonNull View view) {
        int i9 = R.id.photo_view;
        GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, R.id.photo_view);
        if (gifImageView != null) {
            i9 = R.id.progress;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.progress);
            if (frameLayout != null) {
                i9 = R.id.progress_img;
                DownloadDialogProgressView downloadDialogProgressView = (DownloadDialogProgressView) ViewBindings.findChildViewById(view, R.id.progress_img);
                if (downloadDialogProgressView != null) {
                    i9 = R.id.progress_percent;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.progress_percent);
                    if (textView != null) {
                        return new FragmentDynamicFullscreenImageBinding((FrameLayout) view, gifImageView, frameLayout, downloadDialogProgressView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentDynamicFullscreenImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentDynamicFullscreenImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_dynamic_fullscreen_image, viewGroup, false);
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
