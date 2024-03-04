package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class FragmentImEmojiBinding implements ViewBinding {
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final RecyclerView rootView;

    private FragmentImEmojiBinding(@NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2) {
        this.rootView = recyclerView;
        this.recyclerView = recyclerView2;
    }

    @NonNull
    public static FragmentImEmojiBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        RecyclerView recyclerView = (RecyclerView) view;
        return new FragmentImEmojiBinding(recyclerView, recyclerView);
    }

    @NonNull
    public static FragmentImEmojiBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentImEmojiBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_im_emoji, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RecyclerView getRoot() {
        return this.rootView;
    }
}
