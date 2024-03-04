package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutLiveLoactionAndNameBinding implements ViewBinding {
    @NonNull
    public final LinearLayout llLocation;
    @NonNull
    public final LinearLayout llLocationAndName;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvLiveLocation;
    @NonNull
    public final TextView tvLiveName;

    private LayoutLiveLoactionAndNameBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.llLocation = linearLayout2;
        this.llLocationAndName = linearLayout3;
        this.tvLiveLocation = textView;
        this.tvLiveName = textView2;
    }

    @NonNull
    public static LayoutLiveLoactionAndNameBinding bind(@NonNull View view) {
        int i9 = R.id.ll_location;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_location);
        if (linearLayout != null) {
            LinearLayout linearLayout2 = (LinearLayout) view;
            i9 = R.id.tv_live_location;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_live_location);
            if (textView != null) {
                i9 = R.id.tv_live_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_live_name);
                if (textView2 != null) {
                    return new LayoutLiveLoactionAndNameBinding(linearLayout2, linearLayout, linearLayout2, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLiveLoactionAndNameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLiveLoactionAndNameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_live_loaction_and_name, viewGroup, false);
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
