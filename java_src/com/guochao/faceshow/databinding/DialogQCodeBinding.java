package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogQCodeBinding implements ViewBinding {
    @NonNull
    public final CardView cardView;
    @NonNull
    public final ImageView ivScan;
    @NonNull
    public final ImageView qCode;
    @NonNull
    public final ImageView qCodeDownload;
    @NonNull
    private final FrameLayout rootView;

    private DialogQCodeBinding(@NonNull FrameLayout frameLayout, @NonNull CardView cardView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3) {
        this.rootView = frameLayout;
        this.cardView = cardView;
        this.ivScan = imageView;
        this.qCode = imageView2;
        this.qCodeDownload = imageView3;
    }

    @NonNull
    public static DialogQCodeBinding bind(@NonNull View view) {
        int i9 = R.id.card_view;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (cardView != null) {
            i9 = R.id.iv_scan;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_scan);
            if (imageView != null) {
                i9 = R.id.q_code;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.q_code);
                if (imageView2 != null) {
                    i9 = R.id.q_code_download;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.q_code_download);
                    if (imageView3 != null) {
                        return new DialogQCodeBinding((FrameLayout) view, cardView, imageView, imageView2, imageView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogQCodeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogQCodeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_q_code, viewGroup, false);
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
