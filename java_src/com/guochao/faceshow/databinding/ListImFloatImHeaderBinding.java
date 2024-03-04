package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.SingleLineTextView;
/* loaded from: classes2.dex */
public final class ListImFloatImHeaderBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final SingleLineTextView msg;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView userName;

    private ListImFloatImHeaderBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull SingleLineTextView singleLineTextView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.msg = singleLineTextView;
        this.userName = textView;
    }

    @NonNull
    public static ListImFloatImHeaderBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.msg;
            SingleLineTextView singleLineTextView = (SingleLineTextView) ViewBindings.findChildViewById(view, R.id.msg);
            if (singleLineTextView != null) {
                i9 = R.id.user_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                if (textView != null) {
                    return new ListImFloatImHeaderBinding((FrameLayout) view, headPortraitView, singleLineTextView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListImFloatImHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListImFloatImHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_im_float_im_header, viewGroup, false);
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
