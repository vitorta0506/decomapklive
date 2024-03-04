package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.SquareFrameLayout;
import com.guochao.faceshow.views.ItemDownloadProgressView;
/* loaded from: classes2.dex */
public final class ItemFacePendantBinding implements ViewBinding {
    @NonNull
    public final ImageView imageDown;
    @NonNull
    public final ImageView motionPannelItemImg;
    @NonNull
    public final ItemDownloadProgressView progressDownload;
    @NonNull
    private final SquareFrameLayout rootView;

    private ItemFacePendantBinding(@NonNull SquareFrameLayout squareFrameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ItemDownloadProgressView itemDownloadProgressView) {
        this.rootView = squareFrameLayout;
        this.imageDown = imageView;
        this.motionPannelItemImg = imageView2;
        this.progressDownload = itemDownloadProgressView;
    }

    @NonNull
    public static ItemFacePendantBinding bind(@NonNull View view) {
        int i9 = R.id.image_down;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image_down);
        if (imageView != null) {
            i9 = R.id.motion_pannel_item_img;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.motion_pannel_item_img);
            if (imageView2 != null) {
                i9 = R.id.progress_download;
                ItemDownloadProgressView itemDownloadProgressView = (ItemDownloadProgressView) ViewBindings.findChildViewById(view, R.id.progress_download);
                if (itemDownloadProgressView != null) {
                    return new ItemFacePendantBinding((SquareFrameLayout) view, imageView, imageView2, itemDownloadProgressView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemFacePendantBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFacePendantBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_face_pendant, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public SquareFrameLayout getRoot() {
        return this.rootView;
    }
}
