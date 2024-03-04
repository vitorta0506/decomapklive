package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class RoomItemDetail implements Parcelable {
    public static final Parcelable.Creator<RoomItemDetail> CREATOR = new Parcelable.Creator<RoomItemDetail>() { // from class: com.guochao.faceshow.aaspring.beans.RoomItemDetail.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RoomItemDetail createFromParcel(Parcel parcel) {
            return new RoomItemDetail(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RoomItemDetail[] newArray(int i9) {
            return new RoomItemDetail[i9];
        }
    };
    private RoomItemData liveInfo;
    private LiveRoomPageData recommend;

    public RoomItemDetail() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RoomItemData getLiveInfo() {
        return this.liveInfo;
    }

    public LiveRoomPageData getRecommend() {
        return this.recommend;
    }

    public void setLiveInfo(RoomItemData roomItemData) {
        this.liveInfo = roomItemData;
    }

    public void setRecommend(LiveRoomPageData liveRoomPageData) {
        this.recommend = liveRoomPageData;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.liveInfo, i9);
        parcel.writeParcelable(this.recommend, i9);
    }

    protected RoomItemDetail(Parcel parcel) {
        this.liveInfo = (RoomItemData) parcel.readParcelable(RoomItemData.class.getClassLoader());
        this.recommend = (LiveRoomPageData) parcel.readParcelable(LiveRoomPageData.class.getClassLoader());
    }
}
