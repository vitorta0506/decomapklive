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
import com.guochao.lib_core.databinding.GcBaseTitleBarBinding;
/* loaded from: classes2.dex */
public final class ActivitySelectBinding implements ViewBinding {
    @NonNull
    public final FragmentBaseRecyclerViewBinding inDate;
    @NonNull
    public final ImageView ivEmpty;
    @NonNull
    public final GcBaseTitleBarBinding llArea;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final RelativeLayout searchLay;

    private ActivitySelectBinding(@NonNull LinearLayout linearLayout, @NonNull FragmentBaseRecyclerViewBinding fragmentBaseRecyclerViewBinding, @NonNull ImageView imageView, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding, @NonNull RelativeLayout relativeLayout) {
        this.rootView = linearLayout;
        this.inDate = fragmentBaseRecyclerViewBinding;
        this.ivEmpty = imageView;
        this.llArea = gcBaseTitleBarBinding;
        this.searchLay = relativeLayout;
    }

    @NonNull
    public static ActivitySelectBinding bind(@NonNull View view) {
        int i9 = R.id.in_date;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.in_date);
        if (findChildViewById != null) {
            FragmentBaseRecyclerViewBinding bind = FragmentBaseRecyclerViewBinding.bind(findChildViewById);
            i9 = R.id.iv_empty;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_empty);
            if (imageView != null) {
                i9 = R.id.ll_area;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.ll_area);
                if (findChildViewById2 != null) {
                    GcBaseTitleBarBinding bind2 = GcBaseTitleBarBinding.bind(findChildViewById2);
                    i9 = R.id.search_lay;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.search_lay);
                    if (relativeLayout != null) {
                        return new ActivitySelectBinding((LinearLayout) view, bind, imageView, bind2, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivitySelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_select, viewGroup, false);
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
