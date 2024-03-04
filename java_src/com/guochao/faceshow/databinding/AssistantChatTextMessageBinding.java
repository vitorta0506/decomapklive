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
public final class AssistantChatTextMessageBinding implements ViewBinding {
    @NonNull
    public final AssistantChatLeftTextMessageBinding assistantChatTextMsgLeftPanel;
    @NonNull
    public final AssistantChatRightTextMessageBinding assistantChatTextMsgRightPanel;
    @NonNull
    public final TextView assistantShowTime;
    @NonNull
    private final LinearLayout rootView;

    private AssistantChatTextMessageBinding(@NonNull LinearLayout linearLayout, @NonNull AssistantChatLeftTextMessageBinding assistantChatLeftTextMessageBinding, @NonNull AssistantChatRightTextMessageBinding assistantChatRightTextMessageBinding, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.assistantChatTextMsgLeftPanel = assistantChatLeftTextMessageBinding;
        this.assistantChatTextMsgRightPanel = assistantChatRightTextMessageBinding;
        this.assistantShowTime = textView;
    }

    @NonNull
    public static AssistantChatTextMessageBinding bind(@NonNull View view) {
        int i9 = R.id.assistant_chat_text_msg_left_panel;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.assistant_chat_text_msg_left_panel);
        if (findChildViewById != null) {
            AssistantChatLeftTextMessageBinding bind = AssistantChatLeftTextMessageBinding.bind(findChildViewById);
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.assistant_chat_text_msg_right_panel);
            if (findChildViewById2 != null) {
                AssistantChatRightTextMessageBinding bind2 = AssistantChatRightTextMessageBinding.bind(findChildViewById2);
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.assistant_show_time);
                if (textView != null) {
                    return new AssistantChatTextMessageBinding((LinearLayout) view, bind, bind2, textView);
                }
                i9 = R.id.assistant_show_time;
            } else {
                i9 = R.id.assistant_chat_text_msg_right_panel;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static AssistantChatTextMessageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AssistantChatTextMessageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.assistant_chat_text_message, viewGroup, false);
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
