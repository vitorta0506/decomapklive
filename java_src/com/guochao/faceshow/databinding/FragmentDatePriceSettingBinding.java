package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentDatePriceSettingBinding implements ViewBinding {
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView save;
    @NonNull
    public final TextView title;

    private FragmentDatePriceSettingBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
        this.save = textView;
        this.title = textView2;
    }

    @NonNull
    public static FragmentDatePriceSettingBinding bind(@NonNull View view) {
        int i9 = R.id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
        if (recyclerView != null) {
            i9 = R.id.save;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.save);
            if (textView != null) {
                i9 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView2 != null) {
                    return new FragmentDatePriceSettingBinding((LinearLayout) view, recyclerView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentDatePriceSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentDatePriceSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_date_price_setting, viewGroup, false);
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
