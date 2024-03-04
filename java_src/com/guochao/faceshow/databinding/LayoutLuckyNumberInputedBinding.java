package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutLuckyNumberInputedBinding implements ViewBinding {
    @NonNull
    public final FrameLayout floatInput2;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView text;

    private LayoutLuckyNumberInputedBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.floatInput2 = frameLayout2;
        this.text = textView;
    }

    @NonNull
    public static LayoutLuckyNumberInputedBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text);
        if (textView != null) {
            return new LayoutLuckyNumberInputedBinding(frameLayout, frameLayout, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }

    @NonNull
    public static LayoutLuckyNumberInputedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLuckyNumberInputedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_lucky_number_inputed, viewGroup, false);
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
