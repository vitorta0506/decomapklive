package com.guochao.faceshow.guild.bean;

import android.os.Parcel;
import android.os.Parcelable;
import b7.b;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b<\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003¢\u0006\u0002\u0010\u0013J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\u0005HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\u0011\u0010=\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u0003HÆ\u0003J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\u0095\u0001\u0010C\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u0003HÆ\u0001J\t\u0010D\u001a\u00020\u0003HÖ\u0001J\u0013\u0010E\u001a\u00020F2\b\u0010G\u001a\u0004\u0018\u00010HHÖ\u0003J\t\u0010I\u001a\u00020\u0003HÖ\u0001J\t\u0010J\u001a\u00020\tHÖ\u0001J\u0019\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0015\"\u0004\b\u001f\u0010\u0017R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0015\"\u0004\b%\u0010\u0017R\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0015\"\u0004\b'\u0010\u0017R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0015\"\u0004\b/\u0010\u0017R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0015\"\u0004\b1\u0010\u0017R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0015\"\u0004\b3\u0010\u0017R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0015\"\u0004\b5\u0010\u0017¨\u0006P"}, d2 = {"Lcom/guochao/faceshow/guild/bean/RecordVo;", "Landroid/os/Parcelable;", "complain", "", "createTime", "", "id", "imgList", "", "", "platform", "signId", "status", "type", "operationType", "signType", "reason", "canComplain", "moreSeven", "(IJILjava/util/List;IIIIIILjava/lang/String;II)V", "getCanComplain", "()I", "setCanComplain", "(I)V", "getComplain", "setComplain", "getCreateTime", "()J", "setCreateTime", "(J)V", "getId", "setId", "getImgList", "()Ljava/util/List;", "setImgList", "(Ljava/util/List;)V", "getMoreSeven", "setMoreSeven", "getOperationType", "setOperationType", "getPlatform", "setPlatform", "getReason", "()Ljava/lang/String;", "setReason", "(Ljava/lang/String;)V", "getSignId", "setSignId", "getSignType", "setSignType", "getStatus", "setStatus", "getType", "setType", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class RecordVo implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<RecordVo> CREATOR = new Creator();
    private int canComplain;
    private int complain;
    private long createTime;

    /* renamed from: id  reason: collision with root package name */
    private int f25412id;
    @Nullable
    private List<String> imgList;
    private int moreSeven;
    private int operationType;
    private int platform;
    @Nullable
    private String reason;
    private int signId;
    private int signType;
    private int status;
    private int type;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Creator implements Parcelable.Creator<RecordVo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final RecordVo createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new RecordVo(parcel.readInt(), parcel.readLong(), parcel.readInt(), parcel.createStringArrayList(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final RecordVo[] newArray(int i9) {
            return new RecordVo[i9];
        }
    }

    public RecordVo(int i9, long j10, int i10, @Nullable List<String> list, int i11, int i12, int i13, int i14, int i15, int i16, @Nullable String str, int i17, int i18) {
        this.complain = i9;
        this.createTime = j10;
        this.f25412id = i10;
        this.imgList = list;
        this.platform = i11;
        this.signId = i12;
        this.status = i13;
        this.type = i14;
        this.operationType = i15;
        this.signType = i16;
        this.reason = str;
        this.canComplain = i17;
        this.moreSeven = i18;
    }

    public final int component1() {
        return this.complain;
    }

    public final int component10() {
        return this.signType;
    }

    @Nullable
    public final String component11() {
        return this.reason;
    }

    public final int component12() {
        return this.canComplain;
    }

    public final int component13() {
        return this.moreSeven;
    }

    public final long component2() {
        return this.createTime;
    }

    public final int component3() {
        return this.f25412id;
    }

    @Nullable
    public final List<String> component4() {
        return this.imgList;
    }

    public final int component5() {
        return this.platform;
    }

    public final int component6() {
        return this.signId;
    }

    public final int component7() {
        return this.status;
    }

    public final int component8() {
        return this.type;
    }

    public final int component9() {
        return this.operationType;
    }

    @NotNull
    public final RecordVo copy(int i9, long j10, int i10, @Nullable List<String> list, int i11, int i12, int i13, int i14, int i15, int i16, @Nullable String str, int i17, int i18) {
        return new RecordVo(i9, j10, i10, list, i11, i12, i13, i14, i15, i16, str, i17, i18);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RecordVo) {
            RecordVo recordVo = (RecordVo) obj;
            return this.complain == recordVo.complain && this.createTime == recordVo.createTime && this.f25412id == recordVo.f25412id && Intrinsics.areEqual(this.imgList, recordVo.imgList) && this.platform == recordVo.platform && this.signId == recordVo.signId && this.status == recordVo.status && this.type == recordVo.type && this.operationType == recordVo.operationType && this.signType == recordVo.signType && Intrinsics.areEqual(this.reason, recordVo.reason) && this.canComplain == recordVo.canComplain && this.moreSeven == recordVo.moreSeven;
        }
        return false;
    }

    public final int getCanComplain() {
        return this.canComplain;
    }

    public final int getComplain() {
        return this.complain;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final int getId() {
        return this.f25412id;
    }

    @Nullable
    public final List<String> getImgList() {
        return this.imgList;
    }

    public final int getMoreSeven() {
        return this.moreSeven;
    }

    public final int getOperationType() {
        return this.operationType;
    }

    public final int getPlatform() {
        return this.platform;
    }

    @Nullable
    public final String getReason() {
        return this.reason;
    }

    public final int getSignId() {
        return this.signId;
    }

    public final int getSignType() {
        return this.signType;
    }

    public final int getStatus() {
        return this.status;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int a10 = ((((this.complain * 31) + b.a(this.createTime)) * 31) + this.f25412id) * 31;
        List<String> list = this.imgList;
        int hashCode = (((((((((((((a10 + (list == null ? 0 : list.hashCode())) * 31) + this.platform) * 31) + this.signId) * 31) + this.status) * 31) + this.type) * 31) + this.operationType) * 31) + this.signType) * 31;
        String str = this.reason;
        return ((((hashCode + (str != null ? str.hashCode() : 0)) * 31) + this.canComplain) * 31) + this.moreSeven;
    }

    public final void setCanComplain(int i9) {
        this.canComplain = i9;
    }

    public final void setComplain(int i9) {
        this.complain = i9;
    }

    public final void setCreateTime(long j10) {
        this.createTime = j10;
    }

    public final void setId(int i9) {
        this.f25412id = i9;
    }

    public final void setImgList(@Nullable List<String> list) {
        this.imgList = list;
    }

    public final void setMoreSeven(int i9) {
        this.moreSeven = i9;
    }

    public final void setOperationType(int i9) {
        this.operationType = i9;
    }

    public final void setPlatform(int i9) {
        this.platform = i9;
    }

    public final void setReason(@Nullable String str) {
        this.reason = str;
    }

    public final void setSignId(int i9) {
        this.signId = i9;
    }

    public final void setSignType(int i9) {
        this.signType = i9;
    }

    public final void setStatus(int i9) {
        this.status = i9;
    }

    public final void setType(int i9) {
        this.type = i9;
    }

    @NotNull
    public String toString() {
        return "RecordVo(complain=" + this.complain + ", createTime=" + this.createTime + ", id=" + this.f25412id + ", imgList=" + this.imgList + ", platform=" + this.platform + ", signId=" + this.signId + ", status=" + this.status + ", type=" + this.type + ", operationType=" + this.operationType + ", signType=" + this.signType + ", reason=" + this.reason + ", canComplain=" + this.canComplain + ", moreSeven=" + this.moreSeven + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.complain);
        out.writeLong(this.createTime);
        out.writeInt(this.f25412id);
        out.writeStringList(this.imgList);
        out.writeInt(this.platform);
        out.writeInt(this.signId);
        out.writeInt(this.status);
        out.writeInt(this.type);
        out.writeInt(this.operationType);
        out.writeInt(this.signType);
        out.writeString(this.reason);
        out.writeInt(this.canComplain);
        out.writeInt(this.moreSeven);
    }
}
