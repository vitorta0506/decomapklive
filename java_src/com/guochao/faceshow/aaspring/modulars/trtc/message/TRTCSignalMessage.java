package com.guochao.faceshow.aaspring.modulars.trtc.message;

import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.utils.GsonGetter;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.nio.charset.StandardCharsets;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public class TRTCSignalMessage extends com.guochao.faceshow.aaspring.modulars.chat.models.a {
    public static final String CALL_CMD = "CALL_ACTION";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class CmdCallModel {
        String call;
        CallModel msg;

        private CmdCallModel() {
        }
    }

    public TRTCSignalMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
    }

    public static V2TIMMessage buildMessage(CallModel callModel) {
        CmdCallModel cmdCallModel = new CmdCallModel();
        cmdCallModel.call = CALL_CMD;
        cmdCallModel.msg = callModel;
        return V2TIMManager.getMessageManager().createCustomMessage(GsonGetter.getGson().toJson(cmdCallModel).getBytes(StandardCharsets.UTF_8));
    }

    public CallModel getMessageModel() {
        V2TIMCustomElem customElem;
        CmdCallModel cmdCallModel;
        V2TIMMessage message = getMessage();
        if (message == null || (customElem = message.getCustomElem()) == null) {
            return null;
        }
        try {
            cmdCallModel = (CmdCallModel) GsonGetter.getGson().fromJson(new String(customElem.getData()).replace(IOUtils.LINE_SEPARATOR_UNIX, ""), (Class<Object>) CmdCallModel.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            cmdCallModel = null;
        }
        if (cmdCallModel == null) {
            return null;
        }
        return cmdCallModel.msg;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean showNotification() {
        return false;
    }

    public TRTCSignalMessage(CallModel callModel) {
        super(buildMessage(callModel));
    }
}
