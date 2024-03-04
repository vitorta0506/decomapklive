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
public final class PopMoreHomeBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvBlack;
    @NonNull
    public final TextView tvFocus;
    @NonNull
    public final TextView tvReport;

    private PopMoreHomeBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.tvBlack = textView;
        this.tvFocus = textView2;
        this.tvReport = textView3;
    }

    @NonNull
    public static PopMoreHomeBinding bind(@NonNull View view) {
        int i9 = R.id.tv_black;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_black);
        if (textView != null) {
            i9 = R.id.tv_focus;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_focus);
            if (textView2 != null) {
                i9 = R.id.tv_report;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_report);
                if (textView3 != null) {
                    return new PopMoreHomeBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopMoreHomeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopMoreHomeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.pop_more_home, viewGroup, false);
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
