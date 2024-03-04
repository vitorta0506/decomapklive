package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.context.GCApplication;
import java.util.Objects;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class ResourceListItemBean implements Parcelable {
    public static final Parcelable.Creator<ResourceListItemBean> CREATOR = new Parcelable.Creator<ResourceListItemBean>() { // from class: com.guochao.faceshow.aaspring.beans.ResourceListItemBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResourceListItemBean createFromParcel(Parcel parcel) {
            return new ResourceListItemBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResourceListItemBean[] newArray(int i9) {
            return new ResourceListItemBean[i9];
        }
    };
    private String androidFaceEffectMd5;
    private String androidFaceEffectMd5V2;
    private String androidFaceEffectUrl;
    private String androidFaceEffectUrlV2;
    private String androidFileUrl;
    private String androidFileUrlMd5;
    private String androidFileUrlMd5V2;
    private String androidFileUrlV2;
    private int bagAttribute;
    private String content;
    private long dateLimit;
    private String downloadUrl;
    private String effectDisplayTime;
    private Long effectTime;
    private String faceEffectName;
    private String fprice;
    private int freezeNumber;
    private String giftSelectionEffectMd5;
    private String giftSelectionEffectUrl;

    /* renamed from: id  reason: collision with root package name */
    private int f16318id;
    private String img;
    private String introduction;
    private String iosFaceEffectMd5;
    private String iosFaceEffectMd5V2;
    private String iosFaceEffectUrl;
    private String iosFaceEffectUrlV2;
    private String iosFileUrl;
    private int isCollect;
    private int isExclusive;
    private String isSelectionEffect;
    private String isTokenGift;
    private int isUse;
    private int isWithAudio;
    private int itemType;
    private int levelId;
    private String levelMome;
    private String levelName;
    @SerializedName("limitMaxNum")
    private int maxDraw;
    private int maxMultiple;
    private String md5;
    private String module;
    private String mp4Md5;
    private String mp4Url;
    private String name;
    private int number;
    private String pasterImg;
    private String price;
    private String selectMp4Md5;
    private String selectMp4Url;
    private int sizeType;
    private String svgaUrl;
    private String tipsOnSelect;
    private int type;

    protected ResourceListItemBean(Parcel parcel) {
        this.maxMultiple = 0;
        this.maxDraw = 0;
        this.bagAttribute = 1;
        this.f16318id = parcel.readInt();
        this.name = parcel.readString();
        this.content = parcel.readString();
        this.introduction = parcel.readString();
        this.module = parcel.readString();
        this.price = parcel.readString();
        this.fprice = parcel.readString();
        this.img = parcel.readString();
        this.pasterImg = parcel.readString();
        this.svgaUrl = parcel.readString();
        this.downloadUrl = parcel.readString();
        this.iosFileUrl = parcel.readString();
        this.androidFileUrl = parcel.readString();
        this.androidFileUrlV2 = parcel.readString();
        this.effectDisplayTime = parcel.readString();
        this.tipsOnSelect = parcel.readString();
        this.isExclusive = parcel.readInt();
        this.isWithAudio = parcel.readInt();
        this.levelId = parcel.readInt();
        this.levelName = parcel.readString();
        this.levelMome = parcel.readString();
        this.type = parcel.readInt();
        this.sizeType = parcel.readInt();
        this.md5 = parcel.readString();
        this.androidFileUrlMd5 = parcel.readString();
        this.androidFileUrlMd5V2 = parcel.readString();
        this.isUse = parcel.readInt();
        this.giftSelectionEffectUrl = parcel.readString();
        this.giftSelectionEffectMd5 = parcel.readString();
        this.isSelectionEffect = parcel.readString();
        this.androidFaceEffectUrl = parcel.readString();
        this.androidFaceEffectMd5 = parcel.readString();
        this.iosFaceEffectUrl = parcel.readString();
        this.iosFaceEffectMd5 = parcel.readString();
        this.androidFaceEffectUrlV2 = parcel.readString();
        this.iosFaceEffectUrlV2 = parcel.readString();
        this.androidFaceEffectMd5V2 = parcel.readString();
        this.iosFaceEffectMd5V2 = parcel.readString();
        this.faceEffectName = parcel.readString();
        if (parcel.readByte() == 0) {
            this.effectTime = null;
        } else {
            this.effectTime = Long.valueOf(parcel.readLong());
        }
        this.isCollect = parcel.readInt();
        this.isTokenGift = parcel.readString();
        this.number = parcel.readInt();
        this.freezeNumber = parcel.readInt();
        this.itemType = parcel.readInt();
        this.maxMultiple = parcel.readInt();
        this.mp4Url = parcel.readString();
        this.mp4Md5 = parcel.readString();
        this.selectMp4Url = parcel.readString();
        this.selectMp4Md5 = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f16318id == ((ResourceListItemBean) obj).f16318id;
    }

    @Deprecated
    public String getAndroidFaceEffectMd5() {
        return this.androidFaceEffectMd5;
    }

    @Deprecated
    public String getAndroidFaceEffectUrl() {
        return this.androidFaceEffectUrl;
    }

    public String getAndroidFaceEffectUrlV2() {
        return this.androidFaceEffectUrlV2;
    }

    public String getAndroidFaceMd5V2() {
        return this.androidFaceEffectMd5V2;
    }

    public String getAndroidFileUrl() {
        return this.androidFileUrl;
    }

    public String getAndroidFileUrlMd5() {
        return this.androidFileUrlMd5;
    }

    public String getAndroidFileUrlMd5V2() {
        return this.androidFileUrlMd5V2;
    }

    public String getAndroidFileUrlV2() {
        return this.androidFileUrlV2;
    }

    public int getBagAttribute() {
        return this.bagAttribute;
    }

    public String getContent() {
        return this.content;
    }

    public long getDateLimit() {
        return this.dateLimit;
    }

    public String getDateLimitDay() {
        long j10 = this.dateLimit;
        if (j10 > 0) {
            long serverTimeDiff = (j10 - i.u().s().getServerTimeDiff()) - System.currentTimeMillis();
            long j11 = serverTimeDiff >= 0 ? serverTimeDiff : 0L;
            return (((j11 / 1000) / 3600) / 24) + "days";
        }
        return GCApplication.app().getString(R.string.permanent);
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public String getEffectDisplayTime() {
        return this.effectDisplayTime;
    }

    public Long getEffectTime() {
        return this.effectTime;
    }

    public String getFaceEffectName() {
        return this.faceEffectName;
    }

    public String getFaceNXPath() {
        return FilePathProvider.getNXShowPath("effect") + FileUtils.RES_PREFIX_STORAGE + getName() + FileUtils.RES_PREFIX_STORAGE;
    }

    public String getFprice() {
        return this.fprice;
    }

    public int getFreezeNumber() {
        return this.freezeNumber;
    }

    public String getGiftSelectionEffectMd5() {
        return this.giftSelectionEffectMd5;
    }

    public String getGiftSelectionEffectUrl() {
        return this.giftSelectionEffectUrl;
    }

    public int getId() {
        return this.f16318id;
    }

    public String getImg() {
        return this.img;
    }

    public String getIntroduction() {
        return this.introduction;
    }

    public String getIosFaceEffectMd5() {
        return this.iosFaceEffectMd5;
    }

    public String getIosFaceEffectUrl() {
        return this.iosFaceEffectUrl;
    }

    public String getIosFaceEffectUrlV2() {
        return this.iosFaceEffectUrlV2;
    }

    public String getIosFaceMd5V2() {
        return this.iosFaceEffectMd5V2;
    }

    public String getIosFileUrl() {
        return this.iosFileUrl;
    }

    public int getIsCollect() {
        return this.isCollect;
    }

    public int getIsExclusive() {
        return this.isExclusive;
    }

    public String getIsSelectionEffect() {
        return this.isSelectionEffect;
    }

    public String getIsToken() {
        return this.isTokenGift;
    }

    public int getIsUse() {
        return this.isUse;
    }

    public int getIsWithAudio() {
        return this.isWithAudio;
    }

    public int getItemType() {
        return this.itemType;
    }

    public int getLevelId() {
        return this.levelId;
    }

    public String getLevelMome() {
        return this.levelMome;
    }

    public String getLevelName() {
        return this.levelName;
    }

    public int getMaxDraw() {
        return this.maxDraw;
    }

    public int getMaxMultiple() {
        return this.maxMultiple;
    }

    public String getMd5() {
        return this.md5;
    }

    public String getModule() {
        return this.module;
    }

    public String getMp4Md5() {
        return this.mp4Md5;
    }

    public String getMp4Url() {
        return this.mp4Url;
    }

    public String getName() {
        return this.name;
    }

    public int getNumber() {
        return this.number;
    }

    public String getPasterImg() {
        return this.pasterImg;
    }

    public String getPrice() {
        return this.price;
    }

    @Deprecated
    public String getSelectMp4Md5() {
        return this.selectMp4Md5;
    }

    @Deprecated
    public String getSelectMp4Url() {
        return this.selectMp4Url;
    }

    public int getSizeType() {
        return this.sizeType;
    }

    public String getSvgaUrl() {
        return this.svgaUrl;
    }

    public String getTipsOnSelect() {
        return this.tipsOnSelect;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f16318id));
    }

    public boolean isBagChipsGIft() {
        return this.bagAttribute == 0;
    }

    public boolean isHandyGift() {
        return this.sizeType == 11;
    }

    public boolean isLuckyGift() {
        return this.sizeType == 99;
    }

    public boolean isMVPGift() {
        return this.sizeType == 100;
    }

    public void setAndroidFaceEffectMd5(String str) {
        this.androidFaceEffectMd5 = str;
    }

    public void setAndroidFaceEffectUrl(String str) {
        this.androidFaceEffectUrl = str;
    }

    public void setAndroidFaceEffectUrlV2(String str) {
        this.androidFaceEffectUrlV2 = str;
    }

    public void setAndroidFaceMd5V2(String str) {
        this.androidFaceEffectMd5V2 = str;
    }

    public void setAndroidFileUrl(String str) {
        this.androidFileUrl = str;
    }

    public void setAndroidFileUrlMd5(String str) {
        this.androidFileUrlMd5 = str;
    }

    public void setAndroidFileUrlMd5V2(String str) {
        this.androidFileUrlMd5V2 = str;
    }

    public void setAndroidFileUrlV2(String str) {
        this.androidFileUrlV2 = str;
    }

    public void setBagAttribute(int i9) {
        this.bagAttribute = i9;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setDateLimit(long j10) {
        this.dateLimit = j10;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setEffectDisplayTime(String str) {
        this.effectDisplayTime = str;
    }

    public void setEffectTime(Long l10) {
        this.effectTime = l10;
    }

    public void setFaceEffectName(String str) {
        this.faceEffectName = str;
    }

    public void setFprice(String str) {
        this.fprice = str;
    }

    public void setFreezeNumber(int i9) {
        this.freezeNumber = i9;
    }

    public void setGiftSelectionEffectMd5(String str) {
        this.giftSelectionEffectMd5 = str;
    }

    public void setGiftSelectionEffectUrl(String str) {
        this.giftSelectionEffectUrl = str;
    }

    public void setId(int i9) {
        this.f16318id = i9;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIntroduction(String str) {
        this.introduction = str;
    }

    public void setIosFaceEffectMd5(String str) {
        this.iosFaceEffectMd5 = str;
    }

    public void setIosFaceEffectUrl(String str) {
        this.iosFaceEffectUrl = str;
    }

    public void setIosFaceEffectUrlV2(String str) {
        this.iosFaceEffectUrlV2 = str;
    }

    public void setIosFaceMd5V2(String str) {
        this.iosFaceEffectMd5V2 = str;
    }

    public void setIosFileUrl(String str) {
        this.iosFileUrl = str;
    }

    public void setIsCollect(int i9) {
        this.isCollect = i9;
    }

    public void setIsExclusive(int i9) {
        this.isExclusive = i9;
    }

    public void setIsSelectionEffect(String str) {
        this.isSelectionEffect = str;
    }

    public void setIsToken(String str) {
        this.isTokenGift = str;
    }

    public void setIsUse(int i9) {
        this.isUse = i9;
    }

    public void setIsWithAudio(int i9) {
        this.isWithAudio = i9;
    }

    public void setItemType(int i9) {
        this.itemType = i9;
    }

    public void setLevelId(int i9) {
        this.levelId = i9;
    }

    public void setLevelMome(String str) {
        this.levelMome = str;
    }

    public void setLevelName(String str) {
        this.levelName = str;
    }

    public void setMaxDraw(int i9) {
        this.maxDraw = i9;
    }

    public void setMaxMultiple(int i9) {
        this.maxMultiple = i9;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setModule(String str) {
        this.module = str;
    }

    public void setMp4Md5(String str) {
        this.mp4Md5 = str;
    }

    public void setMp4Url(String str) {
        this.mp4Url = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(int i9) {
        this.number = i9;
    }

    public void setPasterImg(String str) {
        this.pasterImg = str;
    }

    public void setPrice(String str) {
        this.price = str;
    }

    public void setSelectMp4Md5(String str) {
        this.selectMp4Md5 = str;
    }

    public void setSelectMp4Url(String str) {
        this.selectMp4Url = str;
    }

    public void setSizeType(int i9) {
        this.sizeType = i9;
    }

    public void setSvgaUrl(String str) {
        this.svgaUrl = str;
    }

    public void setTipsOnSelect(String str) {
        this.tipsOnSelect = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f16318id);
        parcel.writeString(this.name);
        parcel.writeString(this.content);
        parcel.writeString(this.introduction);
        parcel.writeString(this.module);
        parcel.writeString(this.price);
        parcel.writeString(this.fprice);
        parcel.writeString(this.img);
        parcel.writeString(this.pasterImg);
        parcel.writeString(this.svgaUrl);
        parcel.writeString(this.downloadUrl);
        parcel.writeString(this.iosFileUrl);
        parcel.writeString(this.androidFileUrl);
        parcel.writeString(this.androidFileUrlV2);
        parcel.writeString(this.effectDisplayTime);
        parcel.writeString(this.tipsOnSelect);
        parcel.writeInt(this.isExclusive);
        parcel.writeInt(this.isWithAudio);
        parcel.writeInt(this.levelId);
        parcel.writeString(this.levelName);
        parcel.writeString(this.levelMome);
        parcel.writeInt(this.type);
        parcel.writeInt(this.sizeType);
        parcel.writeString(this.md5);
        parcel.writeString(this.androidFileUrlMd5);
        parcel.writeString(this.androidFileUrlMd5V2);
        parcel.writeInt(this.isUse);
        parcel.writeString(this.giftSelectionEffectUrl);
        parcel.writeString(this.giftSelectionEffectMd5);
        parcel.writeString(this.isSelectionEffect);
        parcel.writeString(this.androidFaceEffectUrl);
        parcel.writeString(this.androidFaceEffectMd5);
        parcel.writeString(this.iosFaceEffectUrl);
        parcel.writeString(this.iosFaceEffectMd5);
        parcel.writeString(this.androidFaceEffectUrlV2);
        parcel.writeString(this.iosFaceEffectUrlV2);
        parcel.writeString(this.androidFaceEffectMd5V2);
        parcel.writeString(this.iosFaceEffectMd5V2);
        parcel.writeString(this.faceEffectName);
        if (this.effectTime == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeLong(this.effectTime.longValue());
        }
        parcel.writeInt(this.isCollect);
        parcel.writeString(this.isTokenGift);
        parcel.writeInt(this.number);
        parcel.writeInt(this.freezeNumber);
        parcel.writeInt(this.itemType);
        parcel.writeInt(this.maxMultiple);
        parcel.writeString(this.mp4Url);
        parcel.writeString(this.mp4Md5);
        parcel.writeString(this.selectMp4Url);
        parcel.writeString(this.selectMp4Md5);
    }

    public ResourceListItemBean() {
        this.maxMultiple = 0;
        this.maxDraw = 0;
        this.bagAttribute = 1;
    }
}
