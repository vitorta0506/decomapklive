package com.guochao.faceshow.aaspring.modulars.dressmarket.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.beans.SearchUserNameOrIdBean;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import java.util.List;
import p7.d;
import p7.g;
import p7.h;
import p7.i;
/* loaded from: classes3.dex */
public class SendUserResponse {
    private int currPage;
    private List<SendUser> list;
    private int pageSize;
    private int totalCount;
    private int totalPage;

    /* loaded from: classes3.dex */
    public static class SendUser implements h, i, Parcelable {
        public static final Parcelable.Creator<SendUser> CREATOR = new Parcelable.Creator<SendUser>() { // from class: com.guochao.faceshow.aaspring.modulars.dressmarket.bean.SendUserResponse.SendUser.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SendUser createFromParcel(Parcel parcel) {
                return new SendUser(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SendUser[] newArray(int i9) {
                return new SendUser[i9];
            }
        };
        private int age;
        private String countryLogo;
        private boolean isSelect;
        private String logo;
        private String nickName;
        private int sex;
        private String userId;
        private UserVipData userVipMsg;

        public SendUser() {
        }

        public static SendUser obtain(SearchUserNameOrIdBean searchUserNameOrIdBean) {
            SendUser sendUser = new SendUser();
            sendUser.userId = searchUserNameOrIdBean.getUserId();
            try {
                sendUser.sex = Integer.parseInt(searchUserNameOrIdBean.getUserSex());
            } catch (Exception unused) {
            }
            sendUser.age = searchUserNameOrIdBean.getAge();
            sendUser.nickName = searchUserNameOrIdBean.getUserNickName();
            sendUser.countryLogo = searchUserNameOrIdBean.getCountryFlag();
            sendUser.logo = searchUserNameOrIdBean.getUserImg();
            sendUser.userVipMsg = searchUserNameOrIdBean.getUserVipMsg();
            sendUser.isSelect = searchUserNameOrIdBean.isSelect();
            return sendUser;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // p7.b
        public int getAge() {
            return this.age;
        }

        @Override // p7.h, p7.c
        public String getAvatarUrl() {
            return this.logo;
        }

        @Override // p7.h
        public String getCountryFlag() {
            return this.countryLogo;
        }

        public String getCountryLogo() {
            return this.countryLogo;
        }

        @Override // p7.h
        public String getCurrentUserId() {
            return this.userId;
        }

        @Override // p7.h, p7.c
        public int getGender() {
            return this.sex;
        }

        @Override // p7.e
        public /* bridge */ /* synthetic */ int getLevel() {
            return d.a(this);
        }

        public String getLogo() {
            return this.logo;
        }

        @Override // p7.h
        public /* bridge */ /* synthetic */ String getMVPUrl() {
            return g.a(this);
        }

        public String getNickName() {
            return this.nickName;
        }

        @Override // p7.h
        public String getPendantUrl() {
            return null;
        }

        public int getSex() {
            return this.sex;
        }

        public String getUserId() {
            return this.userId;
        }

        @Override // p7.h
        public String getUserName() {
            return this.nickName;
        }

        public UserVipData getUserVipMsg() {
            return this.userVipMsg;
        }

        @Override // p7.h
        @Nullable
        public /* bridge */ /* synthetic */ b8.g getVipInfo() {
            return g.c(this);
        }

        public boolean isSelect() {
            return this.isSelect;
        }

        public void setAge(int i9) {
            this.age = i9;
        }

        public void setCountryLogo(String str) {
            this.countryLogo = str;
        }

        public void setLogo(String str) {
            this.logo = str;
        }

        public void setNickName(String str) {
            this.nickName = str;
        }

        public void setSelect(boolean z10) {
            this.isSelect = z10;
        }

        public void setSex(int i9) {
            this.sex = i9;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setUserVipMsg(UserVipData userVipData) {
            this.userVipMsg = userVipData;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.userId);
            parcel.writeInt(this.sex);
            parcel.writeInt(this.age);
            parcel.writeString(this.nickName);
            parcel.writeString(this.countryLogo);
            parcel.writeString(this.logo);
            parcel.writeParcelable(this.userVipMsg, i9);
        }

        protected SendUser(Parcel parcel) {
            this.userId = parcel.readString();
            this.sex = parcel.readInt();
            this.age = parcel.readInt();
            this.nickName = parcel.readString();
            this.countryLogo = parcel.readString();
            this.logo = parcel.readString();
            this.userVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
        }
    }

    public int getCurrPage() {
        return this.currPage;
    }

    public List<SendUser> getList() {
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

    public void setList(List<SendUser> list) {
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
