package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ItemSearchImFooterBinding implements ViewBinding {
    @NonNull
    private final View rootView;

    private ItemSearchImFooterBinding(@NonNull View view) {
        this.rootView = view;
    }

    @NonNull
    public static ItemSearchImFooterBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new ItemSearchImFooterBinding(view);
    }

    @NonNull
    public static ItemSearchImFooterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSearchImFooterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_search_im_footer, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }
}
