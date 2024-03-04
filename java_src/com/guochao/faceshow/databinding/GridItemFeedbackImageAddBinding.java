package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class GridItemFeedbackImageAddBinding implements ViewBinding {
    @NonNull
    private final CardView rootView;

    private GridItemFeedbackImageAddBinding(@NonNull CardView cardView) {
        this.rootView = cardView;
    }

    @NonNull
    public static GridItemFeedbackImageAddBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new GridItemFeedbackImageAddBinding((CardView) view);
    }

    @NonNull
    public static GridItemFeedbackImageAddBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static GridItemFeedbackImageAddBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.grid_item_feedback_image_add, viewGroup, false);
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
