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
import com.guochao.faceshow.views.flowlayout.TagFlowLayout;
/* loaded from: classes2.dex */
public final class ZzEmotionalstateDialogBinding implements ViewBinding {
    @NonNull
    public final LinearLayout lineParent;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView save;
    @NonNull
    public final TagFlowLayout tagFlowLayout;

    private ZzEmotionalstateDialogBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TagFlowLayout tagFlowLayout) {
        this.rootView = linearLayout;
        this.lineParent = linearLayout2;
        this.save = textView;
        this.tagFlowLayout = tagFlowLayout;
    }

    @NonNull
    public static ZzEmotionalstateDialogBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.save;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.save);
        if (textView != null) {
            i9 = R.id.tagFlowLayout;
            TagFlowLayout tagFlowLayout = (TagFlowLayout) ViewBindings.findChildViewById(view, R.id.tagFlowLayout);
            if (tagFlowLayout != null) {
                return new ZzEmotionalstateDialogBinding(linearLayout, linearLayout, textView, tagFlowLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ZzEmotionalstateDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ZzEmotionalstateDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.zz_emotionalstate_dialog, viewGroup, false);
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
