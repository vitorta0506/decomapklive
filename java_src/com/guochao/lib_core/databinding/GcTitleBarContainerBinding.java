package com.guochao.lib_core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import com.guochao.lib_core.R$id;
import com.guochao.lib_core.R$layout;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class GcTitleBarContainerBinding implements ViewBinding {
    @NonNull
    private final View rootView;
    @NonNull
    public final MaterialToolbar toolbar;

    private GcTitleBarContainerBinding(@NonNull View view, @NonNull MaterialToolbar materialToolbar) {
        this.rootView = view;
        this.toolbar = materialToolbar;
    }

    @NonNull
    public static GcTitleBarContainerBinding bind(@NonNull View view) {
        int i9 = R$id.toolbar;
        MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, i9);
        if (materialToolbar != null) {
            return new GcTitleBarContainerBinding(view, materialToolbar);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static GcTitleBarContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R$layout.gc_title_bar_container, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
