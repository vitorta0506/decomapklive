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
public final class ActivityMarayLanuageBinding implements ViewBinding {
    @NonNull
    public final RecyclerView lvCountry;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView save;

    private ActivityMarayLanuageBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.lvCountry = recyclerView;
        this.save = textView;
    }

    @NonNull
    public static ActivityMarayLanuageBinding bind(@NonNull View view) {
        int i9 = R.id.lvCountry;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.lvCountry);
        if (recyclerView != null) {
            i9 = R.id.save;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.save);
            if (textView != null) {
                return new ActivityMarayLanuageBinding((LinearLayout) view, recyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityMarayLanuageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityMarayLanuageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_maray_lanuage, viewGroup, false);
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
