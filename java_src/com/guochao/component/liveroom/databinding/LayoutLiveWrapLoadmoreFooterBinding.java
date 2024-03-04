package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class LayoutLiveWrapLoadmoreFooterBinding implements ViewBinding {
    @NonNull
    public final LinearLayout loadDone;
    @NonNull
    public final ImageView loading;
    @NonNull
    private final View rootView;

    private LayoutLiveWrapLoadmoreFooterBinding(@NonNull View view, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.rootView = view;
        this.loadDone = linearLayout;
        this.loading = imageView;
    }

    @NonNull
    public static LayoutLiveWrapLoadmoreFooterBinding bind(@NonNull View view) {
        int i9 = R$id.load_done;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
        if (linearLayout != null) {
            i9 = R$id.loading;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                return new LayoutLiveWrapLoadmoreFooterBinding(view, linearLayout, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLiveWrapLoadmoreFooterBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R$layout.layout_live_wrap_loadmore_footer, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
