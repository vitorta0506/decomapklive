package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentSelectUploadDialogVideoBinding implements ViewBinding {
    @NonNull
    public final TextView cancel;
    @NonNull
    public final FrameLayout recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView sure;

    private FragmentSelectUploadDialogVideoBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.cancel = textView;
        this.recyclerView = frameLayout;
        this.sure = textView2;
    }

    @NonNull
    public static FragmentSelectUploadDialogVideoBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i9 = R.id.recycler_view;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (frameLayout != null) {
                i9 = R.id.sure;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.sure);
                if (textView2 != null) {
                    return new FragmentSelectUploadDialogVideoBinding((LinearLayout) view, textView, frameLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentSelectUploadDialogVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentSelectUploadDialogVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_select_upload_dialog_video, viewGroup, false);
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
