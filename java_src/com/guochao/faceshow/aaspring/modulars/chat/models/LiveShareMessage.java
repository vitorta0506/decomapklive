package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import com.facebook.appevents.integrity.IntegrityManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.thumbplayer.api.TPErrorCode;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class LiveShareMessage extends a implements h {
    private String address;
    private String countryFlag;
    private String cover;
    private String liveId;
    private String liveTitle;
    private String nickName;
    private int onlineNum;
    private String userHead;
    private String userId;
    UserVipData userVipData;

    public LiveShareMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
        parseMessage();
    }

    public static LiveShareMessage from(LiveRoomModel liveRoomModel) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("live_invite", 1);
            jSONObject.put("liveId", liveRoomModel.getLiveRoomId());
            jSONObject.put(Contants.USER_ID, liveRoomModel.getBroadCasterUserId());
            jSONObject.put("cover", liveRoomModel.getLiveCoverImg());
            jSONObject.put("userHead", liveRoomModel.getAvatarUrl());
            jSONObject.put("nickName", liveRoomModel.getBroadCasterUserName());
            jSONObject.put("vipInfo", new JSONObject(GsonGetter.getGson().toJson(liveRoomModel.getVipInfo())));
            jSONObject.put("liveTitle", liveRoomModel.getLiveInfoContent());
            jSONObject.put("onlineNum", liveRoomModel.getOnlineNum());
            jSONObject.put(IntegrityManager.INTEGRITY_TYPE_ADDRESS, liveRoomModel.getLiveAddress());
            jSONObject.put("countryFlag", liveRoomModel.getCountryFlag());
            jSONObject.put("msg_type", TPErrorCode.TP_ERROR_TYPE_DOWNLOAD_PROXY);
            jSONObject.put("msg_text", "Version is too low to view");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return new LiveShareMessage(V2TIMManager.getMessageManager().createCustomMessage(jSONObject.toString().getBytes(StandardCharsets.UTF_8)));
    }

    private void parseMessage() {
        try {
            JSONObject jSONObject = new JSONObject(new String(this.message.getCustomElem().getData()));
            this.liveId = jSONObject.optString("liveId");
            this.userId = jSONObject.optString(Contants.USER_ID);
            this.cover = jSONObject.optString("cover");
            this.userHead = jSONObject.optString("userHead");
            this.nickName = jSONObject.optString("nickName");
            JSONObject optJSONObject = jSONObject.optJSONObject("vipInfo");
            if (optJSONObject != null) {
                this.userVipData = (UserVipData) GsonGetter.getGson().fromJson(optJSONObject.toString(), (Class<Object>) UserVipData.class);
            }
            this.onlineNum = jSONObject.optInt("onlineNum");
            this.address = jSONObject.optString(IntegrityManager.INTEGRITY_TYPE_ADDRESS);
            this.liveTitle = jSONObject.optString("liveTitle");
            this.countryFlag = jSONObject.optString("countryFlag");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public String getAddress() {
        return this.address;
    }

    @Override // p7.b
    public /* bridge */ /* synthetic */ int getAge() {
        return p7.a.a(this);
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return getUserHead();
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.countryFlag;
    }

    public String getCover() {
        return this.cover;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return getUserId();
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return 0;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? 25 : 26;
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return p7.d.a(this);
    }

    public String getLiveId() {
        return this.liveId;
    }

    public String getLiveTitle() {
        return this.liveTitle;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public String getNickName() {
        return this.nickName;
    }

    public int getOnlineNum() {
        return this.onlineNum;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return getAvatarUrl();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        return context.getString(R.string.live_share_to_im_summery, context.getString(R.string.transaction_type_live), this.nickName);
    }

    public String getUserHead() {
        return this.userHead;
    }

    public String getUserId() {
        return this.userId;
    }

    @Override // p7.h
    public String getUserName() {
        return getNickName();
    }

    public UserVipData getUserVipData() {
        return this.userVipData;
    }

    @Override // p7.h
    public b8.g getVipInfo() {
        return getUserVipData();
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setCover(String str) {
        this.cover = str;
    }

    public void setLiveId(String str) {
        this.liveId = str;
    }

    public void setLiveTitle(String str) {
        this.liveTitle = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setOnlineNum(int i9) {
        this.onlineNum = i9;
    }

    public void setUserHead(String str) {
        this.userHead = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserVipData(UserVipData userVipData) {
        this.userVipData = userVipData;
    }
}
