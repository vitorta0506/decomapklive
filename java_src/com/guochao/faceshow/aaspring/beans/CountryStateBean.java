package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import java.util.List;
/* loaded from: classes3.dex */
public class CountryStateBean implements Parcelable {
    public static final Parcelable.Creator<CountryStateBean> CREATOR = new Parcelable.Creator<CountryStateBean>() { // from class: com.guochao.faceshow.aaspring.beans.CountryStateBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CountryStateBean createFromParcel(Parcel parcel) {
            return new CountryStateBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CountryStateBean[] newArray(int i9) {
            return new CountryStateBean[i9];
        }
    };
    public List<Country> countryOfStateList;
    public int liveNum;
    public String name;
    public int stateId;

    /* loaded from: classes3.dex */
    public static class Country implements Parcelable {
        public static final Parcelable.Creator<Country> CREATOR = new Parcelable.Creator<Country>() { // from class: com.guochao.faceshow.aaspring.beans.CountryStateBean.Country.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Country createFromParcel(Parcel parcel) {
                return new Country(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Country[] newArray(int i9) {
                return new Country[i9];
            }
        };
        public int countryId;
        public String countryLogo;
        public String countryLogoRect;
        public String countryName;
        public int isHot;
        public int score;

        public Country() {
        }

        public static Country obtain(LiveRoomPageData.LiveCountry liveCountry) {
            Country country = new Country();
            country.countryId = Integer.parseInt(liveCountry.getCountryId());
            country.countryName = liveCountry.getCountryName();
            country.countryLogo = liveCountry.getCountryLogo();
            country.countryLogoRect = liveCountry.getCountryLogo();
            country.isHot = 0;
            return country;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getCountryId() {
            return this.countryId;
        }

        public String getCountryName() {
            return this.countryName;
        }

        public int getIsHot() {
            return this.isHot;
        }

        public int getScore() {
            return this.score;
        }

        public void setCountryId(int i9) {
            this.countryId = i9;
        }

        public void setCountryName(String str) {
            this.countryName = str;
        }

        public void setIsHot(int i9) {
            this.isHot = i9;
        }

        public void setScore(int i9) {
            this.score = i9;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.countryId);
            parcel.writeString(this.countryName);
            parcel.writeString(this.countryLogo);
            parcel.writeString(this.countryLogoRect);
            parcel.writeInt(this.isHot);
            parcel.writeInt(this.score);
        }

        protected Country(Parcel parcel) {
            this.countryId = parcel.readInt();
            this.countryName = parcel.readString();
            this.countryLogo = parcel.readString();
            this.countryLogoRect = parcel.readString();
            this.isHot = parcel.readInt();
            this.score = parcel.readInt();
        }
    }

    public CountryStateBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<Country> getCountryOfStateList() {
        return this.countryOfStateList;
    }

    public int getLiveNum() {
        return this.liveNum;
    }

    public String getName() {
        return this.name;
    }

    public int getStateId() {
        return this.stateId;
    }

    public void setCountryOfStateList(List<Country> list) {
        this.countryOfStateList = list;
    }

    public void setLiveNum(int i9) {
        this.liveNum = i9;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setStateId(int i9) {
        this.stateId = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.stateId);
        parcel.writeString(this.name);
        parcel.writeInt(this.liveNum);
    }

    protected CountryStateBean(Parcel parcel) {
        this.stateId = parcel.readInt();
        this.name = parcel.readString();
        this.liveNum = parcel.readInt();
    }
}
