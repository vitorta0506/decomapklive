package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogGameBackDiamondBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final Button confirm;
    @NonNull
    public final TextView feeBack;
    @NonNull
    private final FrameLayout rootView;

    private DialogGameBackDiamondBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull Button button, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.confirm = button;
        this.feeBack = textView;
    }

    @NonNull
    public static DialogGameBackDiamondBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
        if (findChildViewById != null) {
            i9 = R.id.confirm;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.confirm);
            if (button != null) {
                i9 = R.id.fee_back;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.fee_back);
                if (textView != null) {
                    return new DialogGameBackDiamondBinding((FrameLayout) view, findChildViewById, button, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogGameBackDiamondBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogGameBackDiamondBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_game_back_diamond, viewGroup, false);
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
