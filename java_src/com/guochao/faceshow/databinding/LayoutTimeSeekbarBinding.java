package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.ZZTimeRangeSlider;
/* loaded from: classes2.dex */
public final class LayoutTimeSeekbarBinding implements ViewBinding {
    @NonNull
    public final View longBg;
    @NonNull
    public final View middleView;
    @NonNull
    public final ImageView palygreed;
    @NonNull
    public final LinearLayout progresslay;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final ZZTimeRangeSlider timeRangeSlider;

    private LayoutTimeSeekbarBinding(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull View view2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ZZTimeRangeSlider zZTimeRangeSlider) {
        this.rootView = relativeLayout;
        this.longBg = view;
        this.middleView = view2;
        this.palygreed = imageView;
        this.progresslay = linearLayout;
        this.timeRangeSlider = zZTimeRangeSlider;
    }

    @NonNull
    public static LayoutTimeSeekbarBinding bind(@NonNull View view) {
        int i9 = R.id.long_bg;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.long_bg);
        if (findChildViewById != null) {
            i9 = R.id.middle_view;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.middle_view);
            if (findChildViewById2 != null) {
                i9 = R.id.palygreed;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.palygreed);
                if (imageView != null) {
                    i9 = R.id.progresslay;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.progresslay);
                    if (linearLayout != null) {
                        i9 = R.id.time_range_slider;
                        ZZTimeRangeSlider zZTimeRangeSlider = (ZZTimeRangeSlider) ViewBindings.findChildViewById(view, R.id.time_range_slider);
                        if (zZTimeRangeSlider != null) {
                            return new LayoutTimeSeekbarBinding((RelativeLayout) view, findChildViewById, findChildViewById2, imageView, linearLayout, zZTimeRangeSlider);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutTimeSeekbarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutTimeSeekbarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_time_seekbar, viewGroup, false);
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
