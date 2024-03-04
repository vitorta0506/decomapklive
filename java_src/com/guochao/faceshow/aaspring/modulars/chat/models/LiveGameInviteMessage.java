package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class LiveGameInviteMessage extends a {
    private int gameCode;
    private String gameIcon;
    private long gameInfoId;
    private String gameName;
    private int game_invite;
    private String liveId;
    private String mChatUserName;
    private String mContent;

    public LiveGameInviteMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
        this.mChatUserName = "";
    }

    public static LiveGameInviteMessage from(LiveGameBean liveGameBean, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("game_invite", 1);
            jSONObject.put("gameInfoId", liveGameBean.getGameInfoId());
            jSONObject.put("gameCode", liveGameBean.getGameCode());
            jSONObject.put("gameIcon", liveGameBean.getIcon());
            jSONObject.put("gameName", liveGameBean.getName());
            jSONObject.put("liveId", str);
            jSONObject.put("msg_type", 3000);
            jSONObject.put("msg_text", "Version is too low to view");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return new LiveGameInviteMessage(V2TIMManager.getMessageManager().createCustomMessage(jSONObject.toString().getBytes(StandardCharsets.UTF_8)));
    }

    private String getMsg(JSONObject jSONObject) {
        String optString = jSONObject.optString("gameName");
        if (!TextUtils.isEmpty(optString)) {
            this.gameName = optString;
        } else {
            int i9 = this.gameCode;
            if (i9 == 2) {
                this.gameName = BaseApplication.getInstance().getString(R.string.live_game_lucky_number);
            } else if (i9 != 5) {
                this.gameName = jSONObject.optString("gameName");
            } else {
                this.gameName = BaseApplication.getInstance().getString(R.string.live_game_lucky_number) + ": " + BaseApplication.getInstance().getString(R.string.recharge_crystal);
            }
        }
        return BaseApplication.getInstance().getString(R.string.live_game_share_game, new Object[]{this.mChatUserName, this.gameName});
    }

    public String getContent() {
        return this.mContent;
    }

    public String getGameIcon() {
        return this.gameIcon;
    }

    public String getGameName() {
        return this.gameName;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? 23 : 24;
    }

    public String getLiveId() {
        return this.liveId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary() {
        return this.mContent;
    }

    public void parseMsg() {
        V2TIMCustomElem customElem = this.message.getCustomElem();
        if (customElem == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(customElem.getData()));
            this.gameInfoId = jSONObject.optLong("gameInfoId");
            this.gameCode = jSONObject.optInt("gameCode");
            this.gameName = jSONObject.optString("gameName");
            this.liveId = jSONObject.optString("liveId");
            this.gameIcon = jSONObject.optString("gameIcon");
            this.mContent = getMsg(jSONObject);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public void setContent(String str) {
        this.mContent = str;
    }

    public void setGameIcon(String str) {
        this.gameIcon = str;
    }

    public void setGameName(String str) {
        this.gameName = str;
    }

    public void setLiveId(String str) {
        this.liveId = str;
    }

    public void setUserName(String str) {
        this.mChatUserName = str;
    }
}
