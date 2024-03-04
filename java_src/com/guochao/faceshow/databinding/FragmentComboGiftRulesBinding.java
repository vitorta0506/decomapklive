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
public final class FragmentComboGiftRulesBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView rule1;
    @NonNull
    public final LayoutComboGiftTitleBinding titleBar;

    private FragmentComboGiftRulesBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LayoutComboGiftTitleBinding layoutComboGiftTitleBinding) {
        this.rootView = linearLayout;
        this.rule1 = textView;
        this.titleBar = layoutComboGiftTitleBinding;
    }

    @NonNull
    public static FragmentComboGiftRulesBinding bind(@NonNull View view) {
        int i9 = R.id.rule_1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.rule_1);
        if (textView != null) {
            i9 = R.id.title_bar;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar);
            if (findChildViewById != null) {
                return new FragmentComboGiftRulesBinding((LinearLayout) view, textView, LayoutComboGiftTitleBinding.bind(findChildViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentComboGiftRulesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentComboGiftRulesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_combo_gift_rules, viewGroup, false);
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
