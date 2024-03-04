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
public final class LiveMoreItemBinding implements ViewBinding {
    @NonNull
    public final ImageView helloNew;
    @NonNull
    public final ImageView icon;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView text;

    private LiveMoreItemBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.helloNew = imageView;
        this.icon = imageView2;
        this.text = textView;
    }

    @NonNull
    public static LiveMoreItemBinding bind(@NonNull View view) {
        int i9 = R.id.hello_new;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.hello_new);
        if (imageView != null) {
            i9 = R.id.icon;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
            if (imageView2 != null) {
                i9 = R.id.text;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text);
                if (textView != null) {
                    return new LiveMoreItemBinding((LinearLayout) view, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveMoreItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveMoreItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_more_item, viewGroup, false);
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
