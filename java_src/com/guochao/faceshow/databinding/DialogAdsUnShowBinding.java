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
/* loaded from: classes2.dex */
public final class DialogAdsUnShowBinding implements ViewBinding {
    @NonNull
    public final TextView adsGoneDay;
    @NonNull
    public final TextView close;
    @NonNull
    public final TextView hidePermanently;
    @NonNull
    private final FrameLayout rootView;

    private DialogAdsUnShowBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.adsGoneDay = textView;
        this.close = textView2;
        this.hidePermanently = textView3;
    }

    @NonNull
    public static DialogAdsUnShowBinding bind(@NonNull View view) {
        int i9 = R.id.ads_gone_day;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ads_gone_day);
        if (textView != null) {
            i9 = R.id.close;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.close);
            if (textView2 != null) {
                i9 = R.id.hide_permanently;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.hide_permanently);
                if (textView3 != null) {
                    return new DialogAdsUnShowBinding((FrameLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogAdsUnShowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogAdsUnShowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_ads_un_show, viewGroup, false);
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
