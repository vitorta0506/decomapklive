package com.guochao.faceshow.guild.bean;

import android.os.Parcel;
import android.os.Parcelable;
import b7.b;
import com.facebook.internal.ServerProtocol;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\bB\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0003¢\u0006\u0002\u0010\u0016J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010C\u001a\u00020\u0003HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010F\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\t\u0010G\u001a\u00020\u0003HÆ\u0003J\t\u0010H\u001a\u00020\fHÆ\u0003J\t\u0010I\u001a\u00020\u0003HÆ\u0003J\t\u0010J\u001a\u00020\u0003HÆ\u0003J\t\u0010K\u001a\u00020\u0003HÆ\u0003J±\u0001\u0010L\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0015\u001a\u00020\u0003HÆ\u0001J\t\u0010M\u001a\u00020\u0003HÖ\u0001J\u0013\u0010N\u001a\u00020O2\b\u0010P\u001a\u0004\u0018\u00010QHÖ\u0003J\t\u0010R\u001a\u00020\u0003HÖ\u0001J\t\u0010S\u001a\u00020\u0005HÖ\u0001J\u0019\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0015\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001c\"\u0004\b\"\u0010\u001eR\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0018\"\u0004\b$\u0010\u001aR\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u001c\"\u0004\b*\u0010\u001eR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001c\"\u0004\b,\u0010\u001eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u001c\"\u0004\b.\u0010\u001eR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0018\"\u0004\b0\u0010\u001aR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0018\"\u0004\b6\u0010\u001aR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0018\"\u0004\b8\u0010\u001aR\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u0018\"\u0004\b:\u0010\u001aR\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0018\"\u0004\b<\u0010\u001a¨\u0006Y"}, d2 = {"Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;", "Landroid/os/Parcelable;", "guildId", "", "name", "", "reason", "recordVoList", "", "Lcom/guochao/faceshow/guild/bean/RecordVo;", "signId", "signTime", "", "signType", ServerProtocol.DIALOG_PARAM_STATE, Contants.USER_ID, "recordId", "status", "reqReason", "refuseComplain", "refuseReason", "periodDay", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getGuildId", "()I", "setGuildId", "(I)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getPeriodDay", "setPeriodDay", "getReason", "setReason", "getRecordId", "setRecordId", "getRecordVoList", "()Ljava/util/List;", "setRecordVoList", "(Ljava/util/List;)V", "getRefuseComplain", "setRefuseComplain", "getRefuseReason", "setRefuseReason", "getReqReason", "setReqReason", "getSignId", "setSignId", "getSignTime", "()J", "setSignTime", "(J)V", "getSignType", "setSignType", "getState", "setState", "getStatus", "setStatus", "getUserId", "setUserId", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ContractHistoryBean implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<ContractHistoryBean> CREATOR = new Creator();
    private int guildId;
    @Nullable
    private String name;
    private int periodDay;
    @Nullable
    private String reason;
    private int recordId;
    @Nullable
    private List<RecordVo> recordVoList;
    @Nullable
    private String refuseComplain;
    @Nullable
    private String refuseReason;
    @Nullable
    private String reqReason;
    private int signId;
    private long signTime;
    private int signType;
    private int state;
    private int status;
    private int userId;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Creator implements Parcelable.Creator<ContractHistoryBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final ContractHistoryBean createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            int readInt = parcel.readInt();
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt2 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt2);
                for (int i9 = 0; i9 != readInt2; i9++) {
                    arrayList2.add(RecordVo.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new ContractHistoryBean(readInt, readString, readString2, arrayList, parcel.readInt(), parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final ContractHistoryBean[] newArray(int i9) {
            return new ContractHistoryBean[i9];
        }
    }

    public ContractHistoryBean(int i9, @Nullable String str, @Nullable String str2, @Nullable List<RecordVo> list, int i10, long j10, int i11, int i12, int i13, int i14, int i15, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i16) {
        this.guildId = i9;
        this.name = str;
        this.reason = str2;
        this.recordVoList = list;
        this.signId = i10;
        this.signTime = j10;
        this.signType = i11;
        this.state = i12;
        this.userId = i13;
        this.recordId = i14;
        this.status = i15;
        this.reqReason = str3;
        this.refuseComplain = str4;
        this.refuseReason = str5;
        this.periodDay = i16;
    }

    public final int component1() {
        return this.guildId;
    }

    public final int component10() {
        return this.recordId;
    }

    public final int component11() {
        return this.status;
    }

    @Nullable
    public final String component12() {
        return this.reqReason;
    }

    @Nullable
    public final String component13() {
        return this.refuseComplain;
    }

    @Nullable
    public final String component14() {
        return this.refuseReason;
    }

    public final int component15() {
        return this.periodDay;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @Nullable
    public final String component3() {
        return this.reason;
    }

    @Nullable
    public final List<RecordVo> component4() {
        return this.recordVoList;
    }

    public final int component5() {
        return this.signId;
    }

    public final long component6() {
        return this.signTime;
    }

    public final int component7() {
        return this.signType;
    }

    public final int component8() {
        return this.state;
    }

    public final int component9() {
        return this.userId;
    }

    @NotNull
    public final ContractHistoryBean copy(int i9, @Nullable String str, @Nullable String str2, @Nullable List<RecordVo> list, int i10, long j10, int i11, int i12, int i13, int i14, int i15, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i16) {
        return new ContractHistoryBean(i9, str, str2, list, i10, j10, i11, i12, i13, i14, i15, str3, str4, str5, i16);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ContractHistoryBean) {
            ContractHistoryBean contractHistoryBean = (ContractHistoryBean) obj;
            return this.guildId == contractHistoryBean.guildId && Intrinsics.areEqual(this.name, contractHistoryBean.name) && Intrinsics.areEqual(this.reason, contractHistoryBean.reason) && Intrinsics.areEqual(this.recordVoList, contractHistoryBean.recordVoList) && this.signId == contractHistoryBean.signId && this.signTime == contractHistoryBean.signTime && this.signType == contractHistoryBean.signType && this.state == contractHistoryBean.state && this.userId == contractHistoryBean.userId && this.recordId == contractHistoryBean.recordId && this.status == contractHistoryBean.status && Intrinsics.areEqual(this.reqReason, contractHistoryBean.reqReason) && Intrinsics.areEqual(this.refuseComplain, contractHistoryBean.refuseComplain) && Intrinsics.areEqual(this.refuseReason, contractHistoryBean.refuseReason) && this.periodDay == contractHistoryBean.periodDay;
        }
        return false;
    }

    public final int getGuildId() {
        return this.guildId;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public final int getPeriodDay() {
        return this.periodDay;
    }

    @Nullable
    public final String getReason() {
        return this.reason;
    }

    public final int getRecordId() {
        return this.recordId;
    }

    @Nullable
    public final List<RecordVo> getRecordVoList() {
        return this.recordVoList;
    }

    @Nullable
    public final String getRefuseComplain() {
        return this.refuseComplain;
    }

    @Nullable
    public final String getRefuseReason() {
        return this.refuseReason;
    }

    @Nullable
    public final String getReqReason() {
        return this.reqReason;
    }

    public final int getSignId() {
        return this.signId;
    }

    public final long getSignTime() {
        return this.signTime;
    }

    public final int getSignType() {
        return this.signType;
    }

    public final int getState() {
        return this.state;
    }

    public final int getStatus() {
        return this.status;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int i9 = this.guildId * 31;
        String str = this.name;
        int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.reason;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<RecordVo> list = this.recordVoList;
        int hashCode3 = (((((((((((((((hashCode2 + (list == null ? 0 : list.hashCode())) * 31) + this.signId) * 31) + b.a(this.signTime)) * 31) + this.signType) * 31) + this.state) * 31) + this.userId) * 31) + this.recordId) * 31) + this.status) * 31;
        String str3 = this.reqReason;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.refuseComplain;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.refuseReason;
        return ((hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.periodDay;
    }

    public final void setGuildId(int i9) {
        this.guildId = i9;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setPeriodDay(int i9) {
        this.periodDay = i9;
    }

    public final void setReason(@Nullable String str) {
        this.reason = str;
    }

    public final void setRecordId(int i9) {
        this.recordId = i9;
    }

    public final void setRecordVoList(@Nullable List<RecordVo> list) {
        this.recordVoList = list;
    }

    public final void setRefuseComplain(@Nullable String str) {
        this.refuseComplain = str;
    }

    public final void setRefuseReason(@Nullable String str) {
        this.refuseReason = str;
    }

    public final void setReqReason(@Nullable String str) {
        this.reqReason = str;
    }

    public final void setSignId(int i9) {
        this.signId = i9;
    }

    public final void setSignTime(long j10) {
        this.signTime = j10;
    }

    public final void setSignType(int i9) {
        this.signType = i9;
    }

    public final void setState(int i9) {
        this.state = i9;
    }

    public final void setStatus(int i9) {
        this.status = i9;
    }

    public final void setUserId(int i9) {
        this.userId = i9;
    }

    @NotNull
    public String toString() {
        return "ContractHistoryBean(guildId=" + this.guildId + ", name=" + this.name + ", reason=" + this.reason + ", recordVoList=" + this.recordVoList + ", signId=" + this.signId + ", signTime=" + this.signTime + ", signType=" + this.signType + ", state=" + this.state + ", userId=" + this.userId + ", recordId=" + this.recordId + ", status=" + this.status + ", reqReason=" + this.reqReason + ", refuseComplain=" + this.refuseComplain + ", refuseReason=" + this.refuseReason + ", periodDay=" + this.periodDay + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.guildId);
        out.writeString(this.name);
        out.writeString(this.reason);
        List<RecordVo> list = this.recordVoList;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (RecordVo recordVo : list) {
                recordVo.writeToParcel(out, i9);
            }
        }
        out.writeInt(this.signId);
        out.writeLong(this.signTime);
        out.writeInt(this.signType);
        out.writeInt(this.state);
        out.writeInt(this.userId);
        out.writeInt(this.recordId);
        out.writeInt(this.status);
        out.writeString(this.reqReason);
        out.writeString(this.refuseComplain);
        out.writeString(this.refuseReason);
        out.writeInt(this.periodDay);
    }

    public /* synthetic */ ContractHistoryBean(int i9, String str, String str2, List list, int i10, long j10, int i11, int i12, int i13, int i14, int i15, String str3, String str4, String str5, int i16, int i17, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, str2, list, i10, j10, i11, i12, i13, i14, i15, str3, str4, str5, (i17 & 16384) != 0 ? 0 : i16);
    }
}
