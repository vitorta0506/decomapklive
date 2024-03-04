package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;", "", "()V", "sysHobbies", "", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;", "getSysHobbies", "()Ljava/util/List;", "setSysHobbies", "(Ljava/util/List;)V", "userHobbies", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;", "getUserHobbies", "setUserHobbies", "HobbyBean", "UserHobby", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserHobbyBean {
    @Nullable
    private List<HobbyBean> sysHobbies;
    @Nullable
    private List<UserHobby> userHobbies;

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u001d\u001a\u00020\u000eH\u0016J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u000eH\u0016R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u001b\u0010\u0010\"\u0004\b\u001c\u0010\u0012¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "hobbyList", "", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;", "getHobbyList", "()Ljava/util/List;", "setHobbyList", "(Ljava/util/List;)V", "typeId", "", "getTypeId", "()Ljava/lang/Integer;", "setTypeId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "typeName", "", "getTypeName", "()Ljava/lang/String;", "setTypeName", "(Ljava/lang/String;)V", "typeOrder", "getTypeOrder", "setTypeOrder", "describeContents", "writeToParcel", "", "flags", "CREATOR", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class HobbyBean implements Parcelable {
        @NotNull
        public static final CREATOR CREATOR = new CREATOR(null);
        @Nullable
        private List<UserHobby> hobbyList;
        @Nullable
        private Integer typeId;
        @Nullable
        private String typeName;
        @Nullable
        private Integer typeOrder;

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class CREATOR implements Parcelable.Creator<HobbyBean> {
            private CREATOR() {
            }

            public /* synthetic */ CREATOR(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public HobbyBean createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new HobbyBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public HobbyBean[] newArray(int i9) {
                return new HobbyBean[i9];
            }
        }

        public HobbyBean() {
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public HobbyBean(@NotNull Parcel parcel) {
            this();
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            Class cls = Integer.TYPE;
            Object readValue = parcel.readValue(cls.getClassLoader());
            this.typeId = readValue instanceof Integer ? (Integer) readValue : null;
            this.typeName = parcel.readString();
            Object readValue2 = parcel.readValue(cls.getClassLoader());
            this.typeOrder = readValue2 instanceof Integer ? (Integer) readValue2 : null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Nullable
        public final List<UserHobby> getHobbyList() {
            return this.hobbyList;
        }

        @Nullable
        public final Integer getTypeId() {
            return this.typeId;
        }

        @Nullable
        public final String getTypeName() {
            return this.typeName;
        }

        @Nullable
        public final Integer getTypeOrder() {
            return this.typeOrder;
        }

        public final void setHobbyList(@Nullable List<UserHobby> list) {
            this.hobbyList = list;
        }

        public final void setTypeId(@Nullable Integer num) {
            this.typeId = num;
        }

        public final void setTypeName(@Nullable String str) {
            this.typeName = str;
        }

        public final void setTypeOrder(@Nullable Integer num) {
            this.typeOrder = num;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel parcel, int i9) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            parcel.writeValue(this.typeId);
            parcel.writeString(this.typeName);
            parcel.writeValue(this.typeOrder);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\bR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\b¨\u0006\u001d"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;", "", "()V", "hobbyId", "", "getHobbyId", "()Ljava/lang/Integer;", "setHobbyId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "mIsSelect", "", "getMIsSelect", "()Ljava/lang/Boolean;", "setMIsSelect", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "tags", "", "getTags", "()Ljava/lang/String;", "setTags", "(Ljava/lang/String;)V", "type", "getType", "setType", "typeId", "getTypeId", "setTypeId", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class UserHobby {
        @Nullable
        private Integer hobbyId;
        @Nullable
        private Boolean mIsSelect = Boolean.FALSE;
        @Nullable
        private String tags;
        @Nullable
        private Integer type;
        @Nullable
        private Integer typeId;

        @Nullable
        public final Integer getHobbyId() {
            return this.hobbyId;
        }

        @Nullable
        public final Boolean getMIsSelect() {
            return this.mIsSelect;
        }

        @Nullable
        public final String getTags() {
            return this.tags;
        }

        @Nullable
        public final Integer getType() {
            return this.type;
        }

        @Nullable
        public final Integer getTypeId() {
            return this.typeId;
        }

        public final void setHobbyId(@Nullable Integer num) {
            this.hobbyId = num;
        }

        public final void setMIsSelect(@Nullable Boolean bool) {
            this.mIsSelect = bool;
        }

        public final void setTags(@Nullable String str) {
            this.tags = str;
        }

        public final void setType(@Nullable Integer num) {
            this.type = num;
        }

        public final void setTypeId(@Nullable Integer num) {
            this.typeId = num;
        }
    }

    @Nullable
    public final List<HobbyBean> getSysHobbies() {
        return this.sysHobbies;
    }

    @Nullable
    public final List<UserHobby> getUserHobbies() {
        return this.userHobbies;
    }

    public final void setSysHobbies(@Nullable List<HobbyBean> list) {
        this.sysHobbies = list;
    }

    public final void setUserHobbies(@Nullable List<UserHobby> list) {
        this.userHobbies = list;
    }
}
