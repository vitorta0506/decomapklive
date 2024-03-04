package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.EventMessageModel;
import com.guochao.faceshow.aaspring.utils.MapUtils;
import com.guochao.faceshow.utils.GsonGetter;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class SystemNotifyMessage extends a {
    private String imgUrl;
    private int level;
    @Nullable
    private EventMessageModel mEventMessageModel;
    private final JSONObject mMessageContent;
    private final String typeId;

    public SystemNotifyMessage(V2TIMMessage v2TIMMessage, String str, JSONObject jSONObject) {
        super(v2TIMMessage);
        this.mMessageContent = jSONObject;
        this.typeId = str;
        this.level = jSONObject.optInt("level", -1);
        this.imgUrl = jSONObject.optString("imgUrl", "");
    }

    @Nullable
    public EventMessageModel getEventMessageModel() {
        if (this.mEventMessageModel == null) {
            this.mEventMessageModel = (EventMessageModel) GsonGetter.getGson().fromJson(this.mMessageContent.toString(), (Class<Object>) EventMessageModel.class);
        }
        return this.mEventMessageModel;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        if (isOnlineMessage()) {
            return super.getItemViewType();
        }
        return 31;
    }

    public int getLevel() {
        return this.level;
    }

    public JSONObject getMessageContent() {
        return this.mMessageContent;
    }

    public Map<String, Object> getMessageMap() {
        JSONObject jSONObject = this.mMessageContent;
        if (jSONObject == null) {
            return new HashMap();
        }
        return MapUtils.toMap(jSONObject);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        V2TIMMessage v2TIMMessage = this.message;
        return (v2TIMMessage == null || !"iarGoHNtFX2Sbp3RrJqBWwhQEgWHjN5u".equals(v2TIMMessage.getSender())) ? super.getSummary(context) : context.getString(R.string.mvp_im_chat_title, String.valueOf(this.level));
    }

    public String getTypeId() {
        return this.typeId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean isOnlineMessage() {
        V2TIMMessage v2TIMMessage = this.message;
        return v2TIMMessage == null || !"iarGoHNtFX2Sbp3RrJqBWwhQEgWHjN5u".equals(v2TIMMessage.getSender());
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public void setLevel(int i9) {
        this.level = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean shouldAddToServer() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean showNotification() {
        return false;
    }
}
