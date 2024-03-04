package com.guochao.faceshow.systemassistant.data;

import com.guochao.faceshow.aaspring.modulars.chat.models.a;
import com.guochao.faceshow.systemassistant.data.AssistantUserInfo;
import java.util.List;
/* loaded from: classes4.dex */
public class AssistantMsgResult {
    public static final int MSG_SENDING = 1;
    public static final int MSG_SENDING_FAIL = 2;
    public static final int MSG_SENDING_SUCCEED = 3;
    public int code;
    public String msg;
    public List<AssistantMessage> result;

    /* loaded from: classes4.dex */
    public static class AssistantMessage {
        public String FromAccount;
        public List<MsgBodyItem> MsgBody;
        public String ToAccount;
    }

    /* loaded from: classes4.dex */
    public static class ImgInfoItem {
        public int Height;
        public int Type;
        public String URL;
        public int Width;
    }

    /* loaded from: classes4.dex */
    public static class MsgBodyItem {
        public MsgContent MsgContent;
        public String MsgType;
    }

    /* loaded from: classes4.dex */
    public static class MsgContent {
        public MsgData Data;
        public String Desc;
        public String Ext;
        public String Sound;
    }

    /* loaded from: classes4.dex */
    public static class MsgData {
        public transient String FromAccount;
        public int Id;
        public String Image;
        public int ImageHeight;
        public List<ImgInfoItem> ImageInfoArray;
        public int ImageWidth;
        public int MsgId;
        public String Name;
        public int PartakeTimes;
        public String Status;
        public String Text;
        public transient String ToAccount;
        public int Type;
        public String URL;
        public String Url;
        public long UserId;
        public transient AssistantUserInfo.OfficialUserData assistantOfficialUser;
        public a mMessage;
        public String translate;
        public transient boolean isSelf = false;
        public transient int sendStatus = -1;
        public transient int titleIconResId = -1;
        public String MsgTimestamp = "";
        public boolean shareable = true;

        public ImgInfoItem getImgInfoArrayFirstItem() {
            List<ImgInfoItem> list = this.ImageInfoArray;
            if (list == null || list.size() == 0) {
                return null;
            }
            return this.ImageInfoArray.get(0);
        }
    }
}
