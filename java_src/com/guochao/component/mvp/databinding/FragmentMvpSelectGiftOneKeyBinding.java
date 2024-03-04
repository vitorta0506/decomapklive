package com.guochao.component.mvp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
/* loaded from: classes3.dex */
public final class FragmentMvpSelectGiftOneKeyBinding implements ViewBinding {
    @NonNull
    public final LinearLayout allLL;
    @NonNull
    public final ImageView closeIV;
    @NonNull
    public final TextView okTV;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView titleTV;
    @NonNull
    public final LinearLayout viewLL;

    private FragmentMvpSelectGiftOneKeyBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RecyclerView recyclerView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.allLL = linearLayout2;
        this.closeIV = imageView;
        this.okTV = textView;
        this.recyclerView = recyclerView;
        this.titleTV = textView2;
        this.viewLL = linearLayout3;
    }

    @NonNull
    public static FragmentMvpSelectGiftOneKeyBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R$id.closeIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.okTV;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.recyclerView;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                if (recyclerView != null) {
                    i9 = R$id.titleTV;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView2 != null) {
                        i9 = R$id.viewLL;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                        if (linearLayout2 != null) {
                            return new FragmentMvpSelectGiftOneKeyBinding(linearLayout, linearLayout, imageView, textView, recyclerView, textView2, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentMvpSelectGiftOneKeyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentMvpSelectGiftOneKeyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_mvp_select_gift_one_key, viewGroup, false);
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
