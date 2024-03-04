package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutWatcherDateBinding implements ViewBinding {
    @NonNull
    public final LinearLayout flWatcherDate;
    @NonNull
    public final ImageView ivWatcherDate;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvWaitingFor;
    @NonNull
    public final TextView tvWatcherDate;

    private LayoutWatcherDateBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.flWatcherDate = linearLayout2;
        this.ivWatcherDate = imageView;
        this.tvWaitingFor = textView;
        this.tvWatcherDate = textView2;
    }

    @NonNull
    public static LayoutWatcherDateBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.iv_watcher_date;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_watcher_date);
        if (imageView != null) {
            i9 = R.id.tv_waiting_for;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_waiting_for);
            if (textView != null) {
                i9 = R.id.tv_watcher_date;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_watcher_date);
                if (textView2 != null) {
                    return new LayoutWatcherDateBinding(linearLayout, linearLayout, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutWatcherDateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutWatcherDateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_watcher_date, viewGroup, false);
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
