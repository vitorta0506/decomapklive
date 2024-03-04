package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogLiveCountryBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final ImageView countryArrow;
    @NonNull
    public final RecyclerView countryContent;
    @NonNull
    public final FrameLayout dialogLiveCountry;
    @NonNull
    private final FrameLayout rootView;

    private DialogLiveCountryBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.countryArrow = imageView;
        this.countryContent = recyclerView;
        this.dialogLiveCountry = frameLayout2;
    }

    @NonNull
    public static DialogLiveCountryBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
        if (findChildViewById != null) {
            i9 = R.id.country_arrow;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.country_arrow);
            if (imageView != null) {
                i9 = R.id.country_content;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.country_content);
                if (recyclerView != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    return new DialogLiveCountryBinding(frameLayout, findChildViewById, imageView, recyclerView, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogLiveCountryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogLiveCountryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_live_country, viewGroup, false);
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
