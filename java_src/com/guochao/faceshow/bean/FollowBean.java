package com.guochao.faceshow.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBean;
import java.util.Objects;
import p7.g;
/* loaded from: classes3.dex */
public class FollowBean implements Parcelable, InviteBean {
    public static final Parcelable.Creator<FollowBean> CREATOR = new Parcelable.Creator<FollowBean>() { // from class: com.guochao.faceshow.bean.FollowBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FollowBean createFromParcel(Parcel parcel) {
            return new FollowBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FollowBean[] newArray(int i9) {
            return new FollowBean[i9];
        }
    };
    private int account;
    private int age;
    private String attention_id;
    private String avatar;
    private int black_list;
    private int countryId;
    private String create_time;
    private String distance;
    private String img;
    private int is_attention;
    private int is_tutual;
    private int leveId;
    public LiveData liveData;
    private String logo;
    private String nick_name;
    private int sex;
    private int shield_circle;
    private String signature;
    private int start_live_push;
    private UserVipData userVipMsg;
    private int user_id;
    private transient boolean isOtherFollowedYou = false;
    private boolean selected = false;

    /* loaded from: classes3.dex */
    public static class LiveData {
        private int isLive;
        private int liveId;
        private String liveImg;
        private int liveType;

        public int getIsLive() {
            return this.isLive;
        }

        public int getLiveId() {
            return this.liveId;
        }

        public String getLiveImg() {
            return this.liveImg;
        }

        public int getLiveType() {
            return this.liveType;
        }

        public RoomItemData obtainData() {
            RoomItemData roomItemData = new RoomItemData();
            roomItemData.setLiveId(this.liveId + "");
            roomItemData.setLiveType(this.liveType + "");
            roomItemData.setLiveImg(this.liveImg);
            roomItemData.setImg(this.liveImg);
            return roomItemData;
        }

        public void setIsLive(int i9) {
            this.isLive = i9;
        }

        public void setLiveId(int i9) {
            this.liveId = i9;
        }

        public void setLiveImg(String str) {
            this.liveImg = str;
        }

        public void setLiveType(int i9) {
            this.liveType = i9;
        }
    }

    public FollowBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof FollowBean)) {
            return this == obj || ((FollowBean) obj).user_id == this.user_id;
        }
        return false;
    }

    public int getAccount() {
        return this.account;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.b
    public int getAge() {
        return this.age;
    }

    public String getAttention_id() {
        return this.attention_id;
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.img;
    }

    public int getBlack_list() {
        return this.black_list;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.logo;
    }

    public int getCountryId() {
        return this.countryId;
    }

    public String getCreate_time() {
        return this.create_time;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return String.valueOf(this.account);
    }

    public String getDistance() {
        return this.distance;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return this.sex;
    }

    public String getImg() {
        return this.img;
    }

    public int getIs_attention() {
        return this.is_attention;
    }

    public int getIs_tutual() {
        return this.is_tutual;
    }

    public int getLeveId() {
        return this.leveId;
    }

    @Override // p7.e
    public int getLevel() {
        return this.leveId;
    }

    public String getLogo() {
        return this.logo;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public String getNick_name() {
        return this.nick_name;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    public int getSex() {
        return this.sex;
    }

    public int getShield_circle() {
        return this.shield_circle;
    }

    public String getSignature() {
        if (TextUtils.isEmpty(this.signature)) {
            return BaseApplication.getInstance().getString(R.string.user_info_default_signature);
        }
        return this.signature;
    }

    public int getStartLivePush() {
        return this.start_live_push;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    public String getUserName() {
        return this.nick_name;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public int getUser_id() {
        return this.user_id;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(getUser_id()));
    }

    public boolean isOtherFollowedYou() {
        return this.isOtherFollowedYou;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public boolean isSelect() {
        return this.selected;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setAccount(int i9) {
        this.account = i9;
    }

    public void setAttention_id(String str) {
        this.attention_id = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBlack_list(int i9) {
        this.black_list = i9;
    }

    public void setCountryId(int i9) {
        this.countryId = i9;
    }

    public void setCreate_time(String str) {
        this.create_time = str;
    }

    public void setDistance(String str) {
        this.distance = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIs_attention(int i9) {
        this.is_attention = i9;
    }

    public void setIs_tutual(int i9) {
        this.is_tutual = i9;
    }

    public void setLeveId(int i9) {
        this.leveId = i9;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    public void setNick_name(String str) {
        this.nick_name = str;
    }

    public void setOtherFollowedYou(boolean z10) {
        this.isOtherFollowedYou = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public void setSelect(boolean z10) {
        this.selected = z10;
    }

    public void setSelected(boolean z10) {
        this.selected = z10;
    }

    public void setSex(int i9) {
        this.sex = i9;
    }

    public void setShield_circle(int i9) {
        this.shield_circle = i9;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public void setStartLivePush(int i9) {
        this.start_live_push = i9;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setUser_id(int i9) {
        this.user_id = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(getIs_tutual());
        parcel.writeInt(getIs_attention());
        parcel.writeString(getImg());
        parcel.writeString(getAttention_id());
        parcel.writeString(getCreate_time());
        parcel.writeInt(getUser_id());
        parcel.writeInt(getBlack_list());
        parcel.writeString(getSignature());
        parcel.writeInt(getSex());
        parcel.writeString(getNick_name());
        parcel.writeInt(getShield_circle());
        parcel.writeInt(getAccount());
        parcel.writeByte(isSelected() ? (byte) 1 : (byte) 0);
        parcel.writeString(getAvatar());
    }

    protected FollowBean(Parcel parcel) {
        setIs_tutual(parcel.readInt());
        setIs_attention(parcel.readInt());
        setImg(parcel.readString());
        setAttention_id(parcel.readString());
        setCreate_time(parcel.readString());
        setUser_id(parcel.readInt());
        setBlack_list(parcel.readInt());
        setSignature(parcel.readString());
        setSex(parcel.readInt());
        setNick_name(parcel.readString());
        setShield_circle(parcel.readInt());
        setAccount(parcel.readInt());
        setSelected(parcel.readByte() != 0);
        setAvatar(parcel.readString());
    }
}
