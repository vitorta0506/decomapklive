package com.guochao.faceshow.facetoface.data;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class GiftData {
    public int code;
    public int levelId;
    public String msg;
    public GiftResult result;

    /* loaded from: classes2.dex */
    public static class GiftItemData implements Parcelable {
        public static final Parcelable.Creator<GiftItemData> CREATOR = new Parcelable.Creator<GiftItemData>() { // from class: com.guochao.faceshow.facetoface.data.GiftData.GiftItemData.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GiftItemData createFromParcel(Parcel parcel) {
                return new GiftItemData(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GiftItemData[] newArray(int i9) {
                return new GiftItemData[i9];
            }
        };
        public int counts;
        public String giftTypeId;
        public int gift_id;
        public String gname;
        public String img;
        public int numbers;
        public int price;
        public int sourceTypeId;
        public String svga_url;
        public int typeId;

        public GiftItemData() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.svga_url);
            parcel.writeString(this.img);
            parcel.writeInt(this.price);
            parcel.writeInt(this.counts);
            parcel.writeInt(this.gift_id);
            parcel.writeInt(this.typeId);
            parcel.writeString(this.gname);
            parcel.writeInt(this.numbers);
            parcel.writeString(this.giftTypeId);
            parcel.writeInt(this.sourceTypeId);
        }

        protected GiftItemData(Parcel parcel) {
            this.svga_url = parcel.readString();
            this.img = parcel.readString();
            this.price = parcel.readInt();
            this.counts = parcel.readInt();
            this.gift_id = parcel.readInt();
            this.typeId = parcel.readInt();
            this.gname = parcel.readString();
            this.numbers = parcel.readInt();
            this.giftTypeId = parcel.readString();
            this.sourceTypeId = parcel.readInt();
        }
    }

    /* loaded from: classes2.dex */
    public static class GiftResult {
        public int balance;
        public int diamond;
        public int end_time;
        public List<GiftItemData> gift;
    }
}
