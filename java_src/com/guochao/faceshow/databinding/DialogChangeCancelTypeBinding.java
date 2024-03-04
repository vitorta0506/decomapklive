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
public final class DialogChangeCancelTypeBinding implements ViewBinding {
    @NonNull
    public final TextView cancel;
    @NonNull
    public final TextView firstItem;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView secondItem;

    private DialogChangeCancelTypeBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.cancel = textView;
        this.firstItem = textView2;
        this.secondItem = textView3;
    }

    @NonNull
    public static DialogChangeCancelTypeBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i9 = R.id.first_item;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.first_item);
            if (textView2 != null) {
                i9 = R.id.second_item;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.second_item);
                if (textView3 != null) {
                    return new DialogChangeCancelTypeBinding((FrameLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogChangeCancelTypeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogChangeCancelTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_change_cancel_type, viewGroup, false);
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
