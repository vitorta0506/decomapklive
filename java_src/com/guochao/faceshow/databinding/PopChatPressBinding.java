package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class PopChatPressBinding implements ViewBinding {
    @NonNull
    public final ImageView bgView;
    @NonNull
    public final RecyclerView listPopRess;
    @NonNull
    public final FrameLayout listPopRessLay;
    @NonNull
    private final RelativeLayout rootView;

    private PopChatPressBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull FrameLayout frameLayout) {
        this.rootView = relativeLayout;
        this.bgView = imageView;
        this.listPopRess = recyclerView;
        this.listPopRessLay = frameLayout;
    }

    @NonNull
    public static PopChatPressBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_view);
        if (imageView != null) {
            i9 = R.id.list_pop_ress;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.list_pop_ress);
            if (recyclerView != null) {
                i9 = R.id.list_pop_ress_lay;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.list_pop_ress_lay);
                if (frameLayout != null) {
                    return new PopChatPressBinding((RelativeLayout) view, imageView, recyclerView, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopChatPressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopChatPressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.pop_chat_press, viewGroup, false);
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
