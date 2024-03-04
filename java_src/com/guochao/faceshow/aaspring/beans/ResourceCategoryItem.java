package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ResourceCategoryItem implements Parcelable {
    public static final Parcelable.Creator<ResourceCategoryItem> CREATOR = new Parcelable.Creator<ResourceCategoryItem>() { // from class: com.guochao.faceshow.aaspring.beans.ResourceCategoryItem.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResourceCategoryItem createFromParcel(Parcel parcel) {
            return new ResourceCategoryItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResourceCategoryItem[] newArray(int i9) {
            return new ResourceCategoryItem[i9];
        }
    };
    private String childCode;
    private int fSourceTypeId;
    private List<ResourceListItemBean> gifList;
    private int isChild;
    private String isToken;
    private String isTokenShow;
    private int isshow;
    private int isuse;
    private String md5;
    private int moduleCode;
    private int sortNum;
    private String sourceCode;
    private String sourceTypeName;
    private String sourceTypeNameLang;
    private int sourctTypeId;

    public ResourceCategoryItem() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getChildCode() {
        return this.childCode;
    }

    public int getFSourceTypeId() {
        return this.fSourceTypeId;
    }

    public List<ResourceListItemBean> getGifList() {
        return this.gifList;
    }

    public int getIsChild() {
        return this.isChild;
    }

    public String getIsToken() {
        return this.isToken;
    }

    public String getIsTokenShow() {
        return this.isTokenShow;
    }

    public int getIsshow() {
        return this.isshow;
    }

    public int getIsuse() {
        return this.isuse;
    }

    public String getMd5() {
        return this.md5;
    }

    public int getModuleCode() {
        return this.moduleCode;
    }

    public int getSortNum() {
        return this.sortNum;
    }

    public String getSourceCode() {
        return this.sourceCode;
    }

    public String getSourceTypeName() {
        return TextUtils.isEmpty(this.sourceTypeName) ? "" : this.sourceTypeName.trim();
    }

    public String getSourceTypeNameLang() {
        return TextUtils.isEmpty(this.sourceTypeNameLang) ? "" : this.sourceTypeNameLang.trim();
    }

    public int getSourctTypeId() {
        return this.sourctTypeId;
    }

    public void setChildCode(String str) {
        this.childCode = str;
    }

    public void setFSourceTypeId(int i9) {
        this.fSourceTypeId = i9;
    }

    public void setGifList(List<ResourceListItemBean> list) {
        this.gifList = list;
    }

    public void setIsChild(int i9) {
        this.isChild = i9;
    }

    public void setIsToken(String str) {
        this.isToken = str;
    }

    public void setIsTokenShow(String str) {
        this.isTokenShow = str;
    }

    public void setIsshow(int i9) {
        this.isshow = i9;
    }

    public void setIsuse(int i9) {
        this.isuse = i9;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setModuleCode(int i9) {
        this.moduleCode = i9;
    }

    public void setSortNum(int i9) {
        this.sortNum = i9;
    }

    public void setSourceCode(String str) {
        this.sourceCode = str;
    }

    public void setSourceTypeName(String str) {
        this.sourceTypeName = str;
    }

    public void setSourceTypeNameLang(String str) {
        this.sourceTypeNameLang = str;
    }

    public void setSourctTypeId(int i9) {
        this.sourctTypeId = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.sourctTypeId);
        parcel.writeString(this.sourceTypeName);
        parcel.writeString(this.sourceTypeNameLang);
        parcel.writeInt(this.isChild);
        parcel.writeInt(this.fSourceTypeId);
        parcel.writeString(this.sourceCode);
        parcel.writeInt(this.moduleCode);
        parcel.writeInt(this.isshow);
        parcel.writeInt(this.isuse);
        parcel.writeInt(this.sortNum);
        parcel.writeString(this.md5);
        parcel.writeList(this.gifList);
        parcel.writeString(this.isToken);
        parcel.writeString(this.isTokenShow);
    }

    protected ResourceCategoryItem(Parcel parcel) {
        this.sourctTypeId = parcel.readInt();
        this.sourceTypeName = parcel.readString();
        this.sourceTypeNameLang = parcel.readString();
        this.isChild = parcel.readInt();
        this.fSourceTypeId = parcel.readInt();
        this.sourceCode = parcel.readString();
        this.moduleCode = parcel.readInt();
        this.isshow = parcel.readInt();
        this.isuse = parcel.readInt();
        this.sortNum = parcel.readInt();
        this.md5 = parcel.readString();
        ArrayList arrayList = new ArrayList();
        this.gifList = arrayList;
        parcel.readList(arrayList, ResourceListItemBean.class.getClassLoader());
        this.isToken = parcel.readString();
        this.isTokenShow = parcel.readString();
    }
}
