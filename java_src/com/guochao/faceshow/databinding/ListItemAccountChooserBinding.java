package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ListItemAccountChooserBinding implements ViewBinding {
    @NonNull
    public final TextView nickname;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView selection;

    private ListItemAccountChooserBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.nickname = textView;
        this.selection = imageView;
    }

    @NonNull
    public static ListItemAccountChooserBinding bind(@NonNull View view) {
        int i9 = R.id.nickname;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
        if (textView != null) {
            i9 = R.id.selection;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.selection);
            if (imageView != null) {
                return new ListItemAccountChooserBinding((FrameLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemAccountChooserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemAccountChooserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_account_chooser, viewGroup, false);
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
