package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentAppEventBinding implements ViewBinding {
    @NonNull
    public final CardView content;
    @NonNull
    public final ImageView img;
    @NonNull
    private final CardView rootView;

    private FragmentAppEventBinding(@NonNull CardView cardView, @NonNull CardView cardView2, @NonNull ImageView imageView) {
        this.rootView = cardView;
        this.content = cardView2;
        this.img = imageView;
    }

    @NonNull
    public static FragmentAppEventBinding bind(@NonNull View view) {
        CardView cardView = (CardView) view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img);
        if (imageView != null) {
            return new FragmentAppEventBinding(cardView, cardView, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.img)));
    }

    @NonNull
    public static FragmentAppEventBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentAppEventBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_app_event, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public CardView getRoot() {
        return this.rootView;
    }
}
