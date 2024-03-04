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
import com.guochao.faceshow.aaspring.views.ChatBgView;
/* loaded from: classes2.dex */
public final class AdapterLiveChatVvipBinding implements ViewBinding {
    @NonNull
    public final TextView chatContent;
    @NonNull
    public final View line;
    @NonNull
    private final ChatBgView rootView;
    @NonNull
    public final TextView translateContent;

    private AdapterLiveChatVvipBinding(@NonNull ChatBgView chatBgView, @NonNull TextView textView, @NonNull View view, @NonNull TextView textView2) {
        this.rootView = chatBgView;
        this.chatContent = textView;
        this.line = view;
        this.translateContent = textView2;
    }

    @NonNull
    public static AdapterLiveChatVvipBinding bind(@NonNull View view) {
        int i9 = R.id.chat_content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.chat_content);
        if (textView != null) {
            i9 = R.id.line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
            if (findChildViewById != null) {
                i9 = R.id.translate_content;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.translate_content);
                if (textView2 != null) {
                    return new AdapterLiveChatVvipBinding((ChatBgView) view, textView, findChildViewById, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static AdapterLiveChatVvipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AdapterLiveChatVvipBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_live_chat_vvip, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ChatBgView getRoot() {
        return this.rootView;
    }
}
