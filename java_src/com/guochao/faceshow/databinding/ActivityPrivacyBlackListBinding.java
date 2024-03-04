package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityPrivacyBlackListBinding implements ViewBinding {
    @NonNull
    public final ListView lvPeople;
    @NonNull
    public final SwipeRefreshLayout refreshLayout;
    @NonNull
    private final LinearLayout rootView;

    private ActivityPrivacyBlackListBinding(@NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.rootView = linearLayout;
        this.lvPeople = listView;
        this.refreshLayout = swipeRefreshLayout;
    }

    @NonNull
    public static ActivityPrivacyBlackListBinding bind(@NonNull View view) {
        int i9 = R.id.lvPeople;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.lvPeople);
        if (listView != null) {
            i9 = R.id.refreshLayout;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.refreshLayout);
            if (swipeRefreshLayout != null) {
                return new ActivityPrivacyBlackListBinding((LinearLayout) view, listView, swipeRefreshLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPrivacyBlackListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPrivacyBlackListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_privacy_black_list, viewGroup, false);
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
