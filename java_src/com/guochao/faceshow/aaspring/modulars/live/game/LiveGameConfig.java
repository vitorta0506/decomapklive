package com.guochao.faceshow.aaspring.modulars.live.game;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class LiveGameConfig implements Parcelable {
    public static final Parcelable.Creator<LiveGameConfig> CREATOR = new a();
    private int confDiamondNum;
    private int confUserNum;
    private int isJoin;
    private String roundId;
    private boolean selfIn;
    private boolean started;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<LiveGameConfig> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LiveGameConfig createFromParcel(Parcel parcel) {
            return new LiveGameConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LiveGameConfig[] newArray(int i9) {
            return new LiveGameConfig[i9];
        }
    }

    public LiveGameConfig() {
    }

    public int a() {
        return this.confDiamondNum;
    }

    public int b() {
        return this.confUserNum;
    }

    public int c() {
        return this.isJoin;
    }

    public String d() {
        return this.roundId;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean e() {
        return this.isJoin == 1;
    }

    public boolean f() {
        return this.started;
    }

    public void g(int i9) {
        this.confDiamondNum = i9;
    }

    public void h(int i9) {
        this.confUserNum = i9;
    }

    public void i(String str) {
        this.roundId = str;
    }

    public void j(boolean z10) {
        this.isJoin = z10 ? 1 : 0;
        this.selfIn = z10;
    }

    public void k(boolean z10) {
        this.started = z10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.confUserNum);
        parcel.writeInt(this.confDiamondNum);
        parcel.writeInt(this.isJoin);
        parcel.writeByte(this.selfIn ? (byte) 1 : (byte) 0);
        parcel.writeString(this.roundId);
        parcel.writeByte(this.started ? (byte) 1 : (byte) 0);
    }

    protected LiveGameConfig(Parcel parcel) {
        this.confUserNum = parcel.readInt();
        this.confDiamondNum = parcel.readInt();
        this.isJoin = parcel.readInt();
        this.selfIn = parcel.readByte() != 0;
        this.roundId = parcel.readString();
        this.started = parcel.readByte() != 0;
    }
}
