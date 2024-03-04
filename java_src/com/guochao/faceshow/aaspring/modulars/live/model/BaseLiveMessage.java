package com.guochao.faceshow.aaspring.modulars.live.model;

import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class BaseLiveMessage {
    public static final String LIVE_HELLO_JOIN_GROUP = "LIVE_HELLO_JOIN_GROUP";
    public static final int MSG_VERSION_CODE = 2;
    public static int MVP_DANMU_ON = 1;
    public static final String MVP_RECOMMEND_IM_LOCK_SUCCESS = "MVP_RECOMMEND_IM_LOCK_SUCCESS";
    public static final String RECOMMEND_LOCK_SUCCESS = "RECOMMEND_LOCK_SUCCESS";
    public static final String TYPE_ADD_GROUP = "TYPE_ADD_GROUP";
    public static final String TYPE_ADMIN_USER = "TYPE_ADMIN_USER";
    public static final String TYPE_BAN_TALK_USER = "TYPE_BAN_TALK_USER";
    public static final String TYPE_CUSTOM_MSG = "TYPE_CUSTOM_MSG";
    public static final String TYPE_FOLLOW_ANCHOR = "TYPE_FOLLOW_ANCHOR";
    public static final String TYPE_MEMBER_USER = "TYPE_MEMBER_USER";
    public static final String TYPE_MICROPHON = "TYPE_MICROPHON";
    public static final String TYPE_MICROPHON_MODE = "TYPE_MICROPHON_MODE";
    public static final String TYPE_PUBLIC_NOTICE = "TYPE_PUBLIC_NOTICE";
    public static final String TYPE_PUSH_CHECH = "TYPE_PUSH_CHECH";
    public static final String TYPE_REMOVE_USER = "TYPE_REMOVE_USER";
    public static final String TYPE_SCREEN_SHOT = "TYPE_SCREEN_SHOT";
    public static final String TYPE_SEND_GIFT = "TYPE_SEND_GIFT";
    public static final String TYPE_SHARE = "TYPE_SHARE";
    public static final String TYPE_UPDATE_LIVEINFO = "TYPE_UPDATE_LIVEINFO";
    public boolean action;
    private Long chatDate;
    private String content;
    private String displayFromNickName;
    private transient Drawable drawable;
    public transient SpannableStringBuilder finalResultSpannableString;
    @SerializedName("userHead")
    private String fromUserAvatar;
    @SerializedName(Contants.USER_ID)
    private String fromUserId;
    @SerializedName("nickName")
    private String fromUserNickName;
    public String giftImg;
    public String giftNum;
    public transient boolean isAppendGiftSpan;
    private String isAttention;
    private int isNewer;
    private boolean isThankHelloGift;
    private int levelId;
    @SerializedName("countryFlag")
    private String mFromUserCountryFlag;
    @SerializedName("avatar")
    private String mFromUserPendant;
    @SerializedName("giftId")
    private String mGiftId;
    @SerializedName("giftName")
    private String mGiftName;
    @SerializedName("giftPrice")
    private String mGiftPrice;
    @SerializedName("giftTypeId")
    private String mGiftTypeId;
    @SerializedName("svga_url")
    private String mGiftUrl;
    private transient SpannableString numberSpannable;
    private String operatedUserImg;
    private int pkResultsType;
    private String preferentialLang;
    private boolean refusePkInvite;
    private CharSequence richContent;
    @SerializedName(alternate = {"roomId"}, value = "roomID")
    private String roomId;
    private long sendTime;
    @SerializedName("selectTime")
    private long serverTime;
    private int showDanmu;
    private String showFromUserNickName;
    public int showMVPDanmu;
    private String toUserAvatar;
    public String toUserId;
    @SerializedName(alternate = {"toUserNickName"}, value = "toUserName")
    private String toUserNickName;
    private UserVipData toUserVipMsgr;
    private String translateContent;
    private String type;
    private int userType;
    private UserVipData userVipMsg;
    private int version;
    private boolean translateing = false;
    private boolean showtranslateContent = false;
    private int mvpLevel = -1;
    private String mvpUrl = "";
    public int mvpDanmu = 0;
    private int isOneHello = 0;

    public static String getTypeCustomMsg() {
        return TYPE_CUSTOM_MSG;
    }

    public Long getChatDate() {
        return this.chatDate;
    }

    public String getContent() {
        return this.content;
    }

    public String getDisplayFromNickName() {
        return this.displayFromNickName;
    }

    public Drawable getDrawable() {
        return this.drawable;
    }

    public SpannableStringBuilder getFinalResultSpannableString() {
        return this.finalResultSpannableString;
    }

    public String getFromUserAvatar() {
        return this.fromUserAvatar;
    }

    public String getFromUserCountryFlag() {
        return this.mFromUserCountryFlag;
    }

    public String getFromUserId() {
        return this.fromUserId;
    }

    public String getFromUserNickName() {
        return this.fromUserNickName;
    }

    public String getFromUserPendant() {
        return this.mFromUserPendant;
    }

    public String getGiftId() {
        return this.mGiftId;
    }

    public String getGiftImg() {
        return this.giftImg;
    }

    public String getGiftName() {
        return this.mGiftName;
    }

    public String getGiftNum() {
        return this.giftNum;
    }

    public String getGiftPrice() {
        return this.mGiftPrice;
    }

    public String getGiftTypeId() {
        return this.mGiftTypeId;
    }

    public String getGiftUrl() {
        return this.mGiftUrl;
    }

    public String getIsAttention() {
        return this.isAttention;
    }

    public int getIsNewer() {
        return this.isNewer;
    }

    public int getIsOneHello() {
        return this.isOneHello;
    }

    public int getLevelId() {
        return this.levelId;
    }

    public int getMvpLevel() {
        return this.mvpLevel;
    }

    public String getMvpUrl() {
        return this.mvpUrl;
    }

    public SpannableString getNumberSpannable() {
        return this.numberSpannable;
    }

    public String getOperatedUserImg() {
        return this.operatedUserImg;
    }

    public int getPkResultsType() {
        return this.pkResultsType;
    }

    public CharSequence getRichContent() {
        return this.richContent;
    }

    public String getRoomId() {
        return this.roomId;
    }

    public long getSendTime() {
        return this.sendTime;
    }

    public long getServerTime() {
        return this.serverTime;
    }

    public int getShowDanmu() {
        return this.showDanmu;
    }

    public String getShowFromUserNickName() {
        return this.showFromUserNickName;
    }

    public String getTargetLang() {
        return this.preferentialLang;
    }

    public String getToUserAvatar() {
        return this.toUserAvatar;
    }

    public String getToUserId() {
        return this.toUserId;
    }

    public String getToUserNickName() {
        return this.toUserNickName;
    }

    public UserVipData getToUserVipMsgr() {
        if (this.toUserVipMsgr == null) {
            this.toUserVipMsgr = new UserVipData();
        }
        return this.toUserVipMsgr;
    }

    public String getTranslateContent() {
        return this.translateContent;
    }

    public String getType() {
        return this.type;
    }

    public int getUserType() {
        return this.userType;
    }

    public UserVipData getUserVipMsg() {
        if (this.userVipMsg == null) {
            this.userVipMsg = new UserVipData();
        }
        return this.userVipMsg;
    }

    public int getVersion() {
        return this.version;
    }

    public boolean isAction() {
        return this.action;
    }

    public boolean isAppendGiftSpan() {
        return this.isAppendGiftSpan;
    }

    public boolean isOldMessage() {
        return this.version < 2;
    }

    public boolean isRefusePkInvite() {
        return this.refusePkInvite;
    }

    public boolean isShowtranslateContent() {
        return this.showtranslateContent;
    }

    public boolean isThankHelloGift() {
        return this.isThankHelloGift;
    }

    public boolean isTranslateing() {
        return this.translateing;
    }

    public void setAction(boolean z10) {
        this.action = z10;
    }

    public void setAppendGiftSpan(boolean z10) {
        this.isAppendGiftSpan = z10;
    }

    public void setChatDate(Long l10) {
        this.chatDate = l10;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setDisplayFromNickName(String str) {
        this.displayFromNickName = str;
    }

    public void setDrawable(Drawable drawable) {
        this.drawable = drawable;
    }

    public void setFinalResultSpannableString(SpannableStringBuilder spannableStringBuilder) {
        this.finalResultSpannableString = spannableStringBuilder;
    }

    public void setFromUserAvatar(String str) {
        this.fromUserAvatar = str;
    }

    public void setFromUserCountryFlag(String str) {
        this.mFromUserCountryFlag = str;
    }

    public void setFromUserId(String str) {
        this.fromUserId = str;
    }

    public void setFromUserNickName(String str) {
        this.fromUserNickName = str;
    }

    public void setFromUserPendant(String str) {
        this.mFromUserPendant = str;
    }

    public void setGiftId(String str) {
        this.mGiftId = str;
    }

    public void setGiftImg(String str) {
        this.giftImg = str;
    }

    public void setGiftName(String str) {
        this.mGiftName = str;
    }

    public void setGiftNum(String str) {
        this.giftNum = str;
    }

    public void setGiftPrice(String str) {
        this.mGiftPrice = str;
    }

    public void setGiftTypeId(String str) {
        this.mGiftTypeId = str;
    }

    public void setGiftUrl(String str) {
        this.mGiftUrl = str;
    }

    public void setIsAttention(String str) {
        this.isAttention = str;
    }

    public void setIsNewer(int i9) {
        this.isNewer = i9;
    }

    public void setIsOneHello(int i9) {
        this.isOneHello = i9;
    }

    public void setLevelId(int i9) {
        this.levelId = i9;
    }

    public void setMvpLevel(int i9) {
        this.mvpLevel = i9;
    }

    public void setMvpUrl(String str) {
        this.mvpUrl = str;
    }

    public void setNumberSpannable(SpannableString spannableString) {
        this.numberSpannable = spannableString;
    }

    public void setOperatedUserImg(String str) {
        this.operatedUserImg = str;
    }

    public void setPkResultsType(int i9) {
        this.pkResultsType = i9;
    }

    public void setRefusePkInvite(boolean z10) {
        this.refusePkInvite = z10;
    }

    public void setRichContent(CharSequence charSequence) {
        this.richContent = charSequence;
    }

    public void setRoomId(String str) {
        this.roomId = str;
    }

    public void setSendTime(long j10) {
        this.sendTime = j10;
    }

    public void setServerTime(long j10) {
        this.serverTime = j10;
    }

    public void setShowDanmu(int i9) {
        this.showDanmu = i9;
    }

    public void setShowFromUserNickName(String str) {
        this.showFromUserNickName = str;
    }

    public void setShowtranslateContent(boolean z10) {
        this.showtranslateContent = z10;
    }

    public void setTargetLang(String str) {
        this.preferentialLang = str;
    }

    public void setThankHelloGift(boolean z10) {
        this.isThankHelloGift = z10;
    }

    public void setToUserAvatar(String str) {
        this.toUserAvatar = str;
    }

    public void setToUserId(String str) {
        this.toUserId = str;
    }

    public void setToUserNickName(String str) {
        this.toUserNickName = str;
    }

    public void setToUserVipMsgr(UserVipData userVipData) {
        this.toUserVipMsgr = userVipData;
    }

    public void setTranslateContent(String str) {
        this.translateContent = str;
    }

    public void setTranslateing(boolean z10) {
        this.translateing = z10;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUserType(int i9) {
        this.userType = i9;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setVersion(int i9) {
        this.version = i9;
    }
}
