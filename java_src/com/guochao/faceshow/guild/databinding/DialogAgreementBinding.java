package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.aaspring.views.FaceCastWebView;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
/* loaded from: classes4.dex */
public final class DialogAgreementBinding implements ViewBinding {
    @NonNull
    public final ImageView close;
    @NonNull
    public final FrameLayout flContent;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final FaceCastWebView webView;

    private DialogAgreementBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull FaceCastWebView faceCastWebView) {
        this.rootView = frameLayout;
        this.close = imageView;
        this.flContent = frameLayout2;
        this.webView = faceCastWebView;
    }

    @NonNull
    public static DialogAgreementBinding bind(@NonNull View view) {
        int i9 = R$id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.fl_content;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
            if (frameLayout != null) {
                i9 = R$id.webView;
                FaceCastWebView faceCastWebView = (FaceCastWebView) ViewBindings.findChildViewById(view, i9);
                if (faceCastWebView != null) {
                    return new DialogAgreementBinding((FrameLayout) view, imageView, frameLayout, faceCastWebView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogAgreementBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogAgreementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.dialog_agreement, viewGroup, false);
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
