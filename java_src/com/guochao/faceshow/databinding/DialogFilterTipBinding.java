package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogFilterTipBinding implements ViewBinding {
    @NonNull
    public final ImageView close;
    @NonNull
    public final TextView confirm;
    @NonNull
    public final TextView content;
    @NonNull
    public final TextView noLongerNotify;
    @NonNull
    private final FrameLayout rootView;

    private DialogFilterTipBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.close = imageView;
        this.confirm = textView;
        this.content = textView2;
        this.noLongerNotify = textView3;
    }

    @NonNull
    public static DialogFilterTipBinding bind(@NonNull View view) {
        int i9 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i9 = R.id.confirm;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.confirm);
            if (textView != null) {
                i9 = R.id.content;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                if (textView2 != null) {
                    i9 = R.id.no_longer_notify;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.no_longer_notify);
                    if (textView3 != null) {
                        return new DialogFilterTipBinding((FrameLayout) view, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogFilterTipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogFilterTipBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_filter_tip, viewGroup, false);
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
