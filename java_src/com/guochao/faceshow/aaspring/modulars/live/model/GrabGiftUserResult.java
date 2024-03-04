package com.guochao.faceshow.aaspring.modulars.live.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes3.dex */
public class GrabGiftUserResult implements Parcelable {
    public static final Parcelable.Creator<GrabGiftUserResult> CREATOR = new Parcelable.Creator<GrabGiftUserResult>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.GrabGiftUserResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GrabGiftUserResult createFromParcel(Parcel parcel) {
            return new GrabGiftUserResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GrabGiftUserResult[] newArray(int i9) {
            return new GrabGiftUserResult[i9];
        }
    };
    private List<GrabGiftUser> records;
    private int status;
    private String treasureId;

    public GrabGiftUserResult() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<GrabGiftUser> getRecords() {
        return this.records;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTreasureId() {
        return this.treasureId;
    }

    public void setRecords(List<GrabGiftUser> list) {
        this.records = list;
    }

    public void setStatus(int i9) {
        this.status = i9;
    }

    public void setTreasureId(String str) {
        this.treasureId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.treasureId);
        parcel.writeTypedList(this.records);
        parcel.writeInt(this.status);
    }

    protected GrabGiftUserResult(Parcel parcel) {
        this.treasureId = parcel.readString();
        this.records = parcel.createTypedArrayList(GrabGiftUser.CREATOR);
        this.status = parcel.readInt();
    }
}
