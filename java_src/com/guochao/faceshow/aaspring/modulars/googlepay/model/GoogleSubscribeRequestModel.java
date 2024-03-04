package com.guochao.faceshow.aaspring.modulars.googlepay.model;

import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Entity
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0007\b\u0017¢\u0006\u0002\u0010\u0002BA\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u001c\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0004HÆ\u0003J\t\u0010 \u001a\u00020\u0004HÆ\u0003J\t\u0010!\u001a\u00020\nHÆ\u0003JE\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\nHÖ\u0001J\t\u0010'\u001a\u00020\u0004HÖ\u0001R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\b\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u001e\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001e\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013¨\u0006("}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;", "", "()V", "sign", "", "googleOrderId", "tradeNo", "subscribeSeries", "purchaseToken", "fromType", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getFromType", "()I", "setFromType", "(I)V", "getGoogleOrderId", "()Ljava/lang/String;", "setGoogleOrderId", "(Ljava/lang/String;)V", "getPurchaseToken", "setPurchaseToken", "getSign", "setSign", "getSubscribeSeries", "setSubscribeSeries", "getTradeNo", "setTradeNo", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GoogleSubscribeRequestModel {
    @SerializedName("ft")
    private int fromType;
    @SerializedName("oid")
    @PrimaryKey
    @NotNull
    private String googleOrderId;
    @SerializedName("pt")
    @NotNull
    private String purchaseToken;
    @SerializedName("ssg")
    @NotNull
    private String sign;
    @SerializedName("ssr")
    @NotNull
    private String subscribeSeries;
    @SerializedName("tno")
    @NotNull
    private String tradeNo;

    public GoogleSubscribeRequestModel(@NotNull String sign, @NotNull String googleOrderId, @NotNull String tradeNo, @NotNull String subscribeSeries, @NotNull String purchaseToken, int i9) {
        Intrinsics.checkNotNullParameter(sign, "sign");
        Intrinsics.checkNotNullParameter(googleOrderId, "googleOrderId");
        Intrinsics.checkNotNullParameter(tradeNo, "tradeNo");
        Intrinsics.checkNotNullParameter(subscribeSeries, "subscribeSeries");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        this.sign = sign;
        this.googleOrderId = googleOrderId;
        this.tradeNo = tradeNo;
        this.subscribeSeries = subscribeSeries;
        this.purchaseToken = purchaseToken;
        this.fromType = i9;
    }

    public static /* synthetic */ GoogleSubscribeRequestModel copy$default(GoogleSubscribeRequestModel googleSubscribeRequestModel, String str, String str2, String str3, String str4, String str5, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = googleSubscribeRequestModel.sign;
        }
        if ((i10 & 2) != 0) {
            str2 = googleSubscribeRequestModel.googleOrderId;
        }
        String str6 = str2;
        if ((i10 & 4) != 0) {
            str3 = googleSubscribeRequestModel.tradeNo;
        }
        String str7 = str3;
        if ((i10 & 8) != 0) {
            str4 = googleSubscribeRequestModel.subscribeSeries;
        }
        String str8 = str4;
        if ((i10 & 16) != 0) {
            str5 = googleSubscribeRequestModel.purchaseToken;
        }
        String str9 = str5;
        if ((i10 & 32) != 0) {
            i9 = googleSubscribeRequestModel.fromType;
        }
        return googleSubscribeRequestModel.copy(str, str6, str7, str8, str9, i9);
    }

    @NotNull
    public final String component1() {
        return this.sign;
    }

    @NotNull
    public final String component2() {
        return this.googleOrderId;
    }

    @NotNull
    public final String component3() {
        return this.tradeNo;
    }

    @NotNull
    public final String component4() {
        return this.subscribeSeries;
    }

    @NotNull
    public final String component5() {
        return this.purchaseToken;
    }

    public final int component6() {
        return this.fromType;
    }

    @NotNull
    public final GoogleSubscribeRequestModel copy(@NotNull String sign, @NotNull String googleOrderId, @NotNull String tradeNo, @NotNull String subscribeSeries, @NotNull String purchaseToken, int i9) {
        Intrinsics.checkNotNullParameter(sign, "sign");
        Intrinsics.checkNotNullParameter(googleOrderId, "googleOrderId");
        Intrinsics.checkNotNullParameter(tradeNo, "tradeNo");
        Intrinsics.checkNotNullParameter(subscribeSeries, "subscribeSeries");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        return new GoogleSubscribeRequestModel(sign, googleOrderId, tradeNo, subscribeSeries, purchaseToken, i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GoogleSubscribeRequestModel) {
            GoogleSubscribeRequestModel googleSubscribeRequestModel = (GoogleSubscribeRequestModel) obj;
            return Intrinsics.areEqual(this.sign, googleSubscribeRequestModel.sign) && Intrinsics.areEqual(this.googleOrderId, googleSubscribeRequestModel.googleOrderId) && Intrinsics.areEqual(this.tradeNo, googleSubscribeRequestModel.tradeNo) && Intrinsics.areEqual(this.subscribeSeries, googleSubscribeRequestModel.subscribeSeries) && Intrinsics.areEqual(this.purchaseToken, googleSubscribeRequestModel.purchaseToken) && this.fromType == googleSubscribeRequestModel.fromType;
        }
        return false;
    }

    public final int getFromType() {
        return this.fromType;
    }

    @NotNull
    public final String getGoogleOrderId() {
        return this.googleOrderId;
    }

    @NotNull
    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    @NotNull
    public final String getSign() {
        return this.sign;
    }

    @NotNull
    public final String getSubscribeSeries() {
        return this.subscribeSeries;
    }

    @NotNull
    public final String getTradeNo() {
        return this.tradeNo;
    }

    public int hashCode() {
        return (((((((((this.sign.hashCode() * 31) + this.googleOrderId.hashCode()) * 31) + this.tradeNo.hashCode()) * 31) + this.subscribeSeries.hashCode()) * 31) + this.purchaseToken.hashCode()) * 31) + this.fromType;
    }

    public final void setFromType(int i9) {
        this.fromType = i9;
    }

    public final void setGoogleOrderId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.googleOrderId = str;
    }

    public final void setPurchaseToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.purchaseToken = str;
    }

    public final void setSign(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sign = str;
    }

    public final void setSubscribeSeries(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.subscribeSeries = str;
    }

    public final void setTradeNo(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.tradeNo = str;
    }

    @NotNull
    public String toString() {
        return "GoogleSubscribeRequestModel(sign=" + this.sign + ", googleOrderId=" + this.googleOrderId + ", tradeNo=" + this.tradeNo + ", subscribeSeries=" + this.subscribeSeries + ", purchaseToken=" + this.purchaseToken + ", fromType=" + this.fromType + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ GoogleSubscribeRequestModel(java.lang.String r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, int r10, int r11, kotlin.jvm.internal.DefaultConstructorMarker r12) {
        /*
            r4 = this;
            r12 = r11 & 1
            java.lang.String r0 = ""
            if (r12 == 0) goto L8
            r12 = r0
            goto L9
        L8:
            r12 = r5
        L9:
            r5 = r11 & 2
            if (r5 == 0) goto Lf
            r1 = r0
            goto L10
        Lf:
            r1 = r6
        L10:
            r5 = r11 & 4
            if (r5 == 0) goto L16
            r2 = r0
            goto L17
        L16:
            r2 = r7
        L17:
            r5 = r11 & 8
            if (r5 == 0) goto L24
            java.lang.String r8 = com.guochao.faceshow.aaspring.modulars.googlepay.d.a0(r12)
            java.lang.String r5 = "getSeriesWithSub(sign)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r5)
        L24:
            r3 = r8
            r5 = r11 & 16
            if (r5 == 0) goto L2a
            goto L2b
        L2a:
            r0 = r9
        L2b:
            r5 = r11 & 32
            if (r5 == 0) goto L32
            r10 = 2
            r11 = 2
            goto L33
        L32:
            r11 = r10
        L33:
            r5 = r4
            r6 = r12
            r7 = r1
            r8 = r2
            r9 = r3
            r10 = r0
            r5.<init>(r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Ignore
    public GoogleSubscribeRequestModel() {
        this("", "", "", "", "", 2);
    }
}
