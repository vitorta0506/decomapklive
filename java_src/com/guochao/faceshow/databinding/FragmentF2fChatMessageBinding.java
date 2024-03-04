package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TopFadeInRecyclerView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class FragmentF2fChatMessageBinding implements ViewBinding {
    @NonNull
    public final TopFadeInRecyclerView recyclerView;
    @NonNull
    private final TopFadeInRecyclerView rootView;

    private FragmentF2fChatMessageBinding(@NonNull TopFadeInRecyclerView topFadeInRecyclerView, @NonNull TopFadeInRecyclerView topFadeInRecyclerView2) {
        this.rootView = topFadeInRecyclerView;
        this.recyclerView = topFadeInRecyclerView2;
    }

    @NonNull
    public static FragmentF2fChatMessageBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        TopFadeInRecyclerView topFadeInRecyclerView = (TopFadeInRecyclerView) view;
        return new FragmentF2fChatMessageBinding(topFadeInRecyclerView, topFadeInRecyclerView);
    }

    @NonNull
    public static FragmentF2fChatMessageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentF2fChatMessageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_f2f_chat_message, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TopFadeInRecyclerView getRoot() {
        return this.rootView;
    }
}
