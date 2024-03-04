package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DownloadDialogProgressView;
/* loaded from: classes2.dex */
public final class LoadingProgressLyBinding implements ViewBinding {
    @NonNull
    public final ImageView cancel;
    @NonNull
    public final FrameLayout center;
    @NonNull
    public final RelativeLayout layoutProgress;
    @NonNull
    public final DownloadDialogProgressView progressImg;
    @NonNull
    public final TextView progressPercent;
    @NonNull
    private final RelativeLayout rootView;

    private LoadingProgressLyBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout2, @NonNull DownloadDialogProgressView downloadDialogProgressView, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.cancel = imageView;
        this.center = frameLayout;
        this.layoutProgress = relativeLayout2;
        this.progressImg = downloadDialogProgressView;
        this.progressPercent = textView;
    }

    @NonNull
    public static LoadingProgressLyBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (imageView != null) {
            i9 = R.id.center;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.center);
            if (frameLayout != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i9 = R.id.progress_img;
                DownloadDialogProgressView downloadDialogProgressView = (DownloadDialogProgressView) ViewBindings.findChildViewById(view, R.id.progress_img);
                if (downloadDialogProgressView != null) {
                    i9 = R.id.progress_percent;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.progress_percent);
                    if (textView != null) {
                        return new LoadingProgressLyBinding(relativeLayout, imageView, frameLayout, relativeLayout, downloadDialogProgressView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LoadingProgressLyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LoadingProgressLyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.loading_progress_ly, viewGroup, false);
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
