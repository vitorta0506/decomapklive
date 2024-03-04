package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityNetworkAnalysisBinding implements ViewBinding {
    @NonNull
    public final TextView content;
    @NonNull
    public final TextView progress;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ScrollView scroll;

    private ActivityNetworkAnalysisBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ScrollView scrollView) {
        this.rootView = linearLayout;
        this.content = textView;
        this.progress = textView2;
        this.scroll = scrollView;
    }

    @NonNull
    public static ActivityNetworkAnalysisBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i9 = R.id.progress;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.progress);
            if (textView2 != null) {
                i9 = R.id.scroll;
                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scroll);
                if (scrollView != null) {
                    return new ActivityNetworkAnalysisBinding((LinearLayout) view, textView, textView2, scrollView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityNetworkAnalysisBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityNetworkAnalysisBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_network_analysis, viewGroup, false);
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
