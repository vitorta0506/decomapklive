package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.TipsMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.c;
import com.guochao.faceshow.aaspring.modulars.chat.models.d;
import com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class ConversationInfo implements Comparable<ConversationInfo>, Parcelable {
    public static final int C2C = 1;
    public static final Parcelable.Creator<ConversationInfo> CREATOR = new Parcelable.Creator<ConversationInfo>() { // from class: com.guochao.faceshow.aaspring.beans.ConversationInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConversationInfo createFromParcel(Parcel parcel) {
            return new ConversationInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConversationInfo[] newArray(int i9) {
            return new ConversationInfo[i9];
        }
    };
    public static final int GROUP = 2;
    public static final int OFFLINE = 0;
    public static final int ONLINE = 1;
    public static final int SYSTEM = 3;
    public static final int UNKNOWN = -1;
    private int alwaysTop;
    private int appointState;
    private int attentionAppointAuth;
    private boolean frozen;
    private boolean greetingMessage;
    private int imAudioAppointSwitch;
    private int imVideoAppointSwitch;
    private boolean isNewConversation;
    private boolean isOneDay;
    private boolean isSayHi;
    private boolean isSendSayHi;
    private transient long lastCheckOnlineTimestamp;
    private transient long lastOnlineTimestamp;
    private String mConversationId;
    private ConversationInfoDetail mConversationInfoDetail;
    private int mConversationType;
    private boolean mIsDraft;
    private transient com.guochao.faceshow.aaspring.modulars.chat.models.a mLastMsg;
    private String mLastMsgStr;
    private long mLastMsgTime;
    private transient V2TIMConversation mTIMConversation;
    private int mUnreadNum;
    private transient int onlineStatus;
    private boolean selfSent;
    private int silent;
    private long sortTime;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ConversationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface OnlineStatus {
    }

    protected ConversationInfo(Parcel parcel) {
        this.onlineStatus = -1;
        this.frozen = false;
        this.mIsDraft = parcel.readByte() != 0;
        this.alwaysTop = parcel.readInt();
        this.silent = parcel.readInt();
        this.sortTime = parcel.readLong();
        this.frozen = parcel.readByte() != 0;
        this.mConversationType = parcel.readInt();
        this.mConversationId = parcel.readString();
        this.isNewConversation = parcel.readByte() != 0;
        this.mLastMsgStr = parcel.readString();
        this.mLastMsgTime = parcel.readLong();
        this.mUnreadNum = parcel.readInt();
        this.appointState = parcel.readInt();
        this.attentionAppointAuth = parcel.readInt();
        this.imAudioAppointSwitch = parcel.readInt();
        this.imVideoAppointSwitch = parcel.readInt();
        this.selfSent = parcel.readByte() != 0;
        this.greetingMessage = parcel.readByte() != 0;
        this.isSayHi = parcel.readByte() != 0;
        this.isSendSayHi = parcel.readByte() != 0;
        this.isOneDay = parcel.readByte() != 0;
    }

    private long getSortTime() {
        return Math.max(this.sortTime, this.mLastMsgTime);
    }

    private static String sortKey(String str) {
        return "sort" + str + SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID);
    }

    private static String topKey(String str) {
        return "top" + str + SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID);
    }

    public void checkOneDay() {
        if (getLastMsg() != null && getLastMsg().isSelf() && (getLastMsg() instanceof c)) {
            setOneDay(((c) getLastMsg()).isOneDay());
        } else {
            setOneDay(false);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(getTIMConversationId(), ((ConversationInfo) obj).getTIMConversationId());
    }

    public int getAlwaysTop() {
        return this.alwaysTop;
    }

    public int getAppointState() {
        return this.appointState;
    }

    public int getAttentionAppointAuth() {
        return this.attentionAppointAuth;
    }

    public String getConversationId() {
        return this.mConversationId;
    }

    public ConversationInfoDetail getConversationInfoDetail() {
        return this.mConversationInfoDetail;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
        if (r0.equals(com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.SYSTEM_INTERACTION) == false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getConversationName() {
        /*
            r4 = this;
            int r0 = r4.mConversationType
            r1 = 3
            if (r0 != r1) goto L81
            java.lang.String r0 = r4.mConversationId
            r0.hashCode()
            r2 = -1
            int r3 = r0.hashCode()
            switch(r3) {
                case -355905854: goto L33;
                case 75105639: goto L28;
                case 1510432507: goto L1d;
                case 1827065858: goto L14;
                default: goto L12;
            }
        L12:
            r1 = -1
            goto L3d
        L14:
            java.lang.String r3 = "system_interaction"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L3d
            goto L12
        L1d:
            java.lang.String r1 = "system_official"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L26
            goto L12
        L26:
            r1 = 2
            goto L3d
        L28:
            java.lang.String r1 = "system_focused"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L31
            goto L12
        L31:
            r1 = 1
            goto L3d
        L33:
            java.lang.String r1 = "system_hello"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L3c
            goto L12
        L3c:
            r1 = 0
        L3d:
            switch(r1) {
                case 0: goto L71;
                case 1: goto L61;
                case 2: goto L51;
                case 3: goto L41;
                default: goto L40;
            }
        L40:
            goto L81
        L41:
            com.guochao.faceshow.BaseApplication r0 = com.guochao.faceshow.BaseApplication.getInstance()
            android.content.res.Resources r0 = r0.getResources()
            r1 = 2131888303(0x7f1208af, float:1.9411238E38)
            java.lang.String r0 = r0.getString(r1)
            return r0
        L51:
            com.guochao.faceshow.BaseApplication r0 = com.guochao.faceshow.BaseApplication.getInstance()
            android.content.res.Resources r0 = r0.getResources()
            r1 = 2131886369(0x7f120121, float:1.9407315E38)
            java.lang.String r0 = r0.getString(r1)
            return r0
        L61:
            com.guochao.faceshow.BaseApplication r0 = com.guochao.faceshow.BaseApplication.getInstance()
            android.content.res.Resources r0 = r0.getResources()
            r1 = 2131888301(0x7f1208ad, float:1.9411233E38)
            java.lang.String r0 = r0.getString(r1)
            return r0
        L71:
            com.guochao.faceshow.BaseApplication r0 = com.guochao.faceshow.BaseApplication.getInstance()
            android.content.res.Resources r0 = r0.getResources()
            r1 = 2131888302(0x7f1208ae, float:1.9411235E38)
            java.lang.String r0 = r0.getString(r1)
            return r0
        L81:
            com.guochao.faceshow.aaspring.beans.ConversationInfoDetail r0 = r4.mConversationInfoDetail
            if (r0 == 0) goto L8a
            java.lang.String r0 = r0.getNickName()
            return r0
        L8a:
            com.tencent.imsdk.v2.V2TIMConversation r0 = r4.mTIMConversation
            if (r0 == 0) goto L93
            java.lang.String r0 = r0.getShowName()
            return r0
        L93:
            java.lang.String r0 = r4.getConversationId()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.beans.ConversationInfo.getConversationName():java.lang.String");
    }

    public int getConversationType() {
        return this.mConversationType;
    }

    public int getImAudioAppointSwitch() {
        return this.imAudioAppointSwitch;
    }

    public int getImVideoAppointSwitch() {
        return this.imVideoAppointSwitch;
    }

    public boolean getIsDraft() {
        return this.mIsDraft;
    }

    public long getLastCheckOnlineTimestamp() {
        return this.lastCheckOnlineTimestamp;
    }

    public com.guochao.faceshow.aaspring.modulars.chat.models.a getLastMsg() {
        return this.mLastMsg;
    }

    public String getLastMsgStr() {
        com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = this.mLastMsg;
        if (aVar != null) {
            return aVar.getSummary();
        }
        return this.mLastMsgStr;
    }

    public long getLastMsgTime() {
        return this.mLastMsgTime;
    }

    public long getLastOnlineTimestamp() {
        return this.lastOnlineTimestamp;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int getLocalFaceRes() {
        char c10;
        String str = this.mConversationId;
        switch (str.hashCode()) {
            case -355905854:
                if (str.equals(SystemConversationManager.SYSTEM_HELLO)) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 75105639:
                if (str.equals(SystemConversationManager.SYSTEM_FOCUSED)) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 1510432507:
                if (str.equals(SystemConversationManager.SYSTEM_OFFICIAL)) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 1827065858:
                if (str.equals(SystemConversationManager.SYSTEM_INTERACTION)) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        return c10 != 0 ? c10 != 1 ? c10 != 2 ? R.mipmap.im_icon_guanfang : R.mipmap.im_icon_sayhi : R.mipmap.im_icon_tongzhi : R.mipmap.im_icon_haoyou;
    }

    public int getOnlineStatus() {
        return this.onlineStatus;
    }

    public int getSilent() {
        if (this.mConversationType != 3) {
            return this.silent;
        }
        String str = this.mConversationId;
        str.hashCode();
        if (str.equals(SystemConversationManager.SYSTEM_FOCUSED)) {
            return !SpUtils.getBool(BaseApplication.getInstance(), "is_friend_request", true) ? 1 : 0;
        }
        if (str.equals(SystemConversationManager.SYSTEM_INTERACTION)) {
            return !SpUtils.getBool(BaseApplication.getInstance(), "is_system_interaction", true) ? 1 : 0;
        }
        return this.silent;
    }

    public V2TIMConversation getTIMConversation() {
        return this.mTIMConversation;
    }

    public String getTIMConversationId() {
        if (this.mConversationType == 2) {
            return "group_" + getConversationId();
        }
        return "c2c_" + getConversationId();
    }

    public int getUnreadNum() {
        return this.mUnreadNum;
    }

    public int hashCode() {
        return Objects.hash(getTIMConversationId());
    }

    public boolean isDraft() {
        return this.mIsDraft;
    }

    public boolean isFrozen() {
        return this.frozen;
    }

    public void isGreetingConversation() {
        if (getLastMsg() != null && !getLastMsg().isSelf() && (getLastMsg() instanceof d)) {
            if ((getLastMsg() instanceof TextMessage) && ((TextMessage) getLastMsg()).isOneDay()) {
                setSayHi(true);
                return;
            } else {
                setSayHi(((d) getLastMsg()).isSayHi());
                return;
            }
        }
        setSayHi(false);
    }

    public boolean isGreetingMessage() {
        if (BaseConfig.isChinese()) {
            return false;
        }
        return this.greetingMessage;
    }

    public boolean isMvpConversation() {
        return "iarGoHNtFX2Sbp3RrJqBWwhQEgWHjN5u".equals(this.mConversationId);
    }

    public boolean isNewConversation() {
        return this.isNewConversation;
    }

    public boolean isOneDay() {
        return this.isOneDay;
    }

    public boolean isSayHi() {
        return this.isSayHi;
    }

    public boolean isSelfSent() {
        return this.selfSent;
    }

    public void isSendGreetingConversation() {
        if (getLastMsg() != null && getLastMsg().isSelf() && (getLastMsg() instanceof d)) {
            if ((getLastMsg() instanceof TextMessage) && ((TextMessage) getLastMsg()).isOneDay()) {
                setSendSayHi(true);
                return;
            } else {
                setSendSayHi(((d) getLastMsg()).isSayHi());
                return;
            }
        }
        setSendSayHi(false);
    }

    public boolean isSendSayHi() {
        return this.isSendSayHi;
    }

    public boolean match(String str) {
        ConversationInfoDetail conversationInfoDetail = this.mConversationInfoDetail;
        if (conversationInfoDetail != null) {
            return (conversationInfoDetail.getNickName() != null && this.mConversationInfoDetail.getNickName().toLowerCase().contains(str.toLowerCase())) || (this.mConversationInfoDetail.getUserId() != null && this.mConversationInfoDetail.getUserId().equalsIgnoreCase(str));
        }
        return false;
    }

    public void setAlwaysTop(int i9) {
        this.alwaysTop = i9;
        SpUtils.setInt(BaseApplication.getInstance(), topKey(this.mConversationId), i9);
        if (i9 == 0) {
            setSortTime(0L);
        } else {
            setSortTime(System.currentTimeMillis());
        }
    }

    public void setAppointState(int i9) {
        this.appointState = i9;
    }

    public void setAttentionAppointAuth(int i9) {
        this.attentionAppointAuth = i9;
    }

    public void setConversationId(String str) {
        this.mConversationId = str;
    }

    public void setConversationInfoDetail(ConversationInfoDetail conversationInfoDetail) {
        this.mConversationInfoDetail = conversationInfoDetail;
    }

    public void setConversationType(int i9) {
        this.mConversationType = i9;
    }

    public void setDraft(boolean z10) {
        this.mIsDraft = z10;
    }

    public void setFrozen(boolean z10) {
        this.frozen = z10;
    }

    public void setGreetingMessage(boolean z10) {
        this.greetingMessage = z10;
    }

    public void setImAudioAppointSwitch(int i9) {
        this.imAudioAppointSwitch = i9;
    }

    public void setImVideoAppointSwitch(int i9) {
        this.imVideoAppointSwitch = i9;
    }

    public void setIsDraft(boolean z10) {
        this.mIsDraft = z10;
    }

    public void setLastCheckOnlineTimestamp(long j10) {
        this.lastCheckOnlineTimestamp = j10;
    }

    public void setLastMsg(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (aVar instanceof TipsMessage) {
            this.mLastMsgTime = aVar.getMessage().getTimestamp() * 1000;
            this.mLastMsg = null;
            return;
        }
        this.mLastMsg = aVar;
        if (aVar != null) {
            this.mLastMsgStr = aVar.getSummary();
            this.mLastMsgTime = aVar.getMessage().getTimestamp() * 1000;
            return;
        }
        this.mLastMsgTime = 0L;
        this.mLastMsgStr = null;
    }

    public void setLastMsgStr(String str) {
        this.mLastMsgStr = str;
    }

    public void setLastMsgTime(long j10) {
        this.mLastMsgTime = j10;
    }

    public void setLastOnlineTimestamp(long j10) {
        this.lastOnlineTimestamp = j10;
    }

    public void setNewConversation(boolean z10) {
        this.isNewConversation = z10;
    }

    public void setOneDay(boolean z10) {
        this.isOneDay = z10;
    }

    public void setOnlineStatus(int i9) {
        this.onlineStatus = i9;
    }

    public void setSayHi(boolean z10) {
        this.isSayHi = z10;
    }

    public void setSelfSent(boolean z10) {
        this.selfSent = z10;
    }

    public void setSendSayHi(boolean z10) {
        this.isSendSayHi = z10;
    }

    public void setSilent(int i9) {
        try {
            List<String> myNoDisturb = i.u().s().getMyNoDisturb();
            if (myNoDisturb.contains(this.mConversationId)) {
                if (i9 == 0) {
                    myNoDisturb.remove(this.mConversationId);
                }
            } else if (i9 == 1) {
                myNoDisturb.add(this.mConversationId);
            }
        } catch (Exception unused) {
        }
        this.silent = i9;
    }

    public void setSortTime(long j10) {
        this.sortTime = j10;
        SpUtils.setLong(BaseApplication.getInstance(), sortKey(this.mConversationId), j10);
    }

    public void setTIMConversation2(V2TIMConversation v2TIMConversation) {
        this.mTIMConversation = v2TIMConversation;
    }

    public void setUnreadNum(int i9) {
        this.mUnreadNum = i9;
    }

    public boolean shouldShowInConversationList() {
        if ((!this.isNewConversation || this.mIsDraft) && !fb.a.e(this.mConversationId)) {
            ConversationInfoDetail conversationInfoDetail = this.mConversationInfoDetail;
            if (conversationInfoDetail == null) {
                return !this.frozen;
            }
            boolean isFrozen = conversationInfoDetail.isFrozen();
            this.frozen = isFrozen;
            return !isFrozen;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeByte(this.mIsDraft ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.alwaysTop);
        parcel.writeInt(this.silent);
        parcel.writeLong(this.sortTime);
        parcel.writeByte(this.frozen ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.mConversationType);
        parcel.writeString(this.mConversationId);
        parcel.writeByte(this.isNewConversation ? (byte) 1 : (byte) 0);
        parcel.writeString(this.mLastMsgStr);
        parcel.writeLong(this.mLastMsgTime);
        parcel.writeInt(this.mUnreadNum);
        parcel.writeInt(this.appointState);
        parcel.writeInt(this.attentionAppointAuth);
        parcel.writeInt(this.imAudioAppointSwitch);
        parcel.writeInt(this.imVideoAppointSwitch);
        parcel.writeByte(this.selfSent ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.greetingMessage ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isSayHi ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isSendSayHi ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isOneDay ? (byte) 1 : (byte) 0);
    }

    @Override // java.lang.Comparable
    public int compareTo(ConversationInfo conversationInfo) {
        if (conversationInfo.getLastMsg() == null && TextUtils.isEmpty(conversationInfo.mLastMsgStr)) {
            return -1;
        }
        if (this.mLastMsg == null && TextUtils.isEmpty(this.mLastMsgStr)) {
            return 1;
        }
        if (conversationInfo.getAlwaysTop() == getAlwaysTop()) {
            return String.valueOf(conversationInfo.getSortTime()).compareTo(String.valueOf(getSortTime()));
        }
        return String.valueOf(conversationInfo.getAlwaysTop()).compareTo(String.valueOf(getAlwaysTop()));
    }

    public ConversationInfo() {
        this.onlineStatus = -1;
        this.frozen = false;
    }

    public ConversationInfo(int i9, String str) {
        this(i9, str, null);
    }

    public ConversationInfo(int i9, String str, ConversationInfoDetail conversationInfoDetail) {
        this(i9, str, conversationInfoDetail, null);
    }

    public ConversationInfo(int i9, String str, ConversationInfoDetail conversationInfoDetail, V2TIMConversation v2TIMConversation) {
        String str2;
        this.onlineStatus = -1;
        this.frozen = false;
        this.mConversationType = i9;
        this.mConversationId = str;
        if (i9 == 1) {
            str2 = "c2c_" + str;
        } else if (i9 != 2) {
            return;
        } else {
            str2 = "group_" + str;
        }
        try {
            this.alwaysTop = SpUtils.getInt(BaseApplication.getInstance(), topKey(str2.contains("_") ? str2.split("_")[1] : str2), 0);
        } catch (Exception unused) {
        }
        try {
            this.silent = i.u().s().getMyNoDisturb().contains(str2) ? 1 : 0;
        } catch (Exception unused2) {
        }
        this.sortTime = SpUtils.getLong(BaseApplication.getInstance(), sortKey(str2));
        if (v2TIMConversation != null) {
            this.mTIMConversation = v2TIMConversation;
        } else {
            V2TIMManager.getConversationManager().getConversation(str2, new V2TIMValueCallback<V2TIMConversation>() { // from class: com.guochao.faceshow.aaspring.beans.ConversationInfo.2
                @Override // com.tencent.imsdk.v2.V2TIMValueCallback
                public void onError(int i10, String str3) {
                }

                @Override // com.tencent.imsdk.v2.V2TIMValueCallback
                public void onSuccess(V2TIMConversation v2TIMConversation2) {
                    ConversationInfo.this.mTIMConversation = v2TIMConversation2;
                }
            });
        }
        this.mConversationInfoDetail = conversationInfoDetail;
    }
}
