package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class UserUpdateDialogBinding implements ViewBinding {
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView userDialogUpdateLevel;
    @NonNull
    public final TextView userDialogUpdateTips;

    private UserUpdateDialogBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.userDialogUpdateLevel = textView;
        this.userDialogUpdateTips = textView2;
    }

    @NonNull
    public static UserUpdateDialogBinding bind(@NonNull View view) {
        int i9 = R.id.user_dialog_update_level;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_dialog_update_level);
        if (textView != null) {
            i9 = R.id.user_dialog_update_tips;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_dialog_update_tips);
            if (textView2 != null) {
                return new UserUpdateDialogBinding((RelativeLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static UserUpdateDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static UserUpdateDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_update_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
