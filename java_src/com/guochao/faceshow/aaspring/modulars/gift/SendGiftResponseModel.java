package com.guochao.faceshow.aaspring.modulars.gift;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001fB\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0015HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R(\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00118\u0006X\u0087D¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\u00158\u0006X\u0087D¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006 "}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;", "", Contants.USER_balance, "", "(I)V", "getBalance", "()I", "level", "getLevel", "luckyGiftResults", "", "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;", "getLuckyGiftResults", "()Ljava/util/List;", "setLuckyGiftResults", "(Ljava/util/List;)V", "serverTime", "", "getServerTime", "()J", "useDiamond", "", "getUseDiamond", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "LuckyGiftResult", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SendGiftResponseModel {
    @SerializedName("b")
    private final int balance;
    @SerializedName("ulid")
    private final int level;
    @SerializedName("resultVoList")
    @Nullable
    private List<LuckyGiftResult> luckyGiftResults;
    @SerializedName("cts")
    private final long serverTime;
    @SerializedName("at")
    @NotNull
    private final String useDiamond;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b4\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bi\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0002\u0010\u0010J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0006HÆ\u0003J\t\u0010/\u001a\u00020\u0006HÆ\u0003J\t\u00100\u001a\u00020\u0006HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0006HÆ\u0003J\t\u00103\u001a\u00020\u0006HÆ\u0003J\t\u00104\u001a\u00020\u0006HÆ\u0003J\t\u00105\u001a\u00020\u0006HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0006HÆ\u0003J\t\u00108\u001a\u00020\u0006HÆ\u0003J\u0085\u0001\u00109\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0006HÆ\u0001J\u0013\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010=\u001a\u00020\u0006HÖ\u0001J\t\u0010>\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\f\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0016\"\u0004\b \u0010\u0018R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0012\"\u0004\b\"\u0010\u0014R\u001a\u0010\u000e\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0016\"\u0004\b$\u0010\u0018R\u001e\u0010\u000f\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0016\"\u0004\b&\u0010\u0018R\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010\u0018R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0012\"\u0004\b*\u0010\u0014R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0016\"\u0004\b,\u0010\u0018¨\u0006?"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;", "", Contants.USER_ID, "", "accountId", "combId", "", "combCounts", "giftId", "awardMultiple", "liveId", "winType", "anchorRateDiamond", "unitPrice", "numbers", "totalDiamonds", "(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V", "getAccountId", "()Ljava/lang/String;", "setAccountId", "(Ljava/lang/String;)V", "getAnchorRateDiamond", "()I", "setAnchorRateDiamond", "(I)V", "getAwardMultiple", "setAwardMultiple", "getCombCounts", "setCombCounts", "getCombId", "setCombId", "getGiftId", "setGiftId", "getLiveId", "setLiveId", "getNumbers", "setNumbers", "getTotalDiamonds", "setTotalDiamonds", "getUnitPrice", "setUnitPrice", "getUserId", "setUserId", "getWinType", "setWinType", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class LuckyGiftResult {
        @Nullable
        private String accountId;
        private int anchorRateDiamond;
        private int awardMultiple;
        private int combCounts;
        private int combId;
        private int giftId;
        @NotNull
        private String liveId;
        private int numbers;
        @SerializedName("totalDiamond")
        private int totalDiamonds;
        private int unitPrice;
        @Nullable
        private String userId;
        private int winType;

        public LuckyGiftResult(@Nullable String str, @Nullable String str2, int i9, int i10, int i11, int i12, @NotNull String liveId, int i13, int i14, int i15, int i16, int i17) {
            Intrinsics.checkNotNullParameter(liveId, "liveId");
            this.userId = str;
            this.accountId = str2;
            this.combId = i9;
            this.combCounts = i10;
            this.giftId = i11;
            this.awardMultiple = i12;
            this.liveId = liveId;
            this.winType = i13;
            this.anchorRateDiamond = i14;
            this.unitPrice = i15;
            this.numbers = i16;
            this.totalDiamonds = i17;
        }

        @Nullable
        public final String component1() {
            return this.userId;
        }

        public final int component10() {
            return this.unitPrice;
        }

        public final int component11() {
            return this.numbers;
        }

        public final int component12() {
            return this.totalDiamonds;
        }

        @Nullable
        public final String component2() {
            return this.accountId;
        }

        public final int component3() {
            return this.combId;
        }

        public final int component4() {
            return this.combCounts;
        }

        public final int component5() {
            return this.giftId;
        }

        public final int component6() {
            return this.awardMultiple;
        }

        @NotNull
        public final String component7() {
            return this.liveId;
        }

        public final int component8() {
            return this.winType;
        }

        public final int component9() {
            return this.anchorRateDiamond;
        }

        @NotNull
        public final LuckyGiftResult copy(@Nullable String str, @Nullable String str2, int i9, int i10, int i11, int i12, @NotNull String liveId, int i13, int i14, int i15, int i16, int i17) {
            Intrinsics.checkNotNullParameter(liveId, "liveId");
            return new LuckyGiftResult(str, str2, i9, i10, i11, i12, liveId, i13, i14, i15, i16, i17);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof LuckyGiftResult) {
                LuckyGiftResult luckyGiftResult = (LuckyGiftResult) obj;
                return Intrinsics.areEqual(this.userId, luckyGiftResult.userId) && Intrinsics.areEqual(this.accountId, luckyGiftResult.accountId) && this.combId == luckyGiftResult.combId && this.combCounts == luckyGiftResult.combCounts && this.giftId == luckyGiftResult.giftId && this.awardMultiple == luckyGiftResult.awardMultiple && Intrinsics.areEqual(this.liveId, luckyGiftResult.liveId) && this.winType == luckyGiftResult.winType && this.anchorRateDiamond == luckyGiftResult.anchorRateDiamond && this.unitPrice == luckyGiftResult.unitPrice && this.numbers == luckyGiftResult.numbers && this.totalDiamonds == luckyGiftResult.totalDiamonds;
            }
            return false;
        }

        @Nullable
        public final String getAccountId() {
            return this.accountId;
        }

        public final int getAnchorRateDiamond() {
            return this.anchorRateDiamond;
        }

        public final int getAwardMultiple() {
            return this.awardMultiple;
        }

        public final int getCombCounts() {
            return this.combCounts;
        }

        public final int getCombId() {
            return this.combId;
        }

        public final int getGiftId() {
            return this.giftId;
        }

        @NotNull
        public final String getLiveId() {
            return this.liveId;
        }

        public final int getNumbers() {
            return this.numbers;
        }

        public final int getTotalDiamonds() {
            return this.totalDiamonds;
        }

        public final int getUnitPrice() {
            return this.unitPrice;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public final int getWinType() {
            return this.winType;
        }

        public int hashCode() {
            String str = this.userId;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.accountId;
            return ((((((((((((((((((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.combId) * 31) + this.combCounts) * 31) + this.giftId) * 31) + this.awardMultiple) * 31) + this.liveId.hashCode()) * 31) + this.winType) * 31) + this.anchorRateDiamond) * 31) + this.unitPrice) * 31) + this.numbers) * 31) + this.totalDiamonds;
        }

        public final void setAccountId(@Nullable String str) {
            this.accountId = str;
        }

        public final void setAnchorRateDiamond(int i9) {
            this.anchorRateDiamond = i9;
        }

        public final void setAwardMultiple(int i9) {
            this.awardMultiple = i9;
        }

        public final void setCombCounts(int i9) {
            this.combCounts = i9;
        }

        public final void setCombId(int i9) {
            this.combId = i9;
        }

        public final void setGiftId(int i9) {
            this.giftId = i9;
        }

        public final void setLiveId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.liveId = str;
        }

        public final void setNumbers(int i9) {
            this.numbers = i9;
        }

        public final void setTotalDiamonds(int i9) {
            this.totalDiamonds = i9;
        }

        public final void setUnitPrice(int i9) {
            this.unitPrice = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        public final void setWinType(int i9) {
            this.winType = i9;
        }

        @NotNull
        public String toString() {
            return "LuckyGiftResult(userId=" + this.userId + ", accountId=" + this.accountId + ", combId=" + this.combId + ", combCounts=" + this.combCounts + ", giftId=" + this.giftId + ", awardMultiple=" + this.awardMultiple + ", liveId=" + this.liveId + ", winType=" + this.winType + ", anchorRateDiamond=" + this.anchorRateDiamond + ", unitPrice=" + this.unitPrice + ", numbers=" + this.numbers + ", totalDiamonds=" + this.totalDiamonds + ')';
        }
    }

    public SendGiftResponseModel() {
        this(0, 1, null);
    }

    public SendGiftResponseModel(int i9) {
        this.balance = i9;
        this.useDiamond = "1";
    }

    public static /* synthetic */ SendGiftResponseModel copy$default(SendGiftResponseModel sendGiftResponseModel, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = sendGiftResponseModel.balance;
        }
        return sendGiftResponseModel.copy(i9);
    }

    public final int component1() {
        return this.balance;
    }

    @NotNull
    public final SendGiftResponseModel copy(int i9) {
        return new SendGiftResponseModel(i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SendGiftResponseModel) && this.balance == ((SendGiftResponseModel) obj).balance;
    }

    public final int getBalance() {
        return this.balance;
    }

    public final int getLevel() {
        return this.level;
    }

    @Nullable
    public final List<LuckyGiftResult> getLuckyGiftResults() {
        return this.luckyGiftResults;
    }

    public final long getServerTime() {
        return this.serverTime;
    }

    @NotNull
    public final String getUseDiamond() {
        return this.useDiamond;
    }

    public int hashCode() {
        return this.balance;
    }

    public final void setLuckyGiftResults(@Nullable List<LuckyGiftResult> list) {
        this.luckyGiftResults = list;
    }

    @NotNull
    public String toString() {
        return "SendGiftResponseModel(balance=" + this.balance + ')';
    }

    public /* synthetic */ SendGiftResponseModel(int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i9);
    }
}
