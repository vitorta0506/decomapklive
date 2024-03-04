package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentFriendListBinding implements ViewBinding {
    @NonNull
    public final LayoutEmptyViewBinding empty;
    @NonNull
    public final ImageView expandStatus;
    @NonNull
    public final ExpandableListView friendList;
    @NonNull
    public final TextView groupName;
    @NonNull
    public final LinearLayoutCompat groupNameLayout;
    @NonNull
    public final TextView number;
    @NonNull
    public final SwipeRefreshLayout refresh;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final FrameLayout searchLayout;
    @NonNull
    public final SearchTvViewBinding searchView;

    private FragmentFriendListBinding(@NonNull RelativeLayout relativeLayout, @NonNull LayoutEmptyViewBinding layoutEmptyViewBinding, @NonNull ImageView imageView, @NonNull ExpandableListView expandableListView, @NonNull TextView textView, @NonNull LinearLayoutCompat linearLayoutCompat, @NonNull TextView textView2, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull FrameLayout frameLayout, @NonNull SearchTvViewBinding searchTvViewBinding) {
        this.rootView = relativeLayout;
        this.empty = layoutEmptyViewBinding;
        this.expandStatus = imageView;
        this.friendList = expandableListView;
        this.groupName = textView;
        this.groupNameLayout = linearLayoutCompat;
        this.number = textView2;
        this.refresh = swipeRefreshLayout;
        this.searchLayout = frameLayout;
        this.searchView = searchTvViewBinding;
    }

    @NonNull
    public static FragmentFriendListBinding bind(@NonNull View view) {
        int i9 = R.id.empty;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty);
        if (findChildViewById != null) {
            LayoutEmptyViewBinding bind = LayoutEmptyViewBinding.bind(findChildViewById);
            i9 = R.id.expand_status;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.expand_status);
            if (imageView != null) {
                i9 = R.id.friend_list;
                ExpandableListView expandableListView = (ExpandableListView) ViewBindings.findChildViewById(view, R.id.friend_list);
                if (expandableListView != null) {
                    i9 = R.id.group_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.group_name);
                    if (textView != null) {
                        i9 = R.id.group_name_layout;
                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, R.id.group_name_layout);
                        if (linearLayoutCompat != null) {
                            i9 = R.id.number;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.number);
                            if (textView2 != null) {
                                i9 = R.id.refresh;
                                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh);
                                if (swipeRefreshLayout != null) {
                                    i9 = R.id.search_layout;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.search_layout);
                                    if (frameLayout != null) {
                                        i9 = R.id.search_view;
                                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.search_view);
                                        if (findChildViewById2 != null) {
                                            return new FragmentFriendListBinding((RelativeLayout) view, bind, imageView, expandableListView, textView, linearLayoutCompat, textView2, swipeRefreshLayout, frameLayout, SearchTvViewBinding.bind(findChildViewById2));
                                        }
                                    }
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
    public static FragmentFriendListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFriendListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_friend_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
