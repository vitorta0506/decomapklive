package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes2.dex */
public final class ActivityMusicResultBinding implements ViewBinding {
    @NonNull
    public final ListView mRecyclerView;
    @NonNull
    public final TwinklingRefreshLayout refreshLayout;
    @NonNull
    private final LinearLayout rootView;

    private ActivityMusicResultBinding(@NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull TwinklingRefreshLayout twinklingRefreshLayout) {
        this.rootView = linearLayout;
        this.mRecyclerView = listView;
        this.refreshLayout = twinklingRefreshLayout;
    }

    @NonNull
    public static ActivityMusicResultBinding bind(@NonNull View view) {
        int i9 = R.id.mRecyclerView;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.mRecyclerView);
        if (listView != null) {
            i9 = R.id.refreshLayout;
            TwinklingRefreshLayout twinklingRefreshLayout = (TwinklingRefreshLayout) ViewBindings.findChildViewById(view, R.id.refreshLayout);
            if (twinklingRefreshLayout != null) {
                return new ActivityMusicResultBinding((LinearLayout) view, listView, twinklingRefreshLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityMusicResultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityMusicResultBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_music_result, viewGroup, false);
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
