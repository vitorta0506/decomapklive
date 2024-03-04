package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.FaceCastWebView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityWebviewBinding implements ViewBinding {
    @NonNull
    private final FaceCastWebView rootView;
    @NonNull
    public final FaceCastWebView webView;

    private ActivityWebviewBinding(@NonNull FaceCastWebView faceCastWebView, @NonNull FaceCastWebView faceCastWebView2) {
        this.rootView = faceCastWebView;
        this.webView = faceCastWebView2;
    }

    @NonNull
    public static ActivityWebviewBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        FaceCastWebView faceCastWebView = (FaceCastWebView) view;
        return new ActivityWebviewBinding(faceCastWebView, faceCastWebView);
    }

    @NonNull
    public static ActivityWebviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityWebviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_webview, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FaceCastWebView getRoot() {
        return this.rootView;
    }
}
