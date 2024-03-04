package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.FaceCastWebView;
/* loaded from: classes2.dex */
public final class FragmentRecaptchaBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final FaceCastWebView webView;

    private FragmentRecaptchaBinding(@NonNull FrameLayout frameLayout, @NonNull FaceCastWebView faceCastWebView) {
        this.rootView = frameLayout;
        this.webView = faceCastWebView;
    }

    @NonNull
    public static FragmentRecaptchaBinding bind(@NonNull View view) {
        FaceCastWebView faceCastWebView = (FaceCastWebView) ViewBindings.findChildViewById(view, R.id.web_view);
        if (faceCastWebView != null) {
            return new FragmentRecaptchaBinding((FrameLayout) view, faceCastWebView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.web_view)));
    }

    @NonNull
    public static FragmentRecaptchaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentRecaptchaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_recaptcha, viewGroup, false);
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
