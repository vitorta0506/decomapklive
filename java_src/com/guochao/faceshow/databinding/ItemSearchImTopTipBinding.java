package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ItemSearchImTopTipBinding implements ViewBinding {
    @NonNull
    private final TextView rootView;

    private ItemSearchImTopTipBinding(@NonNull TextView textView) {
        this.rootView = textView;
    }

    @NonNull
    public static ItemSearchImTopTipBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new ItemSearchImTopTipBinding((TextView) view);
    }

    @NonNull
    public static ItemSearchImTopTipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSearchImTopTipBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_search_im_top_tip, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }
}