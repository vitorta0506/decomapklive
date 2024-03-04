package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.LiveChatAutoBackgroundView;
/* loaded from: classes2.dex */
public final class AdapterLiveChatBinding implements ViewBinding {
    @NonNull
    public final TextView chatContent;
    @NonNull
    public final View line;
    @NonNull
    private final LiveChatAutoBackgroundView rootView;
    @NonNull
    public final TextView translateContent;

    private AdapterLiveChatBinding(@NonNull LiveChatAutoBackgroundView liveChatAutoBackgroundView, @NonNull TextView textView, @NonNull View view, @NonNull TextView textView2) {
        this.rootView = liveChatAutoBackgroundView;
        this.chatContent = textView;
        this.line = view;
        this.translateContent = textView2;
    }

    @NonNull
    public static AdapterLiveChatBinding bind(@NonNull View view) {
        int i9 = R.id.chat_content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.chat_content);
        if (textView != null) {
            i9 = R.id.line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
            if (findChildViewById != null) {
                i9 = R.id.translate_content;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.translate_content);
                if (textView2 != null) {
                    return new AdapterLiveChatBinding((LiveChatAutoBackgroundView) view, textView, findChildViewById, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static AdapterLiveChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AdapterLiveChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_live_chat, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LiveChatAutoBackgroundView getRoot() {
        return this.rootView;
    }
}
