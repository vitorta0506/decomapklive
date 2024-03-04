package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.RecordProgressView;
/* loaded from: classes2.dex */
public final class ComposeRecordBtnBinding implements ViewBinding {
    @NonNull
    public final ImageView ivRecord;
    @NonNull
    public final RecordProgressView recordProgressView;
    @NonNull
    private final RelativeLayout rootView;

    private ComposeRecordBtnBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RecordProgressView recordProgressView) {
        this.rootView = relativeLayout;
        this.ivRecord = imageView;
        this.recordProgressView = recordProgressView;
    }

    @NonNull
    public static ComposeRecordBtnBinding bind(@NonNull View view) {
        int i9 = R.id.iv_record;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_record);
        if (imageView != null) {
            i9 = R.id.record_progress_view;
            RecordProgressView recordProgressView = (RecordProgressView) ViewBindings.findChildViewById(view, R.id.record_progress_view);
            if (recordProgressView != null) {
                return new ComposeRecordBtnBinding((RelativeLayout) view, imageView, recordProgressView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ComposeRecordBtnBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ComposeRecordBtnBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.compose_record_btn, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
