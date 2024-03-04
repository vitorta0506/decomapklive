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
/* loaded from: classes2.dex */
public final class FragmentHourRankBinding implements ViewBinding {
    @NonNull
    public final RoundCornerView contentLayout;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final FaceCastWebView webView;

    private FragmentHourRankBinding(@NonNull FrameLayout frameLayout, @NonNull RoundCornerView roundCornerView, @NonNull FaceCastWebView faceCastWebView) {
        this.rootView = frameLayout;
        this.contentLayout = roundCornerView;
        this.webView = faceCastWebView;
    }

    @NonNull
    public static FragmentHourRankBinding bind(@NonNull View view) {
        int i9 = R.id.content_layout;
        RoundCornerView roundCornerView = (RoundCornerView) ViewBindings.findChildViewById(view, R.id.content_layout);
        if (roundCornerView != null) {
            i9 = R.id.web_view;
            FaceCastWebView faceCastWebView = (FaceCastWebView) ViewBindings.findChildViewById(view, R.id.web_view);
            if (faceCastWebView != null) {
                return new FragmentHourRankBinding((FrameLayout) view, roundCornerView, faceCastWebView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentHourRankBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentHourRankBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_hour_rank, viewGroup, false);
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
