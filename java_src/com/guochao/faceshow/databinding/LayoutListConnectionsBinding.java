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
public final class LayoutListConnectionsBinding implements ViewBinding {
    @NonNull
    public final ImageView imPushClose;
    @NonNull
    public final LinearLayout pushStatus;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvImPush;

    private LayoutListConnectionsBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.imPushClose = imageView;
        this.pushStatus = linearLayout2;
        this.tvImPush = textView;
    }

    @NonNull
    public static LayoutListConnectionsBinding bind(@NonNull View view) {
        int i9 = R.id.im_push_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.im_push_close);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_im_push);
            if (textView != null) {
                return new LayoutListConnectionsBinding(linearLayout, imageView, linearLayout, textView);
            }
            i9 = R.id.tv_im_push;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutListConnectionsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutListConnectionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_list_connections, viewGroup, false);
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
