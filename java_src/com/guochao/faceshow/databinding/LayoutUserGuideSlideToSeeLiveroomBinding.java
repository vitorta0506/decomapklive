package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.UserGuideTouchView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class LayoutUserGuideSlideToSeeLiveroomBinding implements ViewBinding {
    @NonNull
    public final UserGuideTouchView gudieSlideUp;
    @NonNull
    private final UserGuideTouchView rootView;
    @NonNull
    public final SVGAImageView svga;
    @NonNull
    public final TextView text;

    private LayoutUserGuideSlideToSeeLiveroomBinding(@NonNull UserGuideTouchView userGuideTouchView, @NonNull UserGuideTouchView userGuideTouchView2, @NonNull SVGAImageView sVGAImageView, @NonNull TextView textView) {
        this.rootView = userGuideTouchView;
        this.gudieSlideUp = userGuideTouchView2;
        this.svga = sVGAImageView;
        this.text = textView;
    }

    @NonNull
    public static LayoutUserGuideSlideToSeeLiveroomBinding bind(@NonNull View view) {
        UserGuideTouchView userGuideTouchView = (UserGuideTouchView) view;
        int i9 = R.id.svga;
        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.svga);
        if (sVGAImageView != null) {
            i9 = R.id.text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text);
            if (textView != null) {
                return new LayoutUserGuideSlideToSeeLiveroomBinding(userGuideTouchView, userGuideTouchView, sVGAImageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutUserGuideSlideToSeeLiveroomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutUserGuideSlideToSeeLiveroomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_user_guide_slide_to_see_liveroom, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public UserGuideTouchView getRoot() {
        return this.rootView;
    }
}
