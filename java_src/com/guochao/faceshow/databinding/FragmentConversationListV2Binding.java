package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentConversationListV2Binding implements ViewBinding {
    @NonNull
    public final LayoutEmptyViewNoTextBinding empty;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;

    private FragmentConversationListV2Binding(@NonNull LinearLayout linearLayout, @NonNull LayoutEmptyViewNoTextBinding layoutEmptyViewNoTextBinding, @NonNull RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.empty = layoutEmptyViewNoTextBinding;
        this.recyclerView = recyclerView;
    }

    @NonNull
    public static FragmentConversationListV2Binding bind(@NonNull View view) {
        int i9 = R.id.empty;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty);
        if (findChildViewById != null) {
            LayoutEmptyViewNoTextBinding bind = LayoutEmptyViewNoTextBinding.bind(findChildViewById);
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                return new FragmentConversationListV2Binding((LinearLayout) view, bind, recyclerView);
            }
            i9 = R.id.recycler_view;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentConversationListV2Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentConversationListV2Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_conversation_list_v2, viewGroup, false);
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
