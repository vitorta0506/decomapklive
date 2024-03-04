package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class ActivityUgcSearchBinding implements ViewBinding {
    @NonNull
    public final ImageView deleteEdit;
    @NonNull
    public final EditText etSearch;
    @NonNull
    public final ImageView ivBack;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView scan;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final RtlViewPager viewPager;

    private ActivityUgcSearchBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TabLayout tabLayout, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = linearLayout;
        this.deleteEdit = imageView;
        this.etSearch = editText;
        this.ivBack = imageView2;
        this.scan = imageView3;
        this.tabs = tabLayout;
        this.viewPager = rtlViewPager;
    }

    @NonNull
    public static ActivityUgcSearchBinding bind(@NonNull View view) {
        int i9 = R.id.delete_edit;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.delete_edit);
        if (imageView != null) {
            i9 = R.id.et_search;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_search);
            if (editText != null) {
                i9 = R.id.iv_back;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_back);
                if (imageView2 != null) {
                    i9 = R.id.scan;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.scan);
                    if (imageView3 != null) {
                        i9 = R.id.tabs;
                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                        if (tabLayout != null) {
                            i9 = R.id.view_pager;
                            RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                            if (rtlViewPager != null) {
                                return new ActivityUgcSearchBinding((LinearLayout) view, imageView, editText, imageView2, imageView3, tabLayout, rtlViewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityUgcSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUgcSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_ugc_search, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
