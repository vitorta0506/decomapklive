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
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentVoliceRoomShareBinding implements ViewBinding {
    @NonNull
    public final RecyclerView recentRV;
    @NonNull
    public final TextView recentTV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final RecyclerView shareRV;

    private FragmentVoliceRoomShareBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull RecyclerView recyclerView2) {
        this.rootView = linearLayout;
        this.recentRV = recyclerView;
        this.recentTV = textView;
        this.shareRV = recyclerView2;
    }

    @NonNull
    public static FragmentVoliceRoomShareBinding bind(@NonNull View view) {
        int i9 = R.id.recentRV;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recentRV);
        if (recyclerView != null) {
            i9 = R.id.recentTV;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.recentTV);
            if (textView != null) {
                i9 = R.id.shareRV;
                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.shareRV);
                if (recyclerView2 != null) {
                    return new FragmentVoliceRoomShareBinding((LinearLayout) view, recyclerView, textView, recyclerView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoliceRoomShareBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoliceRoomShareBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_volice_room_share, viewGroup, false);
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
