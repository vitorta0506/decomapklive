package com.guochao.lib_core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.lib_core.R$id;
import com.guochao.lib_core.R$layout;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class LayoutLoadmoreFooterBinding implements ViewBinding {
    @NonNull
    public final LinearLayout loadDone;
    @NonNull
    public final ImageView loading;
    @NonNull
    private final View rootView;

    private LayoutLoadmoreFooterBinding(@NonNull View view, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.rootView = view;
        this.loadDone = linearLayout;
        this.loading = imageView;
    }

    @NonNull
    public static LayoutLoadmoreFooterBinding bind(@NonNull View view) {
        int i9 = R$id.load_done;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
        if (linearLayout != null) {
            i9 = R$id.loading;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                return new LayoutLoadmoreFooterBinding(view, linearLayout, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLoadmoreFooterBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R$layout.layout_loadmore_footer, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
