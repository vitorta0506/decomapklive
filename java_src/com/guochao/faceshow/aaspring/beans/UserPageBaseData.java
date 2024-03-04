package com.guochao.faceshow.aaspring.beans;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import b8.g;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.mine.model.HobbyBean;
import com.guochao.faceshow.utils.LanguageGetUtils;
import com.guochao.faceshow.utils.TimeUtil;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
/* loaded from: classes3.dex */
public class UserPageBaseData implements TrtcFaceCastUser {
    public String animal;
    public int attentionNum;
    public String avatar;
    public String birthday;
    public String constellation;
    public String country;
    public String countryLog;
    public List<CoverData> covers;
    public UserDetail detail;
    public String emotionLable;
    public int fensiNum;
    public List<String> friendLables;
    public List<DynamicBean> friendRings;
    public int giftDiamondNum;
    public String height;
    private List<HobbyBean> hobbyInfos;
    public List<String> hobbyLables;
    public String img;
    private int isApprove;
    private int isExposure;
    public int isInRoom;
    public int isLike;
    public int isLive;
    public int isToBlackList;
    public int isTutual;
    public String job;
    public List<String> languageLable;
    public int levelId;
    public LiveData liveData;
    public String matchScore;
    private UserBean.UserMvpInfo mvpUserInfoResult;
    public String nickName;
    private OnlineInfo onlineData;
    public int sendGiftDiamondNum;
    public int sex;
    public List<VideoBean> shortVideos;
    public String signature;
    public String smallImg;
    public int statuesV2;
    public int superLikeToday;
    public String unfreezeTime;
    public String userId;
    private UserVipData userVipMsg;
    public int videoNum;
    public String weight;

    /* loaded from: classes3.dex */
    public static class CoverData implements Parcelable {
        public static final Parcelable.Creator<CoverData> CREATOR = new Parcelable.Creator<CoverData>() { // from class: com.guochao.faceshow.aaspring.beans.UserPageBaseData.CoverData.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CoverData createFromParcel(Parcel parcel) {
                return new CoverData(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CoverData[] newArray(int i9) {
                return new CoverData[i9];
            }
        };
        public String imagePath;
        public int imgId;
        public String imgUrl;
        public int localType;
        public Uri localUri;
        public String smallImg;
        public int sort;
        public int yellowState;

        public CoverData() {
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
            CoverData coverData = (CoverData) obj;
            return this.imgId == coverData.imgId && Objects.equals(this.imgUrl, coverData.imgUrl) && Objects.equals(this.smallImg, coverData.smallImg);
        }

        public int hashCode() {
            return Objects.hash(this.imgUrl, Integer.valueOf(this.imgId), this.smallImg);
        }

        public boolean isIllegal() {
            return this.yellowState == 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.imgUrl);
            parcel.writeInt(this.imgId);
            parcel.writeString(this.smallImg);
            parcel.writeInt(this.sort);
            parcel.writeInt(this.localType);
            parcel.writeParcelable(this.localUri, i9);
            parcel.writeString(this.imagePath);
            parcel.writeInt(this.yellowState);
        }

        protected CoverData(Parcel parcel) {
            this.imgUrl = parcel.readString();
            this.imgId = parcel.readInt();
            this.smallImg = parcel.readString();
            this.sort = parcel.readInt();
            this.localType = parcel.readInt();
            this.localUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
            this.imagePath = parcel.readString();
            this.yellowState = parcel.readInt();
        }
    }

    /* loaded from: classes3.dex */
    public static class LiveData {
        public String IM_ID;
        public String accelerateRtmp_url;
        public String business_id;
        public String flv_url;
        public String groupId;
        public String info_id;
        public String info_name;
        public int isLive;
        public int kick;
        public String live_id;
        public String live_img;
        public String nick_name;
        public String online_num;
        public String pwd;
        public String share_url;
        public String stream_id;
        public String types;
        public String user_id;
    }

    /* loaded from: classes3.dex */
    public static class OnlineInfo {
        static final int DAY = 86400000;
        static final int HOUR = 3600000;
        static final int MINUTE = 60000;
        static final int SECOND = 1000;
        static final int WEEK = 604800000;
        private String city;
        private String country;
        private String distance;
        private int distanceSwitch;
        private String district;
        private long nowTime;
        @SerializedName(alternate = {"onlineCode"}, value = "onlineState")
        private int onlineCode;
        private int onlineSwitch;
        @SerializedName(alternate = {"onlineTime"}, value = "onlineTimestamp")
        private long onlineTime;
        private String province;

        public String getAddr(Context context) {
            if (getDistanceSwitch() == 1) {
                return context.getResources().getString(R.string.On_The_Mars);
            }
            if (TextUtils.isEmpty(getCity()) && TextUtils.isEmpty(getCountry())) {
                return context.getResources().getString(R.string.On_The_Mars);
            }
            if (TextUtils.isEmpty(getCountry())) {
                return getCity();
            }
            return TextUtils.isEmpty(getCity()) ? getCountry() : String.format(Locale.getDefault(), "%s,%s", getCity(), getCountry());
        }

        public String getChinaAddr(Context context) {
            if (getDistanceSwitch() == 1) {
                return context.getResources().getString(R.string.On_The_Mars);
            }
            if (TextUtils.isEmpty(getProvince()) && TextUtils.isEmpty(getCity())) {
                return context.getResources().getString(R.string.On_The_Mars);
            }
            if (TextUtils.isEmpty(getProvince())) {
                return getCity();
            }
            if (TextUtils.isEmpty(getCity())) {
                return getProvince();
            }
            return Objects.equals(getProvince(), getCity()) ? getProvince() : String.format(Locale.getDefault(), "%s·%s", getProvince(), getCity());
        }

        public String getCity() {
            return this.city;
        }

        public String getCountry() {
            return this.country;
        }

        public String getDescription(Context context) {
            String addr = getAddr(context);
            String format = getDistanceSwitch() != 1 ? TextUtils.isEmpty(getDistance()) ? "" : String.format("(%s)", getDistance()) : "";
            if (getOnlineSwitch() == 1) {
                String time = getTime(context);
                return TextUtils.isEmpty(time) ? String.format(Locale.getDefault(), "%s %s", addr, format) : String.format(Locale.getDefault(), "%s %s · %s", addr, format, time);
            }
            return String.format("%s %s", addr, format);
        }

        public String getDistance() {
            return this.distance;
        }

        public int getDistanceSwitch() {
            return this.distanceSwitch;
        }

        public String getDistrict() {
            return this.district;
        }

        public long getNowTime() {
            return this.nowTime;
        }

        public int getOnlineCode() {
            return this.onlineCode;
        }

        public int getOnlineSwitch() {
            return this.onlineSwitch;
        }

        public long getOnlineTime() {
            return this.onlineTime;
        }

        public String getProvince() {
            return this.province;
        }

        public String getTime(Context context) {
            if (getOnlineCode() == 1) {
                return context.getResources().getString(R.string.personal_online);
            }
            return TimeUtil.getTime(context, Long.valueOf(getOnlineTime()));
        }

        public void setCity(String str) {
            this.city = str;
        }

        public void setCountry(String str) {
            this.country = str;
        }

        public void setDistance(String str) {
            this.distance = str;
        }

        public void setDistanceSwitch(int i9) {
            this.distanceSwitch = i9;
        }

        public void setDistrict(String str) {
            this.district = str;
        }

        public void setNowTime(long j10) {
            this.nowTime = j10;
        }

        public void setOnlineCode(int i9) {
            this.onlineCode = i9;
        }

        public void setOnlineSwitch(int i9) {
            this.onlineSwitch = i9;
        }

        public void setOnlineTime(long j10) {
            this.onlineTime = j10;
        }

        public void setProvince(String str) {
            this.province = str;
        }
    }

    /* loaded from: classes3.dex */
    public static class UserDetail {
        public String animal;
        public String approved;
        public String binded;
        public String constellation;
        public List<GiftPhotoWall> giftPhotoWall;
        public String height;
        public String job;
        public List<String> labels;
        public String monthIncome;
        public List<String> preferenceLabels;
        public int total;
        public int userTotal;
        public String weight;

        /* loaded from: classes3.dex */
        public static class GiftPhotoWall implements Parcelable {
            public static final Parcelable.Creator<GiftPhotoWall> CREATOR = new Parcelable.Creator<GiftPhotoWall>() { // from class: com.guochao.faceshow.aaspring.beans.UserPageBaseData.UserDetail.GiftPhotoWall.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public GiftPhotoWall createFromParcel(Parcel parcel) {
                    return new GiftPhotoWall(parcel);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public GiftPhotoWall[] newArray(int i9) {
                    return new GiftPhotoWall[i9];
                }
            };
            public String giftId;
            public String giftImg;
            public String giftName;
            public String giftNumber;
            public String giftPrice;
            public int mGiftCounts;
            public String userId;

            protected GiftPhotoWall(Parcel parcel) {
                this.giftId = parcel.readString();
                this.giftImg = parcel.readString();
                this.giftName = parcel.readString();
                this.giftNumber = parcel.readString();
                this.giftPrice = parcel.readString();
                this.userId = parcel.readString();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i9) {
                parcel.writeString(this.giftId);
                parcel.writeString(this.giftImg);
                parcel.writeString(this.giftName);
                parcel.writeString(this.giftNumber);
                parcel.writeString(this.giftPrice);
                parcel.writeString(this.userId);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.b
    public int getAge() {
        if (TextUtils.isEmpty(this.birthday)) {
            return 0;
        }
        try {
            long parseLong = Long.parseLong(this.birthday);
            if (parseLong == 0 || parseLong == -1) {
                return 0;
            }
        } catch (Exception unused) {
        }
        Date date = new Date(Long.parseLong(this.birthday));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
        int i9 = calendar.get(1);
        int i10 = calendar.get(2) + 1;
        int i11 = calendar.get(5);
        calendar.setTime(new Date(System.currentTimeMillis() + i.u().s().getServerTimeDiff()));
        calendar.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
        int i12 = calendar.get(1);
        int i13 = calendar.get(2) + 1;
        return (i13 >= i10 && (i13 != i10 || calendar.get(5) >= i11)) ? i12 - i9 : (i12 - i9) - 1;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h, p7.c
    public String getAvatarUrl() {
        return this.img;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getCountryFlag() {
        return this.countryLog;
    }

    public String getCurrentBirthday() {
        try {
            if (TextUtils.isEmpty(this.birthday)) {
                return "";
            }
            Date date = new Date(Long.parseLong(this.birthday));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            return simpleDateFormat.format(date);
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h, p7.c
    public int getGender() {
        return this.sex;
    }

    public List<HobbyBean> getHobbyInfos() {
        return this.hobbyInfos;
    }

    public String getImg() {
        return this.img;
    }

    public int getIsApprove() {
        return this.isApprove;
    }

    public int getIsExposure() {
        return this.isExposure;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.e
    public int getLevel() {
        return this.levelId;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getMVPUrl() {
        UserBean.UserMvpInfo userMvpInfo = this.mvpUserInfoResult;
        return userMvpInfo == null ? "" : userMvpInfo.mvpUrl;
    }

    public UserBean.UserMvpInfo getMvpUserInfoResult() {
        return this.mvpUserInfoResult;
    }

    public OnlineInfo getOnlineData() {
        return this.onlineData;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser
    public /* synthetic */ String getPreferentialLang() {
        return b.d(this);
    }

    public String getUserBaseInfo() {
        BaseApplication baseApplication;
        int i9;
        OnlineInfo onlineInfo = this.onlineData;
        if (onlineInfo == null) {
            return "";
        }
        if (onlineInfo.province != null) {
            String unused = this.onlineData.province;
        }
        if (this.onlineData.city != null) {
            String unused2 = this.onlineData.city;
        }
        LanguageGetUtils.isLanguageChinese();
        if (getGender() == 0) {
            baseApplication = BaseApplication.getInstance();
            i9 = R.string.woman;
        } else {
            baseApplication = BaseApplication.getInstance();
            i9 = R.string.man;
        }
        baseApplication.getString(i9);
        return this.onlineData.country;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getUserName() {
        return this.nickName;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    @Nullable
    public /* bridge */ /* synthetic */ g getVipInfo() {
        return p7.g.c(this);
    }

    public void setHobbyInfos(List<HobbyBean> list) {
        this.hobbyInfos = list;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIsApprove(int i9) {
        this.isApprove = i9;
    }

    public void setIsExposure(int i9) {
        this.isExposure = i9;
    }

    public void setMvpUserInfoResult(UserBean.UserMvpInfo userMvpInfo) {
        this.mvpUserInfoResult = userMvpInfo;
    }

    public void setOnlineData(OnlineInfo onlineInfo) {
        this.onlineData = onlineInfo;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }
}
