package com.guochao.component.mvp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
/* loaded from: classes3.dex */
public final class FragmentAnchorFreeTimeBinding implements ViewBinding {
    @NonNull
    public final ImageView avatarIV;
    @NonNull
    public final ImageView closeIV;
    @NonNull
    public final EditText idET;
    @NonNull
    public final TextView nameTV;
    @NonNull
    public final TextView okTV;
    @NonNull
    private final LinearLayout rootView;

    private FragmentAnchorFreeTimeBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull EditText editText, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.avatarIV = imageView;
        this.closeIV = imageView2;
        this.idET = editText;
        this.nameTV = textView;
        this.okTV = textView2;
    }

    @NonNull
    public static FragmentAnchorFreeTimeBinding bind(@NonNull View view) {
        int i9 = R$id.avatarIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.closeIV;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView2 != null) {
                i9 = R$id.idET;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, i9);
                if (editText != null) {
                    i9 = R$id.nameTV;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView != null) {
                        i9 = R$id.okTV;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView2 != null) {
                            return new FragmentAnchorFreeTimeBinding((LinearLayout) view, imageView, imageView2, editText, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentAnchorFreeTimeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentAnchorFreeTimeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_anchor_free_time, viewGroup, false);
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
