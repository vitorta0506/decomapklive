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
public final class DialogLoginCancelAccountBinding implements ViewBinding {
    @NonNull
    public final TextView giveUpCancel;
    @NonNull
    public final TextView letMeLookLook;
    @NonNull
    private final FrameLayout rootView;

    private DialogLoginCancelAccountBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.giveUpCancel = textView;
        this.letMeLookLook = textView2;
    }

    @NonNull
    public static DialogLoginCancelAccountBinding bind(@NonNull View view) {
        int i9 = R.id.give_up_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.give_up_cancel);
        if (textView != null) {
            i9 = R.id.let_me_look_look;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.let_me_look_look);
            if (textView2 != null) {
                return new DialogLoginCancelAccountBinding((FrameLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogLoginCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogLoginCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_login_cancel_account, viewGroup, false);
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