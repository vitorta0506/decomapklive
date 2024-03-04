package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.SquareImageView;
/* loaded from: classes2.dex */
public final class GridItemRecordBinding implements ViewBinding {
    @NonNull
    public final SquareImageView img;
    @NonNull
    private final FrameLayout rootView;

    private GridItemRecordBinding(@NonNull FrameLayout frameLayout, @NonNull SquareImageView squareImageView) {
        this.rootView = frameLayout;
        this.img = squareImageView;
    }

    @NonNull
    public static GridItemRecordBinding bind(@NonNull View view) {
        SquareImageView squareImageView = (SquareImageView) ViewBindings.findChildViewById(view, R.id.img);
        if (squareImageView != null) {
            return new GridItemRecordBinding((FrameLayout) view, squareImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.img)));
    }

    @NonNull
    public static GridItemRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static GridItemRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.grid_item_record, viewGroup, false);
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
