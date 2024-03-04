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
import com.guochao.faceshow.aaspring.views.RoundCornerView;
import com.guochao.faceshow.aaspring.views.WebGameLayout;
/* loaded from: classes2.dex */
public final class FragmentWebGameBinding implements ViewBinding {
    @NonNull
    public final View click;
    @NonNull
    public final WebGameLayout content;
    @NonNull
    public final RoundCornerView contentLayout;
    @NonNull
    public final FrameLayout realContent;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final FaceCastWebView webView;

    private FragmentWebGameBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull WebGameLayout webGameLayout, @NonNull RoundCornerView roundCornerView, @NonNull FrameLayout frameLayout2, @NonNull FaceCastWebView faceCastWebView) {
        this.rootView = frameLayout;
        this.click = view;
        this.content = webGameLayout;
        this.contentLayout = roundCornerView;
        this.realContent = frameLayout2;
        this.webView = faceCastWebView;
    }

    @NonNull
    public static FragmentWebGameBinding bind(@NonNull View view) {
        int i9 = R.id.click;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.click);
        if (findChildViewById != null) {
            i9 = R.id.content;
            WebGameLayout webGameLayout = (WebGameLayout) ViewBindings.findChildViewById(view, R.id.content);
            if (webGameLayout != null) {
                i9 = R.id.content_layout;
                RoundCornerView roundCornerView = (RoundCornerView) ViewBindings.findChildViewById(view, R.id.content_layout);
                if (roundCornerView != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    i9 = R.id.web_view;
                    FaceCastWebView faceCastWebView = (FaceCastWebView) ViewBindings.findChildViewById(view, R.id.web_view);
                    if (faceCastWebView != null) {
                        return new FragmentWebGameBinding(frameLayout, findChildViewById, webGameLayout, roundCornerView, frameLayout, faceCastWebView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentWebGameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentWebGameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_web_game, viewGroup, false);
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
