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
public final class LayoutUgcLiveStatusBinding implements ViewBinding {
    @NonNull
    public final ImageView animLiveStatus;
    @NonNull
    public final LinearLayout liveStatusView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView statusText;

    private LayoutUgcLiveStatusBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.animLiveStatus = imageView;
        this.liveStatusView = linearLayout2;
        this.statusText = textView;
    }

    @NonNull
    public static LayoutUgcLiveStatusBinding bind(@NonNull View view) {
        int i9 = R.id.anim_live_status;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.anim_live_status);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.status_text);
            if (textView != null) {
                return new LayoutUgcLiveStatusBinding(linearLayout, imageView, linearLayout, textView);
            }
            i9 = R.id.status_text;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutUgcLiveStatusBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutUgcLiveStatusBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_ugc_live_status, viewGroup, false);
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
