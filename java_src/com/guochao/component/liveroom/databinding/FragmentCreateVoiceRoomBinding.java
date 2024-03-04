package com.guochao.component.liveroom.databinding;

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
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
/* loaded from: classes3.dex */
public final class FragmentCreateVoiceRoomBinding implements ViewBinding {
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tags;

    private FragmentCreateVoiceRoomBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
        this.tags = textView;
    }

    @NonNull
    public static FragmentCreateVoiceRoomBinding bind(@NonNull View view) {
        int i9 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
        if (recyclerView != null) {
            i9 = R$id.tags;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                return new FragmentCreateVoiceRoomBinding((LinearLayout) view, recyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentCreateVoiceRoomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentCreateVoiceRoomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_create_voice_room, viewGroup, false);
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
