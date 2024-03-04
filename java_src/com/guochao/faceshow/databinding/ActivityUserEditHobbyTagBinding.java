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
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class ActivityUserEditHobbyTagBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView save;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final TextView tvTagCount;
    @NonNull
    public final RecyclerView userTagSelected;
    @NonNull
    public final RtlViewPager viewPager;

    private ActivityUserEditHobbyTagBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TabLayout tabLayout, @NonNull TextView textView2, @NonNull RecyclerView recyclerView, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = linearLayout;
        this.save = textView;
        this.tabs = tabLayout;
        this.tvTagCount = textView2;
        this.userTagSelected = recyclerView;
        this.viewPager = rtlViewPager;
    }

    @NonNull
    public static ActivityUserEditHobbyTagBinding bind(@NonNull View view) {
        int i9 = R.id.save;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.save);
        if (textView != null) {
            i9 = R.id.tabs;
            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
            if (tabLayout != null) {
                i9 = R.id.tv_tag_count;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tag_count);
                if (textView2 != null) {
                    i9 = R.id.user_tag_selected;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.user_tag_selected);
                    if (recyclerView != null) {
                        i9 = R.id.view_pager;
                        RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                        if (rtlViewPager != null) {
                            return new ActivityUserEditHobbyTagBinding((LinearLayout) view, textView, tabLayout, textView2, recyclerView, rtlViewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityUserEditHobbyTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUserEditHobbyTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_user_edit_hobby_tag, viewGroup, false);
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
