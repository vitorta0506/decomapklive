package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import p7.g;
import p7.h;
import p7.i;
/* loaded from: classes3.dex */
public class LivePkInvite implements Parcelable, h, i {
    public static final Parcelable.Creator<LivePkInvite> CREATOR = new Parcelable.Creator<LivePkInvite>() { // from class: com.guochao.faceshow.aaspring.beans.LivePkInvite.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LivePkInvite createFromParcel(Parcel parcel) {
            return new LivePkInvite(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LivePkInvite[] newArray(int i9) {
            return new LivePkInvite[i9];
        }
    };
    private String age;
    private String avatar;
    private String country_logo;
    private int dialog_type;
    private String group_id;
    private String level_id;
    private String live_id;
    private String live_img;
    private String live_type;
    private String nick_name;
    private String sex;
    private String start_time;
    private String userVipMsg;
    private String user_id;
    private String user_img;

    public LivePkInvite() {
        this.dialog_type = 5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // p7.b
    public int getAge() {
        try {
            return Integer.parseInt(this.age);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.user_img;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.country_logo;
    }

    public String getCountry_logo() {
        return this.country_logo;
    }

    public String getCurrentAge() {
        return this.age;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.user_id;
    }

    public int getDialog_type() {
        return this.dialog_type;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        try {
            return Integer.parseInt(this.sex);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public String getGroup_id() {
        return this.group_id;
    }

    @Override // p7.e
    public int getLevel() {
        try {
            return Integer.parseInt(this.level_id);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public String getLevel_id() {
        return this.level_id;
    }

    public String getLive_id() {
        return this.live_id;
    }

    public String getLive_img() {
        return this.live_img;
    }

    public String getLive_type() {
        return this.live_type;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public String getNick_name() {
        return this.nick_name;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    public String getSex() {
        return this.sex;
    }

    public String getStart_time() {
        return this.start_time;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
    }

    public String getUserVipMsg() {
        return this.userVipMsg;
    }

    public String getUser_id() {
        return this.user_id;
    }

    public String getUser_img() {
        return this.user_img;
    }

    @Override // p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCountry_logo(String str) {
        this.country_logo = str;
    }

    public void setCurrentAge(String str) {
        this.age = str;
    }

    public void setDialog_type(int i9) {
        this.dialog_type = i9;
    }

    public void setGroup_id(String str) {
        this.group_id = str;
    }

    public void setLevel_id(String str) {
        this.level_id = str;
    }

    public void setLive_id(String str) {
        this.live_id = str;
    }

    public void setLive_img(String str) {
        this.live_img = str;
    }

    public void setLive_type(String str) {
        this.live_type = str;
    }

    public void setNick_name(String str) {
        this.nick_name = str;
    }

    public void setSex(String str) {
        this.sex = str;
    }

    public void setStart_time(String str) {
        this.start_time = str;
    }

    public void setUserVipMsg(String str) {
        this.userVipMsg = str;
    }

    public void setUser_id(String str) {
        this.user_id = str;
    }

    public void setUser_img(String str) {
        this.user_img = str;
    }

    public String toString() {
        return "LivePkInvite{live_id='" + this.live_id + "', user_id='" + this.user_id + "', group_id='" + this.group_id + "', live_type='" + this.live_type + "', live_img='" + this.live_img + "', user_img='" + this.user_img + "', start_time='" + this.start_time + "', avatar='" + this.avatar + "', country_logo='" + this.country_logo + "', nick_name='" + this.nick_name + "', age='" + this.age + "', sex='" + this.sex + "', level_id='" + this.level_id + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.live_id);
        parcel.writeString(this.group_id);
        parcel.writeString(this.live_type);
        parcel.writeString(this.live_img);
        parcel.writeString(this.user_img);
        parcel.writeString(this.start_time);
        parcel.writeString(this.avatar);
        parcel.writeString(this.country_logo);
        parcel.writeString(this.nick_name);
        parcel.writeString(this.age);
        parcel.writeString(this.sex);
        parcel.writeString(this.level_id);
        parcel.writeString(this.user_id);
    }

    public LivePkInvite(int i9) {
        this.dialog_type = i9;
    }

    protected LivePkInvite(Parcel parcel) {
        this.dialog_type = 5;
        this.live_id = parcel.readString();
        this.group_id = parcel.readString();
        this.live_type = parcel.readString();
        this.live_img = parcel.readString();
        this.user_img = parcel.readString();
        this.start_time = parcel.readString();
        this.avatar = parcel.readString();
        this.country_logo = parcel.readString();
        this.nick_name = parcel.readString();
        this.age = parcel.readString();
        this.sex = parcel.readString();
        this.level_id = parcel.readString();
        this.user_id = parcel.readString();
    }
}
