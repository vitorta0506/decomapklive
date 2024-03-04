package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemPlayBottomPkHolderBinding implements ViewBinding {
    @NonNull
    public final LayoutPkIconSingleBinding pkLayout;
    @NonNull
    public final TextView pkText;
    @NonNull
    private final LinearLayout rootView;

    private ItemPlayBottomPkHolderBinding(@NonNull LinearLayout linearLayout, @NonNull LayoutPkIconSingleBinding layoutPkIconSingleBinding, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.pkLayout = layoutPkIconSingleBinding;
        this.pkText = textView;
    }

    @NonNull
    public static ItemPlayBottomPkHolderBinding bind(@NonNull View view) {
        int i9 = R.id.pk_layout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.pk_layout);
        if (findChildViewById != null) {
            LayoutPkIconSingleBinding bind = LayoutPkIconSingleBinding.bind(findChildViewById);
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.pk_text);
            if (textView != null) {
                return new ItemPlayBottomPkHolderBinding((LinearLayout) view, bind, textView);
            }
            i9 = R.id.pk_text;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemPlayBottomPkHolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPlayBottomPkHolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_play_bottom_pk_holder, viewGroup, false);
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
