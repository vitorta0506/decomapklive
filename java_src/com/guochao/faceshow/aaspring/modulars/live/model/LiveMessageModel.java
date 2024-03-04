package com.guochao.faceshow.aaspring.modulars.live.model;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import b8.e;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.bean.UserBean;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.nio.charset.StandardCharsets;
/* loaded from: classes3.dex */
public class LiveMessageModel<T extends BaseLiveMessage> {
    private String cmd;
    @SerializedName(alternate = {"data"}, value = "msg")
    private T data;

    public LiveMessageModel(String str, @Nullable T t10) {
        this.cmd = str;
        this.data = t10;
    }

    public static LiveMessageModel<BaseLiveMessage> getBaseModel(String str, LiveRoomModel liveRoomModel) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        UserBean c10 = e.g().c();
        baseLiveMessage.setFromUserId(c10.userId);
        baseLiveMessage.setFromUserNickName(c10.nickName);
        baseLiveMessage.setLevelId(c10.levelId);
        if (!TextUtils.isEmpty(liveRoomModel.getLiveRoomId())) {
            baseLiveMessage.setRoomId(liveRoomModel.getLiveRoomId());
        }
        baseLiveMessage.setUserType(liveRoomModel.getUserType());
        return new LiveMessageModel<>(str, baseLiveMessage);
    }

    public V2TIMMessage buildMessage() {
        return V2TIMManager.getMessageManager().createCustomMessage(BaseLiveRoomFragment.K5.toJson(this).getBytes(StandardCharsets.UTF_8));
    }

    public String getCmd() {
        return this.cmd;
    }

    public T getData() {
        return this.data;
    }

    public int getPriority() {
        String cmd = getCmd();
        cmd.hashCode();
        char c10 = 65535;
        switch (cmd.hashCode()) {
            case -470062326:
                if (cmd.equals("LIVE_LIKE")) {
                    c10 = 0;
                    break;
                }
                break;
            case -466448947:
                if (cmd.equals("LIVE_VOLUME")) {
                    c10 = 1;
                    break;
                }
                break;
            case -207753727:
                if (cmd.equals("LIVE_UPDATE_PK_COINS")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1205656262:
                if (cmd.equals("LIVE_CUSTOM_MSG")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 3;
            case 1:
            case 2:
            case 3:
            default:
                return 1;
        }
    }

    public void setCmd(String str) {
        this.cmd = str;
    }

    public void setData(T t10) {
        this.data = t10;
    }

    public LiveMessageModel() {
    }
}
