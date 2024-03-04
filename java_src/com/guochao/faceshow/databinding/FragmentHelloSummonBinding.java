package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
public final class FragmentHelloSummonBinding implements ViewBinding {
    @NonNull
    public final TextView emptyText;
    @NonNull
    public final LinearLayout emptyView;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    public final SmartRefreshLayout refreshLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView tvRule;
    @NonNull
    public final TextView tvSummon;
    @NonNull
    public final FakeFooter ugcFooter;

    private FragmentHelloSummonBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView, @NonNull SmartRefreshLayout smartRefreshLayout, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull FakeFooter fakeFooter) {
        this.rootView = linearLayout;
        this.emptyText = textView;
        this.emptyView = linearLayout2;
        this.recyclerView = recyclerView;
        this.refreshLayout = smartRefreshLayout;
        this.tvRule = imageView;
        this.tvSummon = textView2;
        this.ugcFooter = fakeFooter;
    }

    @NonNull
    public static FragmentHelloSummonBinding bind(@NonNull View view) {
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
                        i9 = R.id.tv_rule;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.tv_rule);
                        if (imageView != null) {
                            i9 = R.id.tv_summon;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_summon);
                            if (textView2 != null) {
                                i9 = R.id.ugc_footer;
                                FakeFooter fakeFooter = (FakeFooter) ViewBindings.findChildViewById(view, R.id.ugc_footer);
                                if (fakeFooter != null) {
                                    return new FragmentHelloSummonBinding((LinearLayout) view, textView, linearLayout, recyclerView, smartRefreshLayout, imageView, textView2, fakeFooter);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentHelloSummonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentHelloSummonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_hello_summon, viewGroup, false);
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
