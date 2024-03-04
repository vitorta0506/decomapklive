package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.SquareImageView;
/* loaded from: classes2.dex */
public final class UserSawPhotosBinding implements ViewBinding {
    @NonNull
    public final SquareImageView firstPhoto;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final SquareImageView secondPhoto;
    @NonNull
    public final SquareImageView thirdPhoto;
    @NonNull
    public final LinearLayout userSawPhotos;
    @NonNull
    public final View view2;
    @NonNull
    public final View view3;

    private UserSawPhotosBinding(@NonNull LinearLayout linearLayout, @NonNull SquareImageView squareImageView, @NonNull SquareImageView squareImageView2, @NonNull SquareImageView squareImageView3, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull View view2) {
        this.rootView = linearLayout;
        this.firstPhoto = squareImageView;
        this.secondPhoto = squareImageView2;
        this.thirdPhoto = squareImageView3;
        this.userSawPhotos = linearLayout2;
        this.view2 = view;
        this.view3 = view2;
    }

    @NonNull
    public static UserSawPhotosBinding bind(@NonNull View view) {
        int i9 = R.id.first_photo;
        SquareImageView squareImageView = (SquareImageView) ViewBindings.findChildViewById(view, R.id.first_photo);
        if (squareImageView != null) {
            i9 = R.id.second_photo;
            SquareImageView squareImageView2 = (SquareImageView) ViewBindings.findChildViewById(view, R.id.second_photo);
            if (squareImageView2 != null) {
                i9 = R.id.third_photo;
                SquareImageView squareImageView3 = (SquareImageView) ViewBindings.findChildViewById(view, R.id.third_photo);
                if (squareImageView3 != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i9 = R.id.view2;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.view2);
                    if (findChildViewById != null) {
                        i9 = R.id.view3;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.view3);
                        if (findChildViewById2 != null) {
                            return new UserSawPhotosBinding(linearLayout, squareImageView, squareImageView2, squareImageView3, linearLayout, findChildViewById, findChildViewById2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static UserSawPhotosBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static UserSawPhotosBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_saw_photos, viewGroup, false);
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
