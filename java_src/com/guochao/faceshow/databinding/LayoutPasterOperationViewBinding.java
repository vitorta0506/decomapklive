package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.PasterOperationView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutPasterOperationViewBinding implements ViewBinding {
    @NonNull
    public final PasterOperationView SingleTouchView;
    @NonNull
    private final PasterOperationView rootView;

    private LayoutPasterOperationViewBinding(@NonNull PasterOperationView pasterOperationView, @NonNull PasterOperationView pasterOperationView2) {
        this.rootView = pasterOperationView;
        this.SingleTouchView = pasterOperationView2;
    }

    @NonNull
    public static LayoutPasterOperationViewBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        PasterOperationView pasterOperationView = (PasterOperationView) view;
        return new LayoutPasterOperationViewBinding(pasterOperationView, pasterOperationView);
    }

    @NonNull
    public static LayoutPasterOperationViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPasterOperationViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_paster_operation_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public PasterOperationView getRoot() {
        return this.rootView;
    }
}
