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
public final class ItemF2fMsgSystemBinding implements ViewBinding {
    @NonNull
    private final TextView rootView;
    @NonNull
    public final TextView textView;

    private ItemF2fMsgSystemBinding(@NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = textView;
        this.textView = textView2;
    }

    @NonNull
    public static ItemF2fMsgSystemBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new ItemF2fMsgSystemBinding(textView, textView);
    }

    @NonNull
    public static ItemF2fMsgSystemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemF2fMsgSystemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_f2f_msg_system, viewGroup, false);
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
