package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.rd.PageIndicatorView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LiveActivityLayoutBinding implements ViewBinding {
    @NonNull
    public final RecyclerView banner;
    @NonNull
    public final PageIndicatorView pageIndicatorView;
    @NonNull
    private final View rootView;

    private LiveActivityLayoutBinding(@NonNull View view, @NonNull RecyclerView recyclerView, @NonNull PageIndicatorView pageIndicatorView) {
        this.rootView = view;
        this.banner = recyclerView;
        this.pageIndicatorView = pageIndicatorView;
    }

    @NonNull
    public static LiveActivityLayoutBinding bind(@NonNull View view) {
        int i9 = R.id.banner;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.banner);
        if (recyclerView != null) {
            i9 = R.id.pageIndicatorView;
            PageIndicatorView pageIndicatorView = (PageIndicatorView) ViewBindings.findChildViewById(view, R.id.pageIndicatorView);
            if (pageIndicatorView != null) {
                return new LiveActivityLayoutBinding(view, recyclerView, pageIndicatorView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveActivityLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.live_activity_layout, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
