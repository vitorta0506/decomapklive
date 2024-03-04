package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.google.gson.Gson;
import com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.lib_service_center.liveroom.service.IUserLeaveMessage;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMSendCallback;
import java.nio.charset.StandardCharsets;
@Route(path = RouterPath.ROUTER_USER_LEAVE_GROUP)
/* loaded from: classes3.dex */
public class MemberLeaveMessage implements IUserLeaveMessage {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements V2TIMSendCallback<V2TIMMessage> {
        a() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMMessage v2TIMMessage) {
            LogUtils.i("sendMemberLeave", "leaveMessageSuccess");
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            LogUtils.i("sendMemberLeave", "onError");
        }

        @Override // com.tencent.imsdk.v2.V2TIMSendCallback
        public void onProgress(int i9) {
        }
    }

    public static void a(String str, String str2) {
        String str3;
        VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveRoomMessageModel voiceRoomCMDUserLeaveRoomMessageModel = new VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveRoomMessageModel();
        voiceRoomCMDUserLeaveRoomMessageModel.setUserId(str);
        try {
            str3 = new Gson().toJson(voiceRoomCMDUserLeaveRoomMessageModel);
        } catch (Exception e10) {
            e10.printStackTrace();
            str3 = "";
        }
        V2TIMManager.getMessageManager().sendMessage(V2TIMManager.getMessageManager().createCustomMessage(str3.getBytes(StandardCharsets.UTF_8)), null, str2, 0, false, null, new a());
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(Context context) {
    }

    @Override // com.guochao.lib_service_center.liveroom.service.IUserLeaveMessage
    public void start(@NonNull String str, @NonNull String str2) {
        a(str, str2);
    }
}
