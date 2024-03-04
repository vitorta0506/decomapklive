package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.systemassistant.view.AssistantChatInputView;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes2.dex */
public final class SystemAssistantActBinding implements ViewBinding {
    @NonNull
    public final AssistantChatInputView assistantChatInputPanel;
    @NonNull
    public final RecyclerView assistantChatList;
    @NonNull
    public final TwinklingRefreshLayout assistantRefreshLayout;
    @NonNull
    private final LinearLayout rootView;

    private SystemAssistantActBinding(@NonNull LinearLayout linearLayout, @NonNull AssistantChatInputView assistantChatInputView, @NonNull RecyclerView recyclerView, @NonNull TwinklingRefreshLayout twinklingRefreshLayout) {
        this.rootView = linearLayout;
        this.assistantChatInputPanel = assistantChatInputView;
        this.assistantChatList = recyclerView;
        this.assistantRefreshLayout = twinklingRefreshLayout;
    }

    @NonNull
    public static SystemAssistantActBinding bind(@NonNull View view) {
        int i9 = R.id.assistant_chat_input_panel;
        AssistantChatInputView assistantChatInputView = (AssistantChatInputView) ViewBindings.findChildViewById(view, R.id.assistant_chat_input_panel);
        if (assistantChatInputView != null) {
            i9 = R.id.assistant_chat_list;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.assistant_chat_list);
            if (recyclerView != null) {
                i9 = R.id.assistant_refreshLayout;
                TwinklingRefreshLayout twinklingRefreshLayout = (TwinklingRefreshLayout) ViewBindings.findChildViewById(view, R.id.assistant_refreshLayout);
                if (twinklingRefreshLayout != null) {
                    return new SystemAssistantActBinding((LinearLayout) view, assistantChatInputView, recyclerView, twinklingRefreshLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static SystemAssistantActBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static SystemAssistantActBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.system_assistant_act, viewGroup, false);
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
