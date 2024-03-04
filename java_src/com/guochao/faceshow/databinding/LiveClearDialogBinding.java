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
public final class LiveClearDialogBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvFHightstartclear;
    @NonNull
    public final TextView tvHightstartclear;

    private LiveClearDialogBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.tvFHightstartclear = textView;
        this.tvHightstartclear = textView2;
    }

    @NonNull
    public static LiveClearDialogBinding bind(@NonNull View view) {
        int i9 = R.id.tv_f_Hightstartclear;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_f_Hightstartclear);
        if (textView != null) {
            i9 = R.id.tv_Hightstartclear;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_Hightstartclear);
            if (textView2 != null) {
                return new LiveClearDialogBinding((FrameLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveClearDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveClearDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_clear_dialog, viewGroup, false);
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
