package com.vk.sdk.api.prettyCards.dto;

import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseRequestParam;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003JN\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\u0006HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\""}, d2 = {"Lcom/vk/sdk/api/prettyCards/dto/PrettyCardsPrettyCardOrError;", "", "errorCode", "", "errorSubcode", "errorMsg", "", "errorText", "requestParams", "", "Lcom/vk/sdk/api/base/dto/BaseRequestParam;", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getErrorCode", "()I", "getErrorMsg", "()Ljava/lang/String;", "getErrorSubcode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getErrorText", "getRequestParams", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/vk/sdk/api/prettyCards/dto/PrettyCardsPrettyCardOrError;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PrettyCardsPrettyCardOrError {
    @SerializedName("error_code")
    private final int errorCode;
    @SerializedName("error_msg")
    @Nullable
    private final String errorMsg;
    @SerializedName(NativeProtocol.BRIDGE_ARG_ERROR_SUBCODE)
    @Nullable
    private final Integer errorSubcode;
    @SerializedName("error_text")
    @Nullable
    private final String errorText;
    @SerializedName("request_params")
    @Nullable
    private final List<BaseRequestParam> requestParams;

    public PrettyCardsPrettyCardOrError(int i9, @Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable List<BaseRequestParam> list) {
        this.errorCode = i9;
        this.errorSubcode = num;
        this.errorMsg = str;
        this.errorText = str2;
        this.requestParams = list;
    }

    public static /* synthetic */ PrettyCardsPrettyCardOrError copy$default(PrettyCardsPrettyCardOrError prettyCardsPrettyCardOrError, int i9, Integer num, String str, String str2, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = prettyCardsPrettyCardOrError.errorCode;
        }
        if ((i10 & 2) != 0) {
            num = prettyCardsPrettyCardOrError.errorSubcode;
        }
        Integer num2 = num;
        if ((i10 & 4) != 0) {
            str = prettyCardsPrettyCardOrError.errorMsg;
        }
        String str3 = str;
        if ((i10 & 8) != 0) {
            str2 = prettyCardsPrettyCardOrError.errorText;
        }
        String str4 = str2;
        List<BaseRequestParam> list2 = list;
        if ((i10 & 16) != 0) {
            list2 = prettyCardsPrettyCardOrError.requestParams;
        }
        return prettyCardsPrettyCardOrError.copy(i9, num2, str3, str4, list2);
    }

    public final int component1() {
        return this.errorCode;
    }

    @Nullable
    public final Integer component2() {
        return this.errorSubcode;
    }

    @Nullable
    public final String component3() {
        return this.errorMsg;
    }

    @Nullable
    public final String component4() {
        return this.errorText;
    }

    @Nullable
    public final List<BaseRequestParam> component5() {
        return this.requestParams;
    }

    @NotNull
    public final PrettyCardsPrettyCardOrError copy(int i9, @Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable List<BaseRequestParam> list) {
        return new PrettyCardsPrettyCardOrError(i9, num, str, str2, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrettyCardsPrettyCardOrError) {
            PrettyCardsPrettyCardOrError prettyCardsPrettyCardOrError = (PrettyCardsPrettyCardOrError) obj;
            return this.errorCode == prettyCardsPrettyCardOrError.errorCode && Intrinsics.areEqual(this.errorSubcode, prettyCardsPrettyCardOrError.errorSubcode) && Intrinsics.areEqual(this.errorMsg, prettyCardsPrettyCardOrError.errorMsg) && Intrinsics.areEqual(this.errorText, prettyCardsPrettyCardOrError.errorText) && Intrinsics.areEqual(this.requestParams, prettyCardsPrettyCardOrError.requestParams);
        }
        return false;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    @Nullable
    public final String getErrorMsg() {
        return this.errorMsg;
    }

    @Nullable
    public final Integer getErrorSubcode() {
        return this.errorSubcode;
    }

    @Nullable
    public final String getErrorText() {
        return this.errorText;
    }

    @Nullable
    public final List<BaseRequestParam> getRequestParams() {
        return this.requestParams;
    }

    public int hashCode() {
        int i9 = this.errorCode * 31;
        Integer num = this.errorSubcode;
        int hashCode = (i9 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.errorMsg;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.errorText;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<BaseRequestParam> list = this.requestParams;
        return hashCode3 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.errorCode;
        Integer num = this.errorSubcode;
        String str = this.errorMsg;
        String str2 = this.errorText;
        List<BaseRequestParam> list = this.requestParams;
        return "PrettyCardsPrettyCardOrError(errorCode=" + i9 + ", errorSubcode=" + num + ", errorMsg=" + str + ", errorText=" + str2 + ", requestParams=" + list + ")";
    }

    public /* synthetic */ PrettyCardsPrettyCardOrError(int i9, Integer num, String str, String str2, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : str2, (i10 & 16) != 0 ? null : list);
    }
}
