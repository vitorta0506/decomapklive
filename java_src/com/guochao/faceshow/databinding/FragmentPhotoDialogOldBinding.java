package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentPhotoDialogOldBinding implements ViewBinding {
    @NonNull
    public final LinearLayout cancel;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvCamera;
    @NonNull
    public final TextView tvCancel;
    @NonNull
    public final TextView tvGallery;

    private FragmentPhotoDialogOldBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.cancel = linearLayout2;
        this.tvCamera = textView;
        this.tvCancel = textView2;
        this.tvGallery = textView3;
    }

    @NonNull
    public static FragmentPhotoDialogOldBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.cancel);
        if (linearLayout != null) {
            i9 = R.id.tv_camera;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_camera);
            if (textView != null) {
                i9 = R.id.tv_cancel;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cancel);
                if (textView2 != null) {
                    i9 = R.id.tv_gallery;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_gallery);
                    if (textView3 != null) {
                        return new FragmentPhotoDialogOldBinding((LinearLayout) view, linearLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentPhotoDialogOldBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentPhotoDialogOldBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_photo_dialog_old, viewGroup, false);
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
