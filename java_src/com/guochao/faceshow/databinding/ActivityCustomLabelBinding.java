package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityCustomLabelBinding implements ViewBinding {
    @NonNull
    public final EditText etTag;
    @NonNull
    private final LinearLayout rootView;

    private ActivityCustomLabelBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText) {
        this.rootView = linearLayout;
        this.etTag = editText;
    }

    @NonNull
    public static ActivityCustomLabelBinding bind(@NonNull View view) {
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.etTag);
        if (editText != null) {
            return new ActivityCustomLabelBinding((LinearLayout) view, editText);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.etTag)));
    }

    @NonNull
    public static ActivityCustomLabelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityCustomLabelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_custom_label, viewGroup, false);
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
