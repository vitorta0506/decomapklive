package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class BaseChatActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BaseChatActivity f16650c;

    @UiThread
    public BaseChatActivity_ViewBinding(BaseChatActivity baseChatActivity, View view) {
        super(baseChatActivity, view);
        this.f16650c = baseChatActivity;
        baseChatActivity.mChatPromt = (ViewGroup) c.d(view, R.id.chat_prompt, "field 'mChatPromt'", ViewGroup.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BaseChatActivity baseChatActivity = this.f16650c;
        if (baseChatActivity != null) {
            this.f16650c = null;
            baseChatActivity.mChatPromt = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
