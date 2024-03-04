package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.gift.view.GiftComboView;
/* loaded from: classes2.dex */
public final class ActivityTestBinding implements ViewBinding {
    @NonNull
    public final GiftComboView giftComboView;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final Button start;

    private ActivityTestBinding(@NonNull ConstraintLayout constraintLayout, @NonNull GiftComboView giftComboView, @NonNull Button button) {
        this.rootView = constraintLayout;
        this.giftComboView = giftComboView;
        this.start = button;
    }

    @NonNull
    public static ActivityTestBinding bind(@NonNull View view) {
        int i9 = R.id.giftComboView;
        GiftComboView giftComboView = (GiftComboView) ViewBindings.findChildViewById(view, R.id.giftComboView);
        if (giftComboView != null) {
            i9 = R.id.start;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.start);
            if (button != null) {
                return new ActivityTestBinding((ConstraintLayout) view, giftComboView, button);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityTestBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityTestBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_test, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
