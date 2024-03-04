package com.guochao.faceshow.aaspring.modulars.dressmarket.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class DressResponse {
    private int currPage;
    private List<DressBean> list;
    private int pageSize;
    private int totalCount;
    private int totalPage;

    /* loaded from: classes3.dex */
    public static class DressBean implements Parcelable {
        public static final Parcelable.Creator<DressBean> CREATOR = new Parcelable.Creator<DressBean>() { // from class: com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressResponse.DressBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DressBean createFromParcel(Parcel parcel) {
                return new DressBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DressBean[] newArray(int i9) {
                return new DressBean[i9];
            }
        };
        private String arFileUrl;
        private String arFileUrlV2;
        private String arThumbMd5;
        private String arThumbnailImage;
        private long defaultRuleId;
        private List<DressSpecBean> dressMallRuleList;
        private String fileUrl;
        private String fileUrlV2;
        private int isRelate;
        private int isVip;
        private long mallId;
        private String name;
        private String priority;
        private int tagType;
        private String thumbMd5;
        private String thumbnailImage;
        private int type;

        public DressBean() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getArFileUrl() {
            return this.arFileUrl;
        }

        public String getArFileUrlV2() {
            return this.arFileUrlV2;
        }

        public String getArThumbMd5() {
            return this.arThumbMd5;
        }

        public String getArThumbnailImage() {
            return this.arThumbnailImage;
        }

        public long getDefaultRuleId() {
            return this.defaultRuleId;
        }

        public List<DressSpecBean> getDressMallRuleList() {
            return this.dressMallRuleList;
        }

        public String getFileUrl() {
            return this.fileUrl;
        }

        public String getFileUrlV2() {
            return this.fileUrlV2;
        }

        public int getIsRelate() {
            return this.isRelate;
        }

        public int getIsVip() {
            return this.isVip;
        }

        public long getMallId() {
            return this.mallId;
        }

        public String getName() {
            return this.name;
        }

        public String getPriority() {
            return this.priority;
        }

        public int getTagType() {
            return this.tagType;
        }

        public String getThumbMd5() {
            return this.thumbMd5;
        }

        public String getThumbnailImage() {
            return this.thumbnailImage;
        }

        public int getType() {
            return this.type;
        }

        public void setArFileUrl(String str) {
            this.arFileUrl = str;
        }

        public void setArFileUrlV2(String str) {
            this.arFileUrlV2 = str;
        }

        public void setArThumbMd5(String str) {
            this.arThumbMd5 = str;
        }

        public void setArThumbnailImage(String str) {
            this.arThumbnailImage = str;
        }

        public void setDefaultRuleId(long j10) {
            this.defaultRuleId = j10;
        }

        public void setDressMallRuleList(List<DressSpecBean> list) {
            this.dressMallRuleList = list;
        }

        public void setFileUrl(String str) {
            this.fileUrl = str;
        }

        public void setFileUrlV2(String str) {
            this.fileUrlV2 = str;
        }

        public void setIsRelate(int i9) {
            this.isRelate = i9;
        }

        public void setIsVip(int i9) {
            this.isVip = i9;
        }

        public void setMallId(long j10) {
            this.mallId = j10;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPriority(String str) {
            this.priority = str;
        }

        public void setTagType(int i9) {
            this.tagType = i9;
        }

        public void setThumbMd5(String str) {
            this.thumbMd5 = str;
        }

        public void setThumbnailImage(String str) {
            this.thumbnailImage = str;
        }

        public void setType(int i9) {
            this.type = i9;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeLong(this.mallId);
            parcel.writeString(this.name);
            parcel.writeString(this.fileUrlV2);
            parcel.writeString(this.arFileUrlV2);
            parcel.writeString(this.fileUrl);
            parcel.writeString(this.arFileUrl);
            parcel.writeString(this.thumbnailImage);
            parcel.writeString(this.arThumbnailImage);
            parcel.writeString(this.priority);
            parcel.writeString(this.thumbMd5);
            parcel.writeString(this.arThumbMd5);
            parcel.writeInt(this.isVip);
            parcel.writeInt(this.tagType);
            parcel.writeInt(this.isRelate);
            parcel.writeLong(this.defaultRuleId);
            parcel.writeList(this.dressMallRuleList);
            parcel.writeInt(this.type);
        }

        protected DressBean(Parcel parcel) {
            this.mallId = parcel.readLong();
            this.name = parcel.readString();
            this.fileUrlV2 = parcel.readString();
            this.arFileUrlV2 = parcel.readString();
            this.fileUrl = parcel.readString();
            this.arFileUrl = parcel.readString();
            this.thumbnailImage = parcel.readString();
            this.arThumbnailImage = parcel.readString();
            this.priority = parcel.readString();
            this.thumbMd5 = parcel.readString();
            this.arThumbMd5 = parcel.readString();
            this.isVip = parcel.readInt();
            this.tagType = parcel.readInt();
            this.isRelate = parcel.readInt();
            this.defaultRuleId = parcel.readLong();
            ArrayList arrayList = new ArrayList();
            this.dressMallRuleList = arrayList;
            parcel.readList(arrayList, DressSpecBean.class.getClassLoader());
            this.type = parcel.readInt();
        }
    }

    public int getCurrPage() {
        return this.currPage;
    }

    public List<DressBean> getList() {
        return this.list;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public int getTotalCount() {
        return this.totalCount;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public void setCurrPage(int i9) {
        this.currPage = i9;
    }

    public void setList(List<DressBean> list) {
        this.list = list;
    }

    public void setPageSize(int i9) {
        this.pageSize = i9;
    }

    public void setTotalCount(int i9) {
        this.totalCount = i9;
    }

    public void setTotalPage(int i9) {
        this.totalPage = i9;
    }
}
