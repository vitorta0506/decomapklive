package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.ControlClickSpanTextView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutChatTvLeftBinding implements ViewBinding {
    @NonNull
    private final ControlClickSpanTextView rootView;
    @NonNull
    public final ControlClickSpanTextView tvMsgContent;

    private LayoutChatTvLeftBinding(@NonNull ControlClickSpanTextView controlClickSpanTextView, @NonNull ControlClickSpanTextView controlClickSpanTextView2) {
        this.rootView = controlClickSpanTextView;
        this.tvMsgContent = controlClickSpanTextView2;
    }

    @NonNull
    public static LayoutChatTvLeftBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        ControlClickSpanTextView controlClickSpanTextView = (ControlClickSpanTextView) view;
        return new LayoutChatTvLeftBinding(controlClickSpanTextView, controlClickSpanTextView);
    }

    @NonNull
    public static LayoutChatTvLeftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutChatTvLeftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_chat_tv_left, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ControlClickSpanTextView getRoot() {
        return this.rootView;
    }
}
