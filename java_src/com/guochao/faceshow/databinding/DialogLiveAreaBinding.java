package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.NoScrollViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class DialogLiveAreaBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final LinearLayout contentArea;
    @NonNull
    public final ImageView ivClose;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final NoScrollViewPager viewPager;

    private DialogLiveAreaBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TabLayout tabLayout, @NonNull NoScrollViewPager noScrollViewPager) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.contentArea = linearLayout;
        this.ivClose = imageView;
        this.tabs = tabLayout;
        this.viewPager = noScrollViewPager;
    }

    @NonNull
    public static DialogLiveAreaBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
        if (findChildViewById != null) {
            i9 = R.id.content_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_area);
            if (linearLayout != null) {
                i9 = R.id.ivClose;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivClose);
                if (imageView != null) {
                    i9 = R.id.tabs;
                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                    if (tabLayout != null) {
                        i9 = R.id.view_pager;
                        NoScrollViewPager noScrollViewPager = (NoScrollViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                        if (noScrollViewPager != null) {
                            return new DialogLiveAreaBinding((FrameLayout) view, findChildViewById, linearLayout, imageView, tabLayout, noScrollViewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogLiveAreaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogLiveAreaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_live_area, viewGroup, false);
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
