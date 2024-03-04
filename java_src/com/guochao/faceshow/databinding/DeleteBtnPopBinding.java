package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DeleteBtnPopBinding implements ViewBinding {
    @NonNull
    public final TextView deleteBt;
    @NonNull
    private final ConstraintLayout rootView;

    private DeleteBtnPopBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView) {
        this.rootView = constraintLayout;
        this.deleteBt = textView;
    }

    @NonNull
    public static DeleteBtnPopBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.delete_bt);
        if (textView != null) {
            return new DeleteBtnPopBinding((ConstraintLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.delete_bt)));
    }

    @NonNull
    public static DeleteBtnPopBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DeleteBtnPopBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.delete_btn_pop, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
