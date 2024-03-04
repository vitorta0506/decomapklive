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
public final class RankListEmptyViewBinding implements ViewBinding {
    @NonNull
    public final TextView emptyText;
    @NonNull
    public final LinearLayout emptyView;
    @NonNull
    private final LinearLayout rootView;

    private RankListEmptyViewBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.emptyText = textView;
        this.emptyView = linearLayout2;
    }

    @NonNull
    public static RankListEmptyViewBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.empty_text);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            return new RankListEmptyViewBinding(linearLayout, textView, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.empty_text)));
    }

    @NonNull
    public static RankListEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static RankListEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.rank_list_empty_view, viewGroup, false);
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
