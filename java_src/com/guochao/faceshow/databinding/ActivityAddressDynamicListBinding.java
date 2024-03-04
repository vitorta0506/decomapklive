package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityAddressDynamicListBinding implements ViewBinding {
    @NonNull
    public final TextView addressTV;
    @NonNull
    public final FrameLayout content;
    @NonNull
    public final TextView countTV;
    @NonNull
    private final LinearLayout rootView;

    private ActivityAddressDynamicListBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.addressTV = textView;
        this.content = frameLayout;
        this.countTV = textView2;
    }

    @NonNull
    public static ActivityAddressDynamicListBinding bind(@NonNull View view) {
        int i9 = R.id.addressTV;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.addressTV);
        if (textView != null) {
            i9 = R.id.content;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.content);
            if (frameLayout != null) {
                i9 = R.id.countTV;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.countTV);
                if (textView2 != null) {
                    return new ActivityAddressDynamicListBinding((LinearLayout) view, textView, frameLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityAddressDynamicListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityAddressDynamicListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_address_dynamic_list, viewGroup, false);
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
