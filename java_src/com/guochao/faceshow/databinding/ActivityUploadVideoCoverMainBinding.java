package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityUploadVideoCoverMainBinding implements ViewBinding {
    @NonNull
    public final ImageView cancel;
    @NonNull
    public final LinearLayout confirm;
    @NonNull
    public final ImageView img;
    @NonNull
    public final LinearLayout ivRecord;
    @NonNull
    private final LinearLayout rootView;

    private ActivityUploadVideoCoverMainBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.cancel = imageView;
        this.confirm = linearLayout2;
        this.img = imageView2;
        this.ivRecord = linearLayout3;
    }

    @NonNull
    public static ActivityUploadVideoCoverMainBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (imageView != null) {
            i9 = R.id.confirm;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.confirm);
            if (linearLayout != null) {
                i9 = R.id.img;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.img);
                if (imageView2 != null) {
                    i9 = R.id.iv_record;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_record);
                    if (linearLayout2 != null) {
                        return new ActivityUploadVideoCoverMainBinding((LinearLayout) view, imageView, linearLayout, imageView2, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityUploadVideoCoverMainBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUploadVideoCoverMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_upload_video_cover_main, viewGroup, false);
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
