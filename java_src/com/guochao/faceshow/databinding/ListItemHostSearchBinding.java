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
public final class ListItemHostSearchBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvHostSearchName;
    @NonNull
    public final TextView tvHostSearchRank;

    private ListItemHostSearchBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.tvHostSearchName = textView;
        this.tvHostSearchRank = textView2;
    }

    @NonNull
    public static ListItemHostSearchBinding bind(@NonNull View view) {
        int i9 = R.id.tv_host_search_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_host_search_name);
        if (textView != null) {
            i9 = R.id.tv_host_search_rank;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_host_search_rank);
            if (textView2 != null) {
                return new ListItemHostSearchBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemHostSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemHostSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_host_search, viewGroup, false);
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
