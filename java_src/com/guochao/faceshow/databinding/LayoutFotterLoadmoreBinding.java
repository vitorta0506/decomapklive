package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.yanzhenjie.loading.LoadingView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutFotterLoadmoreBinding implements ViewBinding {
    @NonNull
    public final LoadingView loadingView;
    @NonNull
    private final View rootView;
    @NonNull
    public final TextView tvMessage;

    private LayoutFotterLoadmoreBinding(@NonNull View view, @NonNull LoadingView loadingView, @NonNull TextView textView) {
        this.rootView = view;
        this.loadingView = loadingView;
        this.tvMessage = textView;
    }

    @NonNull
    public static LayoutFotterLoadmoreBinding bind(@NonNull View view) {
        int i9 = R.id.loading_view;
        LoadingView loadingView = (LoadingView) ViewBindings.findChildViewById(view, R.id.loading_view);
        if (loadingView != null) {
            i9 = R.id.tv_message;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_message);
            if (textView != null) {
                return new LayoutFotterLoadmoreBinding(view, loadingView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFotterLoadmoreBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.layout_fotter_loadmore, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
