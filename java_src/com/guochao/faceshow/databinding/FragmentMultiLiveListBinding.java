package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentMultiLiveListBinding implements ViewBinding {
    @NonNull
    public final ListItemMultiListHeaderBinding liveHeader;
    @NonNull
    public final LiveRoomListFragmentBinding recyclerContentArea;
    @NonNull
    private final LinearLayout rootView;

    private FragmentMultiLiveListBinding(@NonNull LinearLayout linearLayout, @NonNull ListItemMultiListHeaderBinding listItemMultiListHeaderBinding, @NonNull LiveRoomListFragmentBinding liveRoomListFragmentBinding) {
        this.rootView = linearLayout;
        this.liveHeader = listItemMultiListHeaderBinding;
        this.recyclerContentArea = liveRoomListFragmentBinding;
    }

    @NonNull
    public static FragmentMultiLiveListBinding bind(@NonNull View view) {
        int i9 = R.id.live_header;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.live_header);
        if (findChildViewById != null) {
            ListItemMultiListHeaderBinding bind = ListItemMultiListHeaderBinding.bind(findChildViewById);
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.recycler_content_area);
            if (findChildViewById2 != null) {
                return new FragmentMultiLiveListBinding((LinearLayout) view, bind, LiveRoomListFragmentBinding.bind(findChildViewById2));
            }
            i9 = R.id.recycler_content_area;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentMultiLiveListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentMultiLiveListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_multi_live_list, viewGroup, false);
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
