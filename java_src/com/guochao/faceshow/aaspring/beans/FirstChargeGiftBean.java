package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class FirstChargeGiftBean implements Parcelable {
    public static final Parcelable.Creator<FirstChargeGiftBean> CREATOR = new Parcelable.Creator<FirstChargeGiftBean>() { // from class: com.guochao.faceshow.aaspring.beans.FirstChargeGiftBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FirstChargeGiftBean createFromParcel(Parcel parcel) {
            return new FirstChargeGiftBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FirstChargeGiftBean[] newArray(int i9) {
            return new FirstChargeGiftBean[i9];
        }
    };
    private ItemBean data;
    private List<ItemBean> datas;

    /* loaded from: classes3.dex */
    public static class ItemBean implements Parcelable {
        public static final Parcelable.Creator<ItemBean> CREATOR = new Parcelable.Creator<ItemBean>() { // from class: com.guochao.faceshow.aaspring.beans.FirstChargeGiftBean.ItemBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ItemBean createFromParcel(Parcel parcel) {
                return new ItemBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ItemBean[] newArray(int i9) {
                return new ItemBean[i9];
            }
        };
        private String day;
        private String name;
        private String num;
        private int type;
        private String url;
        private String urlAlb;

        public ItemBean() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getDay() {
            return this.day;
        }

        public String getName() {
            return this.name;
        }

        public String getNum() {
            return this.num;
        }

        public int getType() {
            return this.type;
        }

        public String getUrl() {
            if (this.type == 2 && q7.a.e().j()) {
                return this.urlAlb;
            }
            return this.url;
        }

        public String getUrlAlb() {
            return this.urlAlb;
        }

        public void setDay(String str) {
            this.day = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setNum(String str) {
            this.num = str;
        }

        public void setType(int i9) {
            this.type = i9;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setUrlAlb(String str) {
            this.urlAlb = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.type);
            parcel.writeString(this.url);
            parcel.writeString(this.urlAlb);
            parcel.writeString(this.num);
            parcel.writeString(this.day);
            parcel.writeString(this.name);
        }

        protected ItemBean(Parcel parcel) {
            this.type = parcel.readInt();
            this.url = parcel.readString();
            this.urlAlb = parcel.readString();
            this.num = parcel.readString();
            this.day = parcel.readString();
            this.name = parcel.readString();
        }
    }

    /* loaded from: classes3.dex */
    public static class PushFirstRechargeData {
        public List<Map<String, ItemBean>> values;
    }

    protected FirstChargeGiftBean(Parcel parcel) {
        this.data = (ItemBean) parcel.readParcelable(ItemBean.class.getClassLoader());
        this.datas = parcel.createTypedArrayList(ItemBean.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ItemBean getData() {
        return this.data;
    }

    public List<ItemBean> getDatas() {
        return this.datas;
    }

    public void setData(ItemBean itemBean) {
        this.data = itemBean;
    }

    public void setDatas(List<ItemBean> list) {
        this.datas = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.data, i9);
        parcel.writeTypedList(this.datas);
    }

    public FirstChargeGiftBean() {
    }
}
