package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.ugc.zxing.view.ViewfinderView;
/* loaded from: classes2.dex */
public final class ActivityScanBinding implements ViewBinding {
    @NonNull
    public final ImageView ivQrCode;
    @NonNull
    public final LinearLayout llQrCode;
    @NonNull
    public final SurfaceView previewView;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView title;
    @NonNull
    public final Toolbar toolbar;
    @NonNull
    public final ViewfinderView viewfinderView;

    private ActivityScanBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull SurfaceView surfaceView, @NonNull TextView textView, @NonNull Toolbar toolbar, @NonNull ViewfinderView viewfinderView) {
        this.rootView = relativeLayout;
        this.ivQrCode = imageView;
        this.llQrCode = linearLayout;
        this.previewView = surfaceView;
        this.title = textView;
        this.toolbar = toolbar;
        this.viewfinderView = viewfinderView;
    }

    @NonNull
    public static ActivityScanBinding bind(@NonNull View view) {
        int i9 = R.id.iv_qr_code;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_qr_code);
        if (imageView != null) {
            i9 = R.id.ll_qr_code;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_qr_code);
            if (linearLayout != null) {
                i9 = R.id.preview_view;
                SurfaceView surfaceView = (SurfaceView) ViewBindings.findChildViewById(view, R.id.preview_view);
                if (surfaceView != null) {
                    i9 = 16908310;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, 16908310);
                    if (textView != null) {
                        i9 = R.id.toolbar;
                        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                        if (toolbar != null) {
                            i9 = R.id.viewfinder_view;
                            ViewfinderView viewfinderView = (ViewfinderView) ViewBindings.findChildViewById(view, R.id.viewfinder_view);
                            if (viewfinderView != null) {
                                return new ActivityScanBinding((RelativeLayout) view, imageView, linearLayout, surfaceView, textView, toolbar, viewfinderView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityScanBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityScanBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_scan, viewGroup, false);
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
