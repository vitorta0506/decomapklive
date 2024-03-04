package com.guochao.faceshow.aaspring.modulars.trtc.message;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.fragment.app.FragmentActivity;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.TimeUtil;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class TRTCMessageHolder extends BaseMessageViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private TextView f22062a;

    /* loaded from: classes3.dex */
    class a extends TypeToken<Map<String, Object>> {
        a() {
        }
    }

    public TRTCMessageHolder(Context context, View view) {
        super(context, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            if (this.itemView.getContext() instanceof FakeLiveChatActivity) {
                FakeLiveChatActivity fakeLiveChatActivity = (FakeLiveChatActivity) this.itemView.getContext();
                if (fakeLiveChatActivity != null && fakeLiveChatActivity.getParentFragment() != null && fakeLiveChatActivity.getParentFragment().getActivity() != null && (fakeLiveChatActivity.getParentFragment().getActivity() instanceof WatchLiveRoomActivity)) {
                    ToastUtils.showToast((int) R.string.cannot_voice_watch_call_when_living);
                    return;
                } else {
                    ToastUtils.showToast((int) R.string.cannot_voice_call_when_living);
                    return;
                }
            }
            ConversationInfo g02 = com.guochao.faceshow.aaspring.manager.im.b.l0().g0();
            if (g02 == null || g02.getConversationInfoDetail() == null || g02.getAppointState() == 0) {
                return;
            }
            if (g02.getConversationInfoDetail() != null && g02.getAppointState() == 1) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().J((FragmentActivity) view.getContext(), g02.getImAudioAppointSwitch(), g02.getImVideoAppointSwitch(), g02.getConversationInfoDetail());
            } else if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21900k) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().J((FragmentActivity) view.getContext(), g02.getImAudioAppointSwitch(), g02.getImVideoAppointSwitch(), g02.getConversationInfoDetail());
            }
        }
    }

    private void e(@DrawableRes int i9, String str, @ColorRes int i10) {
        this.f22062a.setText("");
        SpanColorUtils.appendSpannerRes(this.f22062a, i9);
        this.f22062a.append(str);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        this.f22062a = (TextView) getView(R.id.tv_msg_content);
        getView(R.id.message_content).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.trtc.message.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TRTCMessageHolder.this.d(view);
            }
        });
        V2TIMCustomElem customElem = aVar2.getMessage().getCustomElem();
        if (customElem == null) {
            return;
        }
        Map map = (Map) GsonGetter.getGson().fromJson(new String(customElem.getData()), new a().getType());
        Object obj = map.get("trtc_type");
        Object obj2 = map.get("call_time");
        if (obj != null) {
            Double d10 = (Double) obj;
            if (d10.doubleValue() == 0.0d) {
                return;
            }
            int doubleValue = obj2 instanceof Number ? (int) ((Double) obj2).doubleValue() : 1;
            int doubleValue2 = (int) d10.doubleValue();
            int i9 = R.mipmap.trtc_im_voice_me;
            int i10 = R.mipmap.trtc_im_video_me;
            int i11 = R.color.white;
            switch (doubleValue2) {
                case 1:
                    boolean z10 = aVar2 instanceof TRTCVideoCustomMessage;
                    int i12 = R.string.trtc_im_cancel_me;
                    if (z10) {
                        if (!isSelf()) {
                            i10 = R.mipmap.trtc_im_video_other;
                        }
                        e(i10, this.itemView.getContext().getString(isSelf() ? R.string.trtc_im_cancel_me : R.string.trtc_im_cancel_other), isSelf() ? R.color.white : R.color.color_text_level_1);
                    }
                    if (aVar2 instanceof TRTCVoiceCustomMessage) {
                        if (!isSelf()) {
                            i9 = R.mipmap.trtc_im_voice_other;
                        }
                        Context context = this.itemView.getContext();
                        if (!isSelf()) {
                            i12 = R.string.trtc_im_cancel_other;
                        }
                        String string = context.getString(i12);
                        if (!isSelf()) {
                            i11 = R.color.color_text_level_1;
                        }
                        e(i9, string, i11);
                        return;
                    }
                    return;
                case 2:
                    boolean z11 = aVar2 instanceof TRTCVideoCustomMessage;
                    int i13 = R.string.trtc_im_reject_me;
                    if (z11) {
                        if (!isSelf()) {
                            i10 = R.mipmap.trtc_im_video_other;
                        }
                        e(i10, this.itemView.getContext().getString(isSelf() ? R.string.trtc_im_reject_me : R.string.trtc_im_reject_other), isSelf() ? R.color.white : R.color.color_text_level_1);
                    }
                    if (aVar2 instanceof TRTCVoiceCustomMessage) {
                        if (!isSelf()) {
                            i9 = R.mipmap.trtc_im_voice_other;
                        }
                        Context context2 = this.itemView.getContext();
                        if (!isSelf()) {
                            i13 = R.string.trtc_im_reject_other;
                        }
                        String string2 = context2.getString(i13);
                        if (!isSelf()) {
                            i11 = R.color.color_text_level_1;
                        }
                        e(i9, string2, i11);
                        return;
                    }
                    return;
                case 3:
                    boolean z12 = aVar2 instanceof TRTCVideoCustomMessage;
                    int i14 = R.string.trtc_im_no_answer_me;
                    if (z12) {
                        if (!isSelf()) {
                            i10 = R.mipmap.trtc_im_video_other;
                        }
                        e(i10, this.itemView.getContext().getString(isSelf() ? R.string.trtc_im_no_answer_me : R.string.trtc_im_no_answer_other), isSelf() ? R.color.white : R.color.color_text_level_1);
                    }
                    if (aVar2 instanceof TRTCVoiceCustomMessage) {
                        if (!isSelf()) {
                            i9 = R.mipmap.trtc_im_voice_other;
                        }
                        Context context3 = this.itemView.getContext();
                        if (!isSelf()) {
                            i14 = R.string.trtc_im_no_answer_other;
                        }
                        String string3 = context3.getString(i14);
                        if (!isSelf()) {
                            i11 = R.color.color_text_level_1;
                        }
                        e(i9, string3, i11);
                        return;
                    }
                    return;
                case 4:
                    if (aVar2 instanceof TRTCVideoCustomMessage) {
                        if (!isSelf()) {
                            i10 = R.mipmap.trtc_im_video_other;
                        }
                        e(i10, this.itemView.getContext().getString(R.string.trtc_im_call_break, TimeUtil.getStringCallTime(doubleValue)), isSelf() ? R.color.white : R.color.color_text_level_1);
                    }
                    if (aVar2 instanceof TRTCVoiceCustomMessage) {
                        if (!isSelf()) {
                            i9 = R.mipmap.trtc_im_voice_other;
                        }
                        String string4 = this.itemView.getContext().getString(R.string.trtc_im_call_break, TimeUtil.getStringCallTime(doubleValue));
                        if (!isSelf()) {
                            i11 = R.color.color_text_level_1;
                        }
                        e(i9, string4, i11);
                        return;
                    }
                    return;
                case 5:
                    if (aVar2 instanceof TRTCVideoCustomMessage) {
                        if (!isSelf()) {
                            i10 = R.mipmap.trtc_im_video_other;
                        }
                        e(i10, this.itemView.getContext().getString(R.string.trtc_im_call_end, TimeUtil.getStringCallTime(doubleValue)), isSelf() ? R.color.white : R.color.color_text_level_1);
                    }
                    if (aVar2 instanceof TRTCVoiceCustomMessage) {
                        if (!isSelf()) {
                            i9 = R.mipmap.trtc_im_voice_other;
                        }
                        String string5 = this.itemView.getContext().getString(R.string.trtc_im_call_end, TimeUtil.getStringCallTime(doubleValue));
                        if (!isSelf()) {
                            i11 = R.color.color_text_level_1;
                        }
                        e(i9, string5, i11);
                        return;
                    }
                    return;
                case 6:
                    if (aVar2 instanceof TRTCVideoCustomMessage) {
                        if (!isSelf()) {
                            i10 = R.mipmap.trtc_im_video_other;
                        }
                        e(i10, this.itemView.getContext().getString(R.string.trtc_im_call_version_intercept), isSelf() ? R.color.white : R.color.color_text_level_1);
                    }
                    if (aVar2 instanceof TRTCVoiceCustomMessage) {
                        if (!isSelf()) {
                            i9 = R.mipmap.trtc_im_voice_other;
                        }
                        String string6 = this.itemView.getContext().getString(R.string.trtc_im_call_version_intercept);
                        if (!isSelf()) {
                            i11 = R.color.color_text_level_1;
                        }
                        e(i9, string6, i11);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public List<PopupMenuItem> onCreatePopupMenus(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PopupMenuItem(1, this.itemView.getContext().getString(R.string.delete)));
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder, com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
    public void onItemClick(PopupMenuItem popupMenuItem, View view) {
        super.onItemClick(popupMenuItem, view);
        if (popupMenuItem.getId() != 1) {
            return;
        }
        deleteCurrentMessage();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onMessageContentClick(View view, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        super.onMessageContentClick(view, aVar);
    }
}
