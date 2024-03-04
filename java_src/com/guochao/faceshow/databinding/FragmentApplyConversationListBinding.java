package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentApplyConversationListBinding implements ViewBinding {
    @NonNull
    public final ImageView animLiveStatus;
    @NonNull
    public final View bottomLine;
    @NonNull
    public final ImageView close;
    @NonNull
    public final FrameLayout liveBtn;
    @NonNull
    public final TextView liveGetMicBtn;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    private FragmentApplyConversationListBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull RecyclerView recyclerView, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.rootView = frameLayout;
        this.animLiveStatus = imageView;
        this.bottomLine = view;
        this.close = imageView2;
        this.liveBtn = frameLayout2;
        this.liveGetMicBtn = textView;
        this.recyclerView = recyclerView;
        this.swipeRefresh = swipeRefreshLayout;
    }

    @NonNull
    public static FragmentApplyConversationListBinding bind(@NonNull View view) {
        int i9 = R.id.anim_live_status;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.anim_live_status);
        if (imageView != null) {
            i9 = R.id.bottom_line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.bottom_line);
            if (findChildViewById != null) {
                i9 = R.id.close;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
                if (imageView2 != null) {
                    i9 = R.id.live_btn;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_btn);
                    if (frameLayout != null) {
                        i9 = R.id.live_get_mic_btn;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.live_get_mic_btn);
                        if (textView != null) {
                            i9 = R.id.recycler_view;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                            if (recyclerView != null) {
                                i9 = R.id.swipe_refresh;
                                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_refresh);
                                if (swipeRefreshLayout != null) {
                                    return new FragmentApplyConversationListBinding((FrameLayout) view, imageView, findChildViewById, imageView2, frameLayout, textView, recyclerView, swipeRefreshLayout);
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
    public static FragmentApplyConversationListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentApplyConversationListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_apply_conversation_list, viewGroup, false);
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
