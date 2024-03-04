package com.guochao.faceshow.aaspring.modulars.gift;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0005HÆ\u0003J\u001d\u00109\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\t\u0010:\u001a\u00020\bHÖ\u0001J\u0013\u0010;\u001a\u00020\u00052\b\u0010<\u001a\u0004\u0018\u00010=HÖ\u0003J\t\u0010>\u001a\u00020\bHÖ\u0001J\t\u0010?\u001a\u00020\u0003HÖ\u0001J\u0019\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\bHÖ\u0001R\u001e\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\n\"\u0004\b\u001a\u0010\fR\u001e\u0010\u001b\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\n\"\u0004\b\u001d\u0010\fR\u001e\u0010\u001e\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000f\"\u0004\b \u0010\u0011R$\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00030\"8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0011\u0010'\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b(\u0010\nR\u001e\u0010)\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u000f\"\u0004\b+\u0010\u0011R>\u0010,\u001a\"\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0003\u0018\u00010-j\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0003\u0018\u0001`.8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u00103\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0017\"\u0004\b5\u00106¨\u0006E"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;", "Landroid/os/Parcelable;", "giftId", "", "lucyGift", "", "(Ljava/lang/String;Z)V", "breakType", "", "getBreakType", "()I", "setBreakType", "(I)V", "businessId", "getBusinessId", "()Ljava/lang/String;", "setBusinessId", "(Ljava/lang/String;)V", "comboId", "getComboId", "setComboId", "getGiftId", "getLucyGift", "()Z", "sendNumber", "getSendNumber", "setSendNumber", "sendType", "getSendType", "setSendType", "singlePrice", "getSinglePrice", "setSinglePrice", "toUserIds", "", "getToUserIds", "()Ljava/util/List;", "setToUserIds", "(Ljava/util/List;)V", "totalSendNumber", "getTotalSendNumber", "useDiamonds", "getUseDiamonds", "setUseDiamonds", "voiceIds", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "getVoiceIds", "()Ljava/util/HashMap;", "setVoiceIds", "(Ljava/util/HashMap;)V", "voiceRoom", "getVoiceRoom", "setVoiceRoom", "(Z)V", "component1", "component2", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SendGiftRequestModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<SendGiftRequestModel> CREATOR = new Creator();
    @SerializedName("bt")
    private int breakType;
    @SerializedName("it")
    @NotNull
    private String businessId;
    @SerializedName("cmid")
    private int comboId;
    @SerializedName("gid")
    @NotNull
    private final String giftId;
    private final transient boolean lucyGift;
    @SerializedName("n")
    private int sendNumber;
    @SerializedName("m")
    private int sendType;
    @SerializedName("up")
    @NotNull
    private String singlePrice;
    @SerializedName("aids")
    @NotNull
    private List<String> toUserIds;
    @SerializedName("at")
    @NotNull
    private String useDiamonds;
    @SerializedName("mids")
    @Nullable
    private HashMap<Integer, String> voiceIds;
    private transient boolean voiceRoom;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<SendGiftRequestModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final SendGiftRequestModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new SendGiftRequestModel(parcel.readString(), parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final SendGiftRequestModel[] newArray(int i9) {
            return new SendGiftRequestModel[i9];
        }
    }

    public SendGiftRequestModel() {
        this(null, false, 3, null);
    }

    public SendGiftRequestModel(@NotNull String giftId, boolean z10) {
        Intrinsics.checkNotNullParameter(giftId, "giftId");
        this.giftId = giftId;
        this.lucyGift = z10;
        this.toUserIds = new ArrayList();
        this.sendNumber = 1;
        this.sendType = 1;
        this.singlePrice = "0";
        this.useDiamonds = "1";
        this.businessId = "";
    }

    public static /* synthetic */ SendGiftRequestModel copy$default(SendGiftRequestModel sendGiftRequestModel, String str, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = sendGiftRequestModel.giftId;
        }
        if ((i9 & 2) != 0) {
            z10 = sendGiftRequestModel.lucyGift;
        }
        return sendGiftRequestModel.copy(str, z10);
    }

    @NotNull
    public final String component1() {
        return this.giftId;
    }

    public final boolean component2() {
        return this.lucyGift;
    }

    @NotNull
    public final SendGiftRequestModel copy(@NotNull String giftId, boolean z10) {
        Intrinsics.checkNotNullParameter(giftId, "giftId");
        return new SendGiftRequestModel(giftId, z10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendGiftRequestModel) {
            SendGiftRequestModel sendGiftRequestModel = (SendGiftRequestModel) obj;
            return Intrinsics.areEqual(this.giftId, sendGiftRequestModel.giftId) && this.lucyGift == sendGiftRequestModel.lucyGift;
        }
        return false;
    }

    public final int getBreakType() {
        return this.breakType;
    }

    @NotNull
    public final String getBusinessId() {
        return this.businessId;
    }

    public final int getComboId() {
        return this.comboId;
    }

    @NotNull
    public final String getGiftId() {
        return this.giftId;
    }

    public final boolean getLucyGift() {
        return this.lucyGift;
    }

    public final int getSendNumber() {
        return this.sendNumber;
    }

    public final int getSendType() {
        return this.sendType;
    }

    @NotNull
    public final String getSinglePrice() {
        return this.singlePrice;
    }

    @NotNull
    public final List<String> getToUserIds() {
        return this.toUserIds;
    }

    public final int getTotalSendNumber() {
        return this.sendNumber * Math.max(1, this.toUserIds.size());
    }

    @NotNull
    public final String getUseDiamonds() {
        return this.useDiamonds;
    }

    @Nullable
    public final HashMap<Integer, String> getVoiceIds() {
        return this.voiceIds;
    }

    public final boolean getVoiceRoom() {
        return this.voiceRoom;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.giftId.hashCode() * 31;
        boolean z10 = this.lucyGift;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        return hashCode + i9;
    }

    public final void setBreakType(int i9) {
        this.breakType = i9;
    }

    public final void setBusinessId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.businessId = str;
    }

    public final void setComboId(int i9) {
        this.comboId = i9;
    }

    public final void setSendNumber(int i9) {
        this.sendNumber = i9;
    }

    public final void setSendType(int i9) {
        this.sendType = i9;
    }

    public final void setSinglePrice(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.singlePrice = str;
    }

    public final void setToUserIds(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.toUserIds = list;
    }

    public final void setUseDiamonds(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.useDiamonds = str;
    }

    public final void setVoiceIds(@Nullable HashMap<Integer, String> hashMap) {
        this.voiceIds = hashMap;
    }

    public final void setVoiceRoom(boolean z10) {
        this.voiceRoom = z10;
    }

    @NotNull
    public String toString() {
        return "SendGiftRequestModel(giftId=" + this.giftId + ", lucyGift=" + this.lucyGift + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.giftId);
        out.writeInt(this.lucyGift ? 1 : 0);
    }

    public /* synthetic */ SendGiftRequestModel(String str, boolean z10, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? "" : str, (i9 & 2) != 0 ? false : z10);
    }
}
