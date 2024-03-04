package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.R;
import com.guochao.faceshow.context.GCApplication;
/* loaded from: classes3.dex */
public class DressUpData {
    public static int BE_FROM_MVP = 7;
    private String arFileUrl;
    private String arFileUrlV2;
    private String arThumbnailImage;
    private Integer bagAttribute;
    public int beFrom;
    private int canItBeUsed;
    private String dressUpId;
    private long expireTime;
    private String fileUrl;
    private String fileUrlV2;

    /* renamed from: id  reason: collision with root package name */
    public int f16306id;
    private String introduction;
    private boolean isCheck;
    @SerializedName(alternate = {"use"}, value = "isUse")
    private int isUse;
    private String isVip;
    private int itemType;
    private int module;
    public int mvpId;
    public String mvpUrl;
    private String name;
    private String preferentialLang;
    private String priority;
    public int received;
    private boolean selected;
    private int spNum;
    private String thumbnailImage;
    private String titleName;
    private int types;
    private String url;
    public int valid;

    public static DressUpData obtain(MvpBagBean mvpBagBean) {
        DressUpData dressUpData = new DressUpData();
        dressUpData.isUse = mvpBagBean.getUsed();
        dressUpData.expireTime = mvpBagBean.getExpireTime();
        dressUpData.dressUpId = "" + mvpBagBean.getId();
        dressUpData.url = mvpBagBean.getUrl();
        dressUpData.name = GCApplication.app().getString(R.string.mvp_only_for_you_badge);
        dressUpData.types = 0;
        dressUpData.canItBeUsed = 1;
        dressUpData.valid = mvpBagBean.getValid();
        dressUpData.mvpId = mvpBagBean.getId().intValue();
        dressUpData.received = mvpBagBean.getReceived();
        return dressUpData;
    }

    public String getArFileUrl() {
        return this.arFileUrl;
    }

    public String getArFileUrlV2() {
        return this.arFileUrlV2;
    }

    public String getArThumbnailImage() {
        return this.arThumbnailImage;
    }

    public Integer getBagAttribute() {
        return this.bagAttribute;
    }

    public int getCanItBeUsed() {
        return this.canItBeUsed;
    }

    public String getDressUpId() {
        return this.dressUpId;
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public String getFileUrl() {
        return this.fileUrl;
    }

    public String getFileUrlV2() {
        return this.fileUrlV2;
    }

    public String getIntroduction() {
        return this.introduction;
    }

    public int getIsUse() {
        return this.isUse;
    }

    public String getIsVip() {
        return this.isVip;
    }

    public int getItemType() {
        return this.itemType;
    }

    public int getModule() {
        return this.module;
    }

    public String getName() {
        if (!TextUtils.isEmpty(this.name)) {
            return this.name.trim();
        }
        String str = this.name;
        return str == null ? "" : str;
    }

    public String getPreferentialLang() {
        return this.preferentialLang;
    }

    public String getPriority() {
        return this.priority;
    }

    public int getSpNum() {
        return this.spNum;
    }

    public String getThumbnailImage() {
        return this.thumbnailImage;
    }

    public String getTitleName() {
        return this.titleName;
    }

    public int getTypes() {
        return this.types;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isCheck() {
        return this.isCheck;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setArFileUrl(String str) {
        this.arFileUrl = str;
    }

    public void setArFileUrlV2(String str) {
        this.arFileUrlV2 = str;
    }

    public void setArThumbnailImage(String str) {
        this.arThumbnailImage = str;
    }

    public void setBagAttribute(Integer num) {
        this.bagAttribute = num;
    }

    public void setCanItBeUsed(int i9) {
        this.canItBeUsed = i9;
    }

    public void setCheck(boolean z10) {
        this.isCheck = z10;
    }

    public void setDressUpId(String str) {
        this.dressUpId = str;
    }

    public void setExpireTime(long j10) {
        this.expireTime = j10;
    }

    public void setFileUrl(String str) {
        this.fileUrl = str;
    }

    public void setFileUrlV2(String str) {
        this.fileUrlV2 = str;
    }

    public void setIntroduction(String str) {
        this.introduction = str;
    }

    public void setIsUse(int i9) {
        this.isUse = i9;
    }

    public void setIsVip(String str) {
        this.isVip = str;
    }

    public void setItemType(int i9) {
        this.itemType = i9;
    }

    public void setModule(int i9) {
        this.module = i9;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPreferentialLang(String str) {
        this.preferentialLang = str;
    }

    public void setPriority(String str) {
        this.priority = str;
    }

    public void setSelected(boolean z10) {
        this.selected = z10;
    }

    public void setSpNum(int i9) {
        this.spNum = i9;
    }

    public void setThumbnailImage(String str) {
        this.thumbnailImage = str;
    }

    public void setTitleName(String str) {
        this.titleName = str;
    }

    public void setTypes(int i9) {
        this.types = i9;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
