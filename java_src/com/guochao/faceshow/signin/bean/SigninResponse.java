package com.guochao.faceshow.signin.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 02\u00020\u0001:\u00010B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B3\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f¢\u0006\u0002\u0010\u000eJ\u000b\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010\"\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0011\u0010#\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0003JD\u0010$\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010%J\b\u0010&\u001a\u00020\bH\u0016J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\bHÖ\u0001J\t\u0010,\u001a\u00020\u0006HÖ\u0001J\u0018\u0010-\u001a\u00020.2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\bH\u0016R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u00061"}, d2 = {"Lcom/guochao/faceshow/signin/bean/SigninResponse;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "tips", "", "status", "", "newUser", "Lcom/guochao/faceshow/signin/bean/NewUser;", "luckInfo", "", "Lcom/guochao/faceshow/signin/bean/RewardList;", "(Ljava/lang/String;Ljava/lang/Integer;Lcom/guochao/faceshow/signin/bean/NewUser;Ljava/util/List;)V", "getLuckInfo", "()Ljava/util/List;", "setLuckInfo", "(Ljava/util/List;)V", "getNewUser", "()Lcom/guochao/faceshow/signin/bean/NewUser;", "setNewUser", "(Lcom/guochao/faceshow/signin/bean/NewUser;)V", "getStatus", "()Ljava/lang/Integer;", "setStatus", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTips", "()Ljava/lang/String;", "setTips", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Lcom/guochao/faceshow/signin/bean/NewUser;Ljava/util/List;)Lcom/guochao/faceshow/signin/bean/SigninResponse;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SigninResponse implements Parcelable {
    @NotNull
    public static final CREATOR CREATOR = new CREATOR(null);
    @Nullable
    private List<RewardList> luckInfo;
    @Nullable
    private NewUser newUser;
    @Nullable
    private Integer status;
    @Nullable
    private String tips;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/signin/bean/SigninResponse$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/guochao/faceshow/signin/bean/SigninResponse;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/guochao/faceshow/signin/bean/SigninResponse;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class CREATOR implements Parcelable.Creator<SigninResponse> {
        private CREATOR() {
        }

        public /* synthetic */ CREATOR(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public SigninResponse createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new SigninResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public SigninResponse[] newArray(int i9) {
            return new SigninResponse[i9];
        }
    }

    public SigninResponse(@Nullable String str, @Nullable Integer num, @Nullable NewUser newUser, @Nullable List<RewardList> list) {
        this.tips = str;
        this.status = num;
        this.newUser = newUser;
        this.luckInfo = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SigninResponse copy$default(SigninResponse signinResponse, String str, Integer num, NewUser newUser, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = signinResponse.tips;
        }
        if ((i9 & 2) != 0) {
            num = signinResponse.status;
        }
        if ((i9 & 4) != 0) {
            newUser = signinResponse.newUser;
        }
        if ((i9 & 8) != 0) {
            list = signinResponse.luckInfo;
        }
        return signinResponse.copy(str, num, newUser, list);
    }

    @Nullable
    public final String component1() {
        return this.tips;
    }

    @Nullable
    public final Integer component2() {
        return this.status;
    }

    @Nullable
    public final NewUser component3() {
        return this.newUser;
    }

    @Nullable
    public final List<RewardList> component4() {
        return this.luckInfo;
    }

    @NotNull
    public final SigninResponse copy(@Nullable String str, @Nullable Integer num, @Nullable NewUser newUser, @Nullable List<RewardList> list) {
        return new SigninResponse(str, num, newUser, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SigninResponse) {
            SigninResponse signinResponse = (SigninResponse) obj;
            return Intrinsics.areEqual(this.tips, signinResponse.tips) && Intrinsics.areEqual(this.status, signinResponse.status) && Intrinsics.areEqual(this.newUser, signinResponse.newUser) && Intrinsics.areEqual(this.luckInfo, signinResponse.luckInfo);
        }
        return false;
    }

    @Nullable
    public final List<RewardList> getLuckInfo() {
        return this.luckInfo;
    }

    @Nullable
    public final NewUser getNewUser() {
        return this.newUser;
    }

    @Nullable
    public final Integer getStatus() {
        return this.status;
    }

    @Nullable
    public final String getTips() {
        return this.tips;
    }

    public int hashCode() {
        String str = this.tips;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.status;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        NewUser newUser = this.newUser;
        int hashCode3 = (hashCode2 + (newUser == null ? 0 : newUser.hashCode())) * 31;
        List<RewardList> list = this.luckInfo;
        return hashCode3 + (list != null ? list.hashCode() : 0);
    }

    public final void setLuckInfo(@Nullable List<RewardList> list) {
        this.luckInfo = list;
    }

    public final void setNewUser(@Nullable NewUser newUser) {
        this.newUser = newUser;
    }

    public final void setStatus(@Nullable Integer num) {
        this.status = num;
    }

    public final void setTips(@Nullable String str) {
        this.tips = str;
    }

    @NotNull
    public String toString() {
        return "SigninResponse(tips=" + this.tips + ", status=" + this.status + ", newUser=" + this.newUser + ", luckInfo=" + this.luckInfo + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i9) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.tips);
        parcel.writeValue(this.status);
        parcel.writeParcelable(this.newUser, i9);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SigninResponse(@org.jetbrains.annotations.NotNull android.os.Parcel r5) {
        /*
            r4 = this;
            java.lang.String r0 = "parcel"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = r5.readString()
            java.lang.Class r1 = java.lang.Integer.TYPE
            java.lang.ClassLoader r1 = r1.getClassLoader()
            java.lang.Object r1 = r5.readValue(r1)
            boolean r2 = r1 instanceof java.lang.Integer
            if (r2 == 0) goto L1a
            java.lang.Integer r1 = (java.lang.Integer) r1
            goto L1b
        L1a:
            r1 = 0
        L1b:
            java.lang.Class<com.guochao.faceshow.signin.bean.NewUser> r2 = com.guochao.faceshow.signin.bean.NewUser.class
            java.lang.ClassLoader r2 = r2.getClassLoader()
            android.os.Parcelable r2 = r5.readParcelable(r2)
            com.guochao.faceshow.signin.bean.NewUser r2 = (com.guochao.faceshow.signin.bean.NewUser) r2
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r4.<init>(r0, r1, r2, r3)
            java.util.List<com.guochao.faceshow.signin.bean.RewardList> r0 = r4.luckInfo
            if (r0 != 0) goto L38
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L38:
            java.lang.Class<com.guochao.faceshow.signin.bean.RewardList> r1 = com.guochao.faceshow.signin.bean.RewardList.class
            java.lang.ClassLoader r1 = r1.getClassLoader()
            r5.readList(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.signin.bean.SigninResponse.<init>(android.os.Parcel):void");
    }
}
