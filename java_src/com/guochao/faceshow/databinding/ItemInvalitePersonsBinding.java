package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class ItemInvalitePersonsBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView headImg;
    @NonNull
    public final TextView imUser;
    @NonNull
    public final TextView invaliteTime;
    @NonNull
    public final ConstraintLayout item;
    @NonNull
    private final ConstraintLayout rootView;

    private ItemInvalitePersonsBinding(@NonNull ConstraintLayout constraintLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ConstraintLayout constraintLayout2) {
        this.rootView = constraintLayout;
        this.headImg = normalCircleImageView;
        this.imUser = textView;
        this.invaliteTime = textView2;
        this.item = constraintLayout2;
    }

    @NonNull
    public static ItemInvalitePersonsBinding bind(@NonNull View view) {
        int i9 = R.id.head_img;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.head_img);
        if (normalCircleImageView != null) {
            i9 = R.id.im_user;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.im_user);
            if (textView != null) {
                i9 = R.id.invalite_time;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.invalite_time);
                if (textView2 != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    return new ItemInvalitePersonsBinding(constraintLayout, normalCircleImageView, textView, textView2, constraintLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemInvalitePersonsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemInvalitePersonsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_invalite_persons, viewGroup, false);
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
