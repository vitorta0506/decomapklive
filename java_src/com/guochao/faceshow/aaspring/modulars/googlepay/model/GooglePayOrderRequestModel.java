package com.guochao.faceshow.aaspring.modulars.googlepay.model;

import androidx.room.Entity;
import androidx.room.PrimaryKey;
import b7.b;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Entity(tableName = "google_pay_request_model_record")
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\rJ\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0006HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\nHÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J[\u00100\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u00101\u001a\u00020#2\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u00020\nHÖ\u0001J\t\u00104\u001a\u00020\u0003HÖ\u0001R \u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R\u001e\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001e\u0010\b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u000f\"\u0004\b!\u0010\u0011R\u0011\u0010\"\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b$\u0010%R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u000f\"\u0004\b'\u0010\u0011¨\u00065"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;", "", "orderId", "", InAppPurchaseMetaData.KEY_PRODUCT_ID, "purchaseTime", "", "purchaseJson", "signature", "sceneType", "", Contants.USER_ID, "extData", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getExtData", "()Ljava/lang/String;", "setExtData", "(Ljava/lang/String;)V", "getOrderId", "setOrderId", "getProductId", "setProductId", "getPurchaseJson", "setPurchaseJson", "getPurchaseTime", "()J", "setPurchaseTime", "(J)V", "getSceneType", "()I", "setSceneType", "(I)V", "getSignature", "setSignature", "timeout", "", "getTimeout", "()Z", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GooglePayOrderRequestModel {
    @SerializedName("sn")
    @Nullable
    private String extData;
    @PrimaryKey
    @NotNull
    private String orderId;
    @SerializedName("pid")
    @NotNull
    private transient String productId;
    @SerializedName("content")
    @NotNull
    private String purchaseJson;
    @SerializedName("ptime")
    private long purchaseTime;
    @SerializedName("st")
    private int sceneType;
    @SerializedName("sgn")
    @NotNull
    private String signature;
    @NotNull
    private String userId;

    public GooglePayOrderRequestModel() {
        this(null, null, 0L, null, null, 0, null, null, 255, null);
    }

    public GooglePayOrderRequestModel(@NotNull String orderId, @NotNull String productId, long j10, @NotNull String purchaseJson, @NotNull String signature, int i9, @NotNull String userId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(purchaseJson, "purchaseJson");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.orderId = orderId;
        this.productId = productId;
        this.purchaseTime = j10;
        this.purchaseJson = purchaseJson;
        this.signature = signature;
        this.sceneType = i9;
        this.userId = userId;
        this.extData = str;
    }

    @NotNull
    public final String component1() {
        return this.orderId;
    }

    @NotNull
    public final String component2() {
        return this.productId;
    }

    public final long component3() {
        return this.purchaseTime;
    }

    @NotNull
    public final String component4() {
        return this.purchaseJson;
    }

    @NotNull
    public final String component5() {
        return this.signature;
    }

    public final int component6() {
        return this.sceneType;
    }

    @NotNull
    public final String component7() {
        return this.userId;
    }

    @Nullable
    public final String component8() {
        return this.extData;
    }

    @NotNull
    public final GooglePayOrderRequestModel copy(@NotNull String orderId, @NotNull String productId, long j10, @NotNull String purchaseJson, @NotNull String signature, int i9, @NotNull String userId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(purchaseJson, "purchaseJson");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new GooglePayOrderRequestModel(orderId, productId, j10, purchaseJson, signature, i9, userId, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GooglePayOrderRequestModel) {
            GooglePayOrderRequestModel googlePayOrderRequestModel = (GooglePayOrderRequestModel) obj;
            return Intrinsics.areEqual(this.orderId, googlePayOrderRequestModel.orderId) && Intrinsics.areEqual(this.productId, googlePayOrderRequestModel.productId) && this.purchaseTime == googlePayOrderRequestModel.purchaseTime && Intrinsics.areEqual(this.purchaseJson, googlePayOrderRequestModel.purchaseJson) && Intrinsics.areEqual(this.signature, googlePayOrderRequestModel.signature) && this.sceneType == googlePayOrderRequestModel.sceneType && Intrinsics.areEqual(this.userId, googlePayOrderRequestModel.userId) && Intrinsics.areEqual(this.extData, googlePayOrderRequestModel.extData);
        }
        return false;
    }

    @Nullable
    public final String getExtData() {
        return this.extData;
    }

    @NotNull
    public final String getOrderId() {
        return this.orderId;
    }

    @NotNull
    public final String getProductId() {
        return this.productId;
    }

    @NotNull
    public final String getPurchaseJson() {
        return this.purchaseJson;
    }

    public final long getPurchaseTime() {
        return this.purchaseTime;
    }

    public final int getSceneType() {
        return this.sceneType;
    }

    @NotNull
    public final String getSignature() {
        return this.signature;
    }

    public final boolean getTimeout() {
        return System.currentTimeMillis() - this.purchaseTime >= 5040000;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((((((((((((this.orderId.hashCode() * 31) + this.productId.hashCode()) * 31) + b.a(this.purchaseTime)) * 31) + this.purchaseJson.hashCode()) * 31) + this.signature.hashCode()) * 31) + this.sceneType) * 31) + this.userId.hashCode()) * 31;
        String str = this.extData;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setExtData(@Nullable String str) {
        this.extData = str;
    }

    public final void setOrderId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.orderId = str;
    }

    public final void setProductId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.productId = str;
    }

    public final void setPurchaseJson(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.purchaseJson = str;
    }

    public final void setPurchaseTime(long j10) {
        this.purchaseTime = j10;
    }

    public final void setSceneType(int i9) {
        this.sceneType = i9;
    }

    public final void setSignature(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.signature = str;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    @NotNull
    public String toString() {
        return "GooglePayOrderRequestModel(orderId=" + this.orderId + ", productId=" + this.productId + ", purchaseTime=" + this.purchaseTime + ", purchaseJson=" + this.purchaseJson + ", signature=" + this.signature + ", sceneType=" + this.sceneType + ", userId=" + this.userId + ", extData=" + this.extData + ')';
    }

    public /* synthetic */ GooglePayOrderRequestModel(String str, String str2, long j10, String str3, String str4, int i9, String str5, String str6, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? 0L : j10, (i10 & 8) != 0 ? "{}" : str3, (i10 & 16) != 0 ? "" : str4, (i10 & 32) != 0 ? 0 : i9, (i10 & 64) == 0 ? str5 : "", (i10 & 128) != 0 ? null : str6);
    }
}
