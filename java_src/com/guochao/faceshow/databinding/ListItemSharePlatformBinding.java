package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ListItemSharePlatformBinding implements ViewBinding {
    @NonNull
    public final ImageView more;
    @NonNull
    private final ImageView rootView;

    private ListItemSharePlatformBinding(@NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.rootView = imageView;
        this.more = imageView2;
    }

    @NonNull
    public static ListItemSharePlatformBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        ImageView imageView = (ImageView) view;
        return new ListItemSharePlatformBinding(imageView, imageView);
    }

    @NonNull
    public static ListItemSharePlatformBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemSharePlatformBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_share_platform, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ImageView getRoot() {
        return this.rootView;
    }
}
