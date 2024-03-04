package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HackyViewPager;
/* loaded from: classes2.dex */
public final class ImageDetailPagerBinding implements ViewBinding {
    @NonNull
    public final FrameLayout content;
    @NonNull
    public final TextView indicator;
    @NonNull
    public final HackyViewPager pager;
    @NonNull
    private final FrameLayout rootView;

    private ImageDetailPagerBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull HackyViewPager hackyViewPager) {
        this.rootView = frameLayout;
        this.content = frameLayout2;
        this.indicator = textView;
        this.pager = hackyViewPager;
    }

    @NonNull
    public static ImageDetailPagerBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.indicator;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.indicator);
        if (textView != null) {
            i9 = R.id.pager;
            HackyViewPager hackyViewPager = (HackyViewPager) ViewBindings.findChildViewById(view, R.id.pager);
            if (hackyViewPager != null) {
                return new ImageDetailPagerBinding(frameLayout, frameLayout, textView, hackyViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ImageDetailPagerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ImageDetailPagerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.image_detail_pager, viewGroup, false);
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
