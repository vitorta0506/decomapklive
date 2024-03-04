package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.FakeFooter;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes2.dex */
public final class FragmentBackpackGiftBinding implements ViewBinding {
    @NonNull
    public final TextView emptyText;
    @NonNull
    public final LinearLayout emptyView;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    public final SmartRefreshLayout refreshLayout;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final FakeFooter ugcFooter;

    private FragmentBackpackGiftBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull SmartRefreshLayout smartRefreshLayout, @NonNull FakeFooter fakeFooter) {
        this.rootView = frameLayout;
        this.emptyText = textView;
        this.emptyView = linearLayout;
        this.recyclerView = recyclerView;
        this.refreshLayout = smartRefreshLayout;
        this.ugcFooter = fakeFooter;
    }

    @NonNull
    public static FragmentBackpackGiftBinding bind(@NonNull View view) {
        int i9 = R.id.empty_text;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.empty_text);
        if (textView != null) {
            i9 = R.id.empty_view;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.empty_view);
            if (linearLayout != null) {
                i9 = R.id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                if (recyclerView != null) {
                    i9 = R.id.refresh_layout;
                    SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                    if (smartRefreshLayout != null) {
                        i9 = R.id.ugc_footer;
                        FakeFooter fakeFooter = (FakeFooter) ViewBindings.findChildViewById(view, R.id.ugc_footer);
                        if (fakeFooter != null) {
                            return new FragmentBackpackGiftBinding((FrameLayout) view, textView, linearLayout, recyclerView, smartRefreshLayout, fakeFooter);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentBackpackGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentBackpackGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_backpack_gift, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
