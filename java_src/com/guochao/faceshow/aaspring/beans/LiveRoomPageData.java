package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.aaspring.beans.CountryStateBean;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveRoomPageData implements Parcelable {
    public static final Parcelable.Creator<LiveRoomPageData> CREATOR = new Parcelable.Creator<LiveRoomPageData>() { // from class: com.guochao.faceshow.aaspring.beans.LiveRoomPageData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveRoomPageData createFromParcel(Parcel parcel) {
            return new LiveRoomPageData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveRoomPageData[] newArray(int i9) {
            return new LiveRoomPageData[i9];
        }
    };
    private List<LiveCountry> countryLiveList;
    private String currentPage;
    private int isReceivePrivateLive;
    private LiveCountry mDiscoverCounty;
    private String matchNum;
    private String pageSize;
    private List<RoomItemData> roomList;
    private String typeId;

    /* loaded from: classes3.dex */
    public static class LiveCountry implements Parcelable {
        public static final Parcelable.Creator<LiveCountry> CREATOR = new Parcelable.Creator<LiveCountry>() { // from class: com.guochao.faceshow.aaspring.beans.LiveRoomPageData.LiveCountry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LiveCountry createFromParcel(Parcel parcel) {
                return new LiveCountry(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LiveCountry[] newArray(int i9) {
                return new LiveCountry[i9];
            }
        };
        private String countryId;
        private String countryLogo;
        private String countryLogoRect;
        private String countryName;
        private int isMoreTen;

        public LiveCountry() {
        }

        public static LiveCountry obtain(CountryStateBean.Country country) {
            LiveCountry liveCountry = new LiveCountry();
            liveCountry.countryId = String.valueOf(country.countryId);
            liveCountry.countryName = country.countryName;
            String str = country.countryLogo;
            liveCountry.countryLogo = str;
            String str2 = country.countryLogoRect;
            if (str2 != null) {
                str = str2;
            }
            liveCountry.countryLogoRect = str;
            return liveCountry;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getCountryId() {
            return this.countryId;
        }

        public String getCountryLogo() {
            String str = this.countryLogoRect;
            return str == null ? this.countryLogo : str;
        }

        public String getCountryName() {
            return this.countryName;
        }

        public int getIsMoreTen() {
            return this.isMoreTen;
        }

        public void setCountryId(String str) {
            this.countryId = str;
        }

        public void setCountryLogo(String str) {
            this.countryLogo = str;
        }

        public void setCountryName(String str) {
            this.countryName = str;
        }

        public void setIsMoreTen(int i9) {
            this.isMoreTen = i9;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.countryLogo);
            parcel.writeString(this.countryLogoRect);
            parcel.writeString(this.countryId);
            parcel.writeString(this.countryName);
            parcel.writeInt(this.isMoreTen);
        }

        protected LiveCountry(Parcel parcel) {
            this.countryLogo = parcel.readString();
            this.countryLogoRect = parcel.readString();
            this.countryId = parcel.readString();
            this.countryName = parcel.readString();
            this.isMoreTen = parcel.readInt();
        }
    }

    protected LiveRoomPageData(Parcel parcel) {
        this.pageSize = parcel.readString();
        this.typeId = parcel.readString();
        this.currentPage = parcel.readString();
        this.roomList = parcel.createTypedArrayList(RoomItemData.CREATOR);
        this.matchNum = parcel.readString();
        this.isReceivePrivateLive = parcel.readInt();
        this.countryLiveList = parcel.createTypedArrayList(LiveCountry.CREATOR);
        this.mDiscoverCounty = (LiveCountry) parcel.readParcelable(LiveCountry.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<LiveCountry> getCountryLiveList() {
        return this.countryLiveList;
    }

    public String getCurrentPage() {
        return this.currentPage;
    }

    public LiveCountry getDiscoverCounty() {
        return this.mDiscoverCounty;
    }

    public int getIsReceivePrivateLive() {
        return this.isReceivePrivateLive;
    }

    public String getMatchNum() {
        return this.matchNum;
    }

    public String getPageSize() {
        return this.pageSize;
    }

    public List<RoomItemData> getRoomList() {
        return this.roomList;
    }

    public String getTypeId() {
        return this.typeId;
    }

    public void setCountryLiveList(List<LiveCountry> list) {
        this.countryLiveList = list;
    }

    public void setCurrentPage(String str) {
        this.currentPage = str;
    }

    public void setDiscoverCounty(LiveCountry liveCountry) {
        this.mDiscoverCounty = liveCountry;
    }

    public void setIsReceivePrivateLive(int i9) {
        this.isReceivePrivateLive = i9;
    }

    public void setMatchNum(String str) {
        this.matchNum = str;
    }

    public void setPageSize(String str) {
        this.pageSize = str;
    }

    public void setRoomList(List<RoomItemData> list) {
        this.roomList = list;
    }

    public void setTypeId(String str) {
        this.typeId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.pageSize);
        parcel.writeString(this.typeId);
        parcel.writeString(this.currentPage);
        parcel.writeTypedList(this.roomList);
        parcel.writeString(this.matchNum);
        parcel.writeInt(this.isReceivePrivateLive);
        parcel.writeTypedList(this.countryLiveList);
        parcel.writeParcelable(this.mDiscoverCounty, i9);
    }

    public LiveRoomPageData() {
    }
}
