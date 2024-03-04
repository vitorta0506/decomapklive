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
public final class FragmentChatLimitVipBinding implements ViewBinding {
    @NonNull
    public final LinearLayout firstPushLay;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout secondPushLay;
    @NonNull
    public final LinearLayout thirdPushLay;

    private FragmentChatLimitVipBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4) {
        this.rootView = linearLayout;
        this.firstPushLay = linearLayout2;
        this.recyclerView = recyclerView;
        this.secondPushLay = linearLayout3;
        this.thirdPushLay = linearLayout4;
    }

    @NonNull
    public static FragmentChatLimitVipBinding bind(@NonNull View view) {
        int i9 = R.id.first_push_lay;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.first_push_lay);
        if (linearLayout != null) {
            i9 = R.id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                i9 = R.id.second_push_lay;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.second_push_lay);
                if (linearLayout2 != null) {
                    i9 = R.id.third_push_lay;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.third_push_lay);
                    if (linearLayout3 != null) {
                        return new FragmentChatLimitVipBinding((LinearLayout) view, linearLayout, recyclerView, linearLayout2, linearLayout3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentChatLimitVipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentChatLimitVipBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_chat_limit_vip, viewGroup, false);
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
