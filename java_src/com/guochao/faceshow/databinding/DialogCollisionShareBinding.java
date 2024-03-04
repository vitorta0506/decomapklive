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
public final class DialogCollisionShareBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView shareIcon;
    @NonNull
    public final TextView shareName;
    @NonNull
    public final View view;

    private DialogCollisionShareBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull View view) {
        this.rootView = linearLayout;
        this.shareIcon = imageView;
        this.shareName = textView;
        this.view = view;
    }

    @NonNull
    public static DialogCollisionShareBinding bind(@NonNull View view) {
        int i9 = R.id.share_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.share_icon);
        if (imageView != null) {
            i9 = R.id.share_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.share_name);
            if (textView != null) {
                i9 = R.id.view;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.view);
                if (findChildViewById != null) {
                    return new DialogCollisionShareBinding((LinearLayout) view, imageView, textView, findChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogCollisionShareBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogCollisionShareBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_collision_share, viewGroup, false);
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
