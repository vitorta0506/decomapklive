package com.guochao.faceshow.aaspring.modulars.live.adapter.span;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class e extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    String f18276a;

    /* renamed from: b  reason: collision with root package name */
    String f18277b;

    /* renamed from: c  reason: collision with root package name */
    WeakReference<LiveChatFragment> f18278c;

    public e(LiveChatFragment liveChatFragment, String str, String str2) {
        this.f18276a = str;
        this.f18277b = str2;
        this.f18278c = new WeakReference<>(liveChatFragment);
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        LiveChatFragment liveChatFragment;
        WeakReference<LiveChatFragment> weakReference = this.f18278c;
        if (weakReference == null || (liveChatFragment = weakReference.get()) == null || liveChatFragment.getActivity() == null || liveChatFragment.getFragmentManager() == null) {
            return;
        }
        if (liveChatFragment.getCurrentLiveRoom().isVoiceRoom()) {
            LivePeopleInfoCardFragmentV2.newInstance(liveChatFragment.getCurrentLiveRoom().getLiveRoomId(), this.f18277b).show(liveChatFragment.getFragmentManager(), "people");
        } else {
            LivePeopleInfoCardFragment.showPeopleInfo(liveChatFragment.getFragmentManager(), this.f18277b, this.f18276a);
        }
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NonNull TextPaint textPaint) {
        textPaint.setUnderlineText(false);
    }
}
