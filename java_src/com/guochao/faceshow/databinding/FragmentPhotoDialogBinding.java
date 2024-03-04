package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentPhotoDialogBinding implements ViewBinding {
    @NonNull
    public final ImageView close;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tips;
    @NonNull
    public final TextView tvCamera;
    @NonNull
    public final TextView tvGallery;
    @NonNull
    public final TextView uploadTitle;

    private FragmentPhotoDialogBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.close = imageView;
        this.recyclerView = recyclerView;
        this.tips = textView;
        this.tvCamera = textView2;
        this.tvGallery = textView3;
        this.uploadTitle = textView4;
    }

    @NonNull
    public static FragmentPhotoDialogBinding bind(@NonNull View view) {
        int i9 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i9 = R.id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                i9 = R.id.tips;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tips);
                if (textView != null) {
                    i9 = R.id.tv_camera;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_camera);
                    if (textView2 != null) {
                        i9 = R.id.tv_gallery;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_gallery);
                        if (textView3 != null) {
                            i9 = R.id.upload_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.upload_title);
                            if (textView4 != null) {
                                return new FragmentPhotoDialogBinding((FrameLayout) view, imageView, recyclerView, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentPhotoDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentPhotoDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_photo_dialog, viewGroup, false);
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
