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
public final class LayoutRecommendTypeBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LayoutChooseTypeBinding selection1;
    @NonNull
    public final LayoutChooseTypeBinding selection2;
    @NonNull
    public final TextView title;

    private LayoutRecommendTypeBinding(@NonNull LinearLayout linearLayout, @NonNull LayoutChooseTypeBinding layoutChooseTypeBinding, @NonNull LayoutChooseTypeBinding layoutChooseTypeBinding2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.selection1 = layoutChooseTypeBinding;
        this.selection2 = layoutChooseTypeBinding2;
        this.title = textView;
    }

    @NonNull
    public static LayoutRecommendTypeBinding bind(@NonNull View view) {
        int i9 = R.id.selection_1;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.selection_1);
        if (findChildViewById != null) {
            LayoutChooseTypeBinding bind = LayoutChooseTypeBinding.bind(findChildViewById);
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.selection_2);
            if (findChildViewById2 != null) {
                LayoutChooseTypeBinding bind2 = LayoutChooseTypeBinding.bind(findChildViewById2);
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView != null) {
                    return new LayoutRecommendTypeBinding((LinearLayout) view, bind, bind2, textView);
                }
                i9 = R.id.title;
            } else {
                i9 = R.id.selection_2;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutRecommendTypeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRecommendTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_recommend_type, viewGroup, false);
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
