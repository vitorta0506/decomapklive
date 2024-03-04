package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class InviteSelectAllBinding implements ViewBinding {
    @NonNull
    public final ImageView check;
    @NonNull
    public final LinearLayout inviteSelectAllId;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvAllSelect;

    private InviteSelectAllBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.check = imageView;
        this.inviteSelectAllId = linearLayout2;
        this.tvAllSelect = textView;
    }

    @NonNull
    public static InviteSelectAllBinding bind(@NonNull View view) {
        int i9 = R.id.check;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.check);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_all_select);
            if (textView != null) {
                return new InviteSelectAllBinding(linearLayout, imageView, linearLayout, textView);
            }
            i9 = R.id.tv_all_select;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static InviteSelectAllBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static InviteSelectAllBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.invite_select_all, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
