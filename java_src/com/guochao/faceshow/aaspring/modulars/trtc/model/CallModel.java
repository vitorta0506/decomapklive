package com.guochao.faceshow.aaspring.modulars.trtc.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCVideoCustomMessage;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCVoiceCustomMessage;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import p7.g;
/* loaded from: classes3.dex */
public class CallModel implements Cloneable, Serializable, TrtcFaceCastUser, Parcelable {
    public static final int TYPE_AUDIO_CALL = 1;
    public static final int TYPE_CALL_BREAK = 4;
    public static final int TYPE_CALL_END = 5;
    public static final int TYPE_CANCEL = 1;
    public static final int TYPE_NO_ANSWER = 3;
    public static final int TYPE_REJECT = 2;
    public static final int TYPE_TRTC_TEXT_MESSAGE = 3;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_VERSION_INTERCEPT = 6;
    public static final int TYPE_VIDEO_CALL = 2;
    public static final int VALUE_PROTOCOL_VERSION = 1;
    public static final int VIDEO_CALL_ACTION_ACCEPT = 7;
    @Deprecated
    public static final int VIDEO_CALL_ACTION_DIALING = 1;
    public static final int VIDEO_CALL_ACTION_ERROR = -1;
    public static final int VIDEO_CALL_ACTION_HANGUP = 5;
    public static final int VIDEO_CALL_ACTION_LINE_BUSY = 6;
    public static final int VIDEO_CALL_ACTION_READY = 8;
    public static final int VIDEO_CALL_ACTION_REJECT = 3;
    public static final int VIDEO_CALL_ACTION_SPONSOR_CANCEL = 2;
    public static final int VIDEO_CALL_ACTION_SPONSOR_TIMEOUT = 4;
    public static final int VIDEO_CALL_ACTION_START_FEE = 9;
    public static final int VIDEO_CALL_ACTION_UNKNOWN = 0;
    public static final int VIDEO_CALL_SHOT_BY_IOS = 10;
    public int actionType;
    private String age;
    public int businessId;
    public int callTime;
    public int callType;
    private boolean fromLiveRoom;
    public String hangupTime;
    public int hangupType;
    public String inviteId;
    public List<String> invitedList;
    private String levelId;
    private String logo;
    public String matchLogId;
    public String matchPrice;
    private String nickName;
    private String preferentialLang;
    public int roomId;
    private String sex;
    public long startCallTimestamp;
    public int timeout;
    private String userAvatar;
    private String userId;
    private String userImg;
    private UserVipData userVipMsg;
    @SerializedName("version")
    public int version;
    private static final String TAG = CallModel.class.getSimpleName();
    public static final Parcelable.Creator<CallModel> CREATOR = new a();

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<CallModel> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CallModel createFromParcel(Parcel parcel) {
            return new CallModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public CallModel[] newArray(int i9) {
            return new CallModel[i9];
        }
    }

    public CallModel() {
        this.version = 0;
        this.roomId = 0;
        this.matchPrice = "";
        this.actionType = 0;
        this.callType = 0;
    }

    public static CallModel build(TrtcFaceCastUser trtcFaceCastUser) {
        CallModel callModel = new CallModel();
        callModel.nickName = trtcFaceCastUser.getUserName();
        callModel.preferentialLang = trtcFaceCastUser.getPreferentialLang();
        callModel.userImg = trtcFaceCastUser.getAvatarUrl();
        callModel.userAvatar = trtcFaceCastUser.getPendantUrl();
        callModel.logo = trtcFaceCastUser.getCountryFlag();
        callModel.age = String.valueOf(trtcFaceCastUser.getAge());
        callModel.sex = String.valueOf(trtcFaceCastUser.getGender());
        callModel.levelId = String.valueOf(trtcFaceCastUser.getLevel());
        callModel.userId = trtcFaceCastUser.getCurrentUserId();
        if (trtcFaceCastUser.getVipInfo() instanceof UserVipData) {
            callModel.userVipMsg = (UserVipData) trtcFaceCastUser.getVipInfo();
        }
        callModel.fromLiveRoom = false;
        return callModel;
    }

    public static int getSecondCallTime(String str) {
        int parseInt;
        int parseInt2;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        String[] split = str.split(CertificateUtil.DELIMITER);
        try {
            int length = split.length;
            if (length == 2) {
                parseInt = Integer.parseInt(split[0]) * 60;
                parseInt2 = Integer.parseInt(split[1]);
            } else if (length != 3) {
                return 0;
            } else {
                parseInt = (Integer.parseInt(split[0]) * LocalCache.TIME_HOUR) + (Integer.parseInt(split[1]) * 60);
                parseInt2 = Integer.parseInt(split[1]);
            }
            return parseInt + parseInt2;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static com.guochao.faceshow.aaspring.modulars.chat.models.a toMessage(int i9, int i10, int i11, String str) {
        if (i9 != 1) {
            if (i9 != 2) {
                return null;
            }
            return new TRTCVideoCustomMessage(i10, i11, str);
        }
        return new TRTCVoiceCustomMessage(i10, i11, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(CallModel callModel) {
        String str;
        List<String> list;
        List<String> list2;
        String next;
        if (callModel != null && (str = callModel.userId) != null && str.equals(this.userId) && (list = callModel.invitedList) != null && !list.isEmpty() && (list2 = this.invitedList) != null && !list2.isEmpty()) {
            Iterator<String> it = callModel.invitedList.iterator();
            while (it.hasNext() && (next = it.next()) != null) {
                if (next.equals(this.invitedList.get(0))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.b
    public int getAge() {
        try {
            return Integer.parseInt(this.age);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h, p7.c
    public String getAvatarUrl() {
        return this.userImg;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getCountryFlag() {
        return this.logo;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h, p7.c
    public int getGender() {
        try {
            return Integer.parseInt(this.sex);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.e
    public int getLevel() {
        try {
            return Integer.parseInt(this.levelId);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getPendantUrl() {
        return this.userAvatar;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser
    public String getPreferentialLang() {
        return this.preferentialLang;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getUserName() {
        return this.nickName;
    }

    public boolean isFromLiveRoom() {
        return this.fromLiveRoom;
    }

    public CallModel replaceAction(int i9) {
        CallModel callModel = new CallModel();
        callModel.matchLogId = this.matchLogId;
        callModel.roomId = this.roomId;
        callModel.inviteId = this.inviteId;
        callModel.businessId = this.businessId;
        callModel.actionType = i9;
        callModel.invitedList = this.invitedList;
        callModel.timeout = this.timeout;
        callModel.callType = this.callType;
        callModel.version = this.version;
        callModel.callTime = this.callTime;
        callModel.nickName = this.nickName;
        callModel.preferentialLang = this.preferentialLang;
        callModel.userImg = this.userImg;
        callModel.userAvatar = this.userAvatar;
        callModel.logo = this.logo;
        callModel.age = this.age;
        callModel.sex = this.sex;
        callModel.levelId = this.levelId;
        callModel.userId = this.userId;
        callModel.userVipMsg = this.userVipMsg;
        callModel.setFromLiveRoom(this.fromLiveRoom);
        return callModel;
    }

    public void setFromLiveRoom(boolean z10) {
        this.fromLiveRoom = z10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.version);
        parcel.writeString(this.matchLogId);
        parcel.writeString(this.hangupTime);
        parcel.writeInt(this.roomId);
        parcel.writeString(this.matchPrice);
        parcel.writeInt(this.actionType);
        parcel.writeString(this.nickName);
        parcel.writeString(this.preferentialLang);
        parcel.writeString(this.userImg);
        parcel.writeString(this.userAvatar);
        parcel.writeString(this.logo);
        parcel.writeString(this.age);
        parcel.writeString(this.sex);
        parcel.writeString(this.levelId);
        parcel.writeString(this.userId);
        parcel.writeParcelable(this.userVipMsg, i9);
        parcel.writeByte(this.fromLiveRoom ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.callType);
        parcel.writeStringList(this.invitedList);
        parcel.writeString(this.inviteId);
        parcel.writeInt(this.businessId);
        parcel.writeInt(this.timeout);
        parcel.writeInt(this.callTime);
        parcel.writeInt(this.hangupType);
        parcel.writeLong(this.startCallTimestamp);
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public UserVipData getVipInfo() {
        return this.userVipMsg;
    }

    protected CallModel(Parcel parcel) {
        this.version = 0;
        this.roomId = 0;
        this.matchPrice = "";
        this.actionType = 0;
        this.callType = 0;
        this.version = parcel.readInt();
        this.matchLogId = parcel.readString();
        this.hangupTime = parcel.readString();
        this.roomId = parcel.readInt();
        this.matchPrice = parcel.readString();
        this.actionType = parcel.readInt();
        this.nickName = parcel.readString();
        this.preferentialLang = parcel.readString();
        this.userImg = parcel.readString();
        this.userAvatar = parcel.readString();
        this.logo = parcel.readString();
        this.age = parcel.readString();
        this.sex = parcel.readString();
        this.levelId = parcel.readString();
        this.userId = parcel.readString();
        this.userVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
        this.fromLiveRoom = parcel.readByte() != 0;
        this.callType = parcel.readInt();
        this.invitedList = parcel.createStringArrayList();
        this.inviteId = parcel.readString();
        this.businessId = parcel.readInt();
        this.timeout = parcel.readInt();
        this.callTime = parcel.readInt();
        this.hangupType = parcel.readInt();
        this.startCallTimestamp = parcel.readLong();
    }
}
