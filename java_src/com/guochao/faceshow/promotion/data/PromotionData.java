package com.guochao.faceshow.promotion.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class PromotionData implements Serializable {
    public int code;
    public String msg;
    public PromotionResult result;

    /* loaded from: classes4.dex */
    public static class ActivityGiftEntity {
        private int activityId;
        private String createTime;
        private int duringNum;
        private int giftCount = 10;
        private String giftDarkImg;
        private int giftId;
        private String giftLightImg;
        private String giftUrl;

        /* renamed from: id  reason: collision with root package name */
        private int f26119id;
        private int rank;
        private int sendCount;
        private int sort;

        public int getActivityId() {
            return this.activityId;
        }

        public String getCreateTime() {
            return this.createTime;
        }

        public int getDuringNum() {
            return this.duringNum;
        }

        public int getGiftCount() {
            return this.giftCount;
        }

        public String getGiftDarkImg() {
            return this.giftDarkImg;
        }

        public int getGiftId() {
            return this.giftId;
        }

        public String getGiftLightImg() {
            return this.giftLightImg;
        }

        public String getGiftUrl() {
            return this.giftUrl;
        }

        public int getId() {
            return this.f26119id;
        }

        public int getRank() {
            return this.rank;
        }

        public int getSendCount() {
            return this.sendCount;
        }

        public int getSort() {
            return this.sort;
        }

        public void setActivityId(int i9) {
            this.activityId = i9;
        }

        public void setCreateTime(String str) {
            this.createTime = str;
        }

        public void setDuringNum(int i9) {
            this.duringNum = i9;
        }

        public void setGiftCount(int i9) {
            this.giftCount = i9;
        }

        public void setGiftDarkImg(String str) {
            this.giftDarkImg = str;
        }

        public void setGiftId(int i9) {
            this.giftId = i9;
        }

        public void setGiftLightImg(String str) {
            this.giftLightImg = str;
        }

        public void setGiftUrl(String str) {
            this.giftUrl = str;
        }

        public void setId(int i9) {
            this.f26119id = i9;
        }

        public void setRank(int i9) {
            this.rank = i9;
        }

        public void setSendCount(int i9) {
            this.sendCount = i9;
        }

        public void setSort(int i9) {
            this.sort = i9;
        }
    }

    /* loaded from: classes4.dex */
    public static class PromotionResult implements Serializable {
        private List<ResultItem> live;
        public List<ResultItem> video;
        private List<ResultItem> normalLive = new ArrayList();
        private List<ResultItem> fullScreenLive = new ArrayList();

        public List<ResultItem> getFullScreenLive() {
            if (this.live == null) {
                return new ArrayList();
            }
            if (!this.fullScreenLive.isEmpty()) {
                return this.fullScreenLive;
            }
            for (ResultItem resultItem : this.live) {
                if (resultItem.liveActiveType == 4) {
                    this.fullScreenLive.add(resultItem);
                }
            }
            return this.fullScreenLive;
        }

        public List<ResultItem> getLive() {
            return this.live;
        }

        public List<ResultItem> getNormalLive() {
            if (this.live == null) {
                return new ArrayList();
            }
            if (!this.normalLive.isEmpty()) {
                return this.normalLive;
            }
            for (ResultItem resultItem : this.live) {
                if (resultItem.liveActiveType != 4) {
                    this.normalLive.add(resultItem);
                }
            }
            return this.normalLive;
        }
    }

    /* loaded from: classes4.dex */
    public static class ResultItem implements Serializable, Parcelable {
        public static final Parcelable.Creator<ResultItem> CREATOR = new Parcelable.Creator<ResultItem>() { // from class: com.guochao.faceshow.promotion.data.PromotionData.ResultItem.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResultItem createFromParcel(Parcel parcel) {
                return new ResultItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResultItem[] newArray(int i9) {
                return new ResultItem[i9];
            }
        };
        private String activeBackgroundColor;
        private String activitiesCoverBig;
        private String activitiesCoverSmall;
        public List<ActivityGiftEntity> appActivityGiftEntityList;
        public ShortVideoActivityScheme appScheme;
        public String backgroundImg;
        public Integer belongLang;
        private String borderColor;
        public String coverImgUrl;
        public long endTime;
        public String floatIconUrl;
        private String giftNumberColor;

        /* renamed from: id  reason: collision with root package name */
        public int f26120id;
        public String introduction;
        public int isBackgroundImg;
        public List<String> likImg;
        public int liveActiveType;
        public String liveMultilLang;
        public String name;
        public String normalMutilLang;
        private String numberBannerColor;
        public transient long requestTime = -1;
        private String rightCornerImg;
        private String rightFoldUpImg;
        public String screenEffectMd5;
        public String screenEffectUrl;
        public String shareImgUrl;
        public String shareTextCn;
        public String shareTextEn;
        public long startTime;
        public String stripImgUrl;
        public int type;
        private String variableNumberColor;
        public String webPageUrl;

        public ResultItem() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getActiveBackgroundColor() {
            return TextUtils.isEmpty(this.activeBackgroundColor) ? "#10471F" : this.activeBackgroundColor;
        }

        public String getActivitiesCoverBig() {
            return TextUtils.isEmpty(this.activitiesCoverBig) ? "https://mp5.facecast.xyz/storage1/M06/61/C0/aPODC19GM5yAVT21AAIaGBXZz_0378.png" : this.activitiesCoverBig;
        }

        public String getActivitiesCoverSmall() {
            return TextUtils.isEmpty(this.activitiesCoverSmall) ? "https://mp5.facecast.xyz/storage1/M05/61/C0/aPODC19GM5yAGdw1AAGxjE5PLgg976.png" : this.activitiesCoverSmall;
        }

        public String getBorderColor() {
            return TextUtils.isEmpty(this.borderColor) ? "#FFFF00" : this.borderColor;
        }

        public String getGiftNumberColor() {
            return TextUtils.isEmpty(this.giftNumberColor) ? "#ffffff" : this.giftNumberColor;
        }

        public String getNumberBannerColor() {
            return TextUtils.isEmpty(this.numberBannerColor) ? "#052b05" : this.numberBannerColor;
        }

        public String getRightCornerImg() {
            return TextUtils.isEmpty(this.rightCornerImg) ? "https://mp5.facecast.xyz/storage1/M01/64/5C/aPODCl9Ns22AU08UAAAIHW6epUM609.png" : this.rightCornerImg;
        }

        public String getRightFoldUpImg() {
            return TextUtils.isEmpty(this.rightFoldUpImg) ? "https://mp5.facecast.xyz/storage1/M00/64/5C/aPODCl9Ns2yAX7qCAAAJAs6qzHo510.png" : this.rightFoldUpImg;
        }

        public String getVariableNumberColor() {
            return TextUtils.isEmpty(this.variableNumberColor) ? "#ffe400" : this.variableNumberColor;
        }

        public void setActiveBackgroundColor(String str) {
            this.activeBackgroundColor = str;
        }

        public void setActivitiesCoverBig(String str) {
            this.activitiesCoverBig = str;
        }

        public void setActivitiesCoverSmall(String str) {
            this.activitiesCoverSmall = str;
        }

        public void setBorderColor(String str) {
            this.borderColor = str;
        }

        public void setGiftNumberColor(String str) {
            this.giftNumberColor = str;
        }

        public void setNumberBannerColor(String str) {
            this.numberBannerColor = str;
        }

        public void setRightCornerImg(String str) {
            this.rightCornerImg = str;
        }

        public void setRightFoldUpImg(String str) {
            this.rightFoldUpImg = str;
        }

        public void setVariableNumberColor(String str) {
            this.variableNumberColor = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.coverImgUrl);
            parcel.writeString(this.webPageUrl);
            parcel.writeString(this.stripImgUrl);
            parcel.writeString(this.name);
            parcel.writeLong(this.startTime);
            parcel.writeInt(this.f26120id);
            parcel.writeLong(this.endTime);
            parcel.writeInt(this.type);
            parcel.writeString(this.introduction);
            parcel.writeString(this.shareTextCn);
            parcel.writeString(this.shareTextEn);
            parcel.writeString(this.shareImgUrl);
            parcel.writeString(this.floatIconUrl);
            parcel.writeStringList(this.likImg);
            parcel.writeInt(this.isBackgroundImg);
            parcel.writeString(this.backgroundImg);
            parcel.writeString(this.screenEffectUrl);
            parcel.writeString(this.screenEffectMd5);
            parcel.writeString(this.liveMultilLang);
            parcel.writeString(this.normalMutilLang);
            parcel.writeString(this.activitiesCoverBig);
            parcel.writeString(this.activitiesCoverSmall);
            parcel.writeString(this.activeBackgroundColor);
            parcel.writeString(this.borderColor);
            parcel.writeString(this.variableNumberColor);
            parcel.writeString(this.giftNumberColor);
            parcel.writeString(this.numberBannerColor);
            parcel.writeString(this.rightCornerImg);
            parcel.writeString(this.rightFoldUpImg);
            parcel.writeInt(this.liveActiveType);
        }

        protected ResultItem(Parcel parcel) {
            this.coverImgUrl = parcel.readString();
            this.webPageUrl = parcel.readString();
            this.stripImgUrl = parcel.readString();
            this.name = parcel.readString();
            this.startTime = parcel.readLong();
            this.f26120id = parcel.readInt();
            this.endTime = parcel.readLong();
            this.type = parcel.readInt();
            this.introduction = parcel.readString();
            this.shareTextCn = parcel.readString();
            this.shareTextEn = parcel.readString();
            this.shareImgUrl = parcel.readString();
            this.floatIconUrl = parcel.readString();
            this.likImg = parcel.createStringArrayList();
            this.isBackgroundImg = parcel.readInt();
            this.backgroundImg = parcel.readString();
            this.screenEffectUrl = parcel.readString();
            this.screenEffectMd5 = parcel.readString();
            this.liveMultilLang = parcel.readString();
            this.normalMutilLang = parcel.readString();
            this.activitiesCoverBig = parcel.readString();
            this.activitiesCoverSmall = parcel.readString();
            this.activeBackgroundColor = parcel.readString();
            this.borderColor = parcel.readString();
            this.variableNumberColor = parcel.readString();
            this.giftNumberColor = parcel.readString();
            this.numberBannerColor = parcel.readString();
            this.rightCornerImg = parcel.readString();
            this.rightFoldUpImg = parcel.readString();
            this.liveActiveType = parcel.readInt();
        }
    }
}
