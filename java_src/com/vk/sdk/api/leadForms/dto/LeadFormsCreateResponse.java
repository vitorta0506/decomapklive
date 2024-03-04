package com.vk.sdk.api.leadForms.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/leadForms/dto/LeadFormsCreateResponse;", "", "formId", "", "url", "", "(ILjava/lang/String;)V", "getFormId", "()I", "getUrl", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LeadFormsCreateResponse {
    @SerializedName("form_id")
    private final int formId;
    @SerializedName("url")
    @NotNull
    private final String url;

    public LeadFormsCreateResponse(int i9, @NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.formId = i9;
        this.url = url;
    }

    public static /* synthetic */ LeadFormsCreateResponse copy$default(LeadFormsCreateResponse leadFormsCreateResponse, int i9, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = leadFormsCreateResponse.formId;
        }
        if ((i10 & 2) != 0) {
            str = leadFormsCreateResponse.url;
        }
        return leadFormsCreateResponse.copy(i9, str);
    }

    public final int component1() {
        return this.formId;
    }

    @NotNull
    public final String component2() {
        return this.url;
    }

    @NotNull
    public final LeadFormsCreateResponse copy(int i9, @NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new LeadFormsCreateResponse(i9, url);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LeadFormsCreateResponse) {
            LeadFormsCreateResponse leadFormsCreateResponse = (LeadFormsCreateResponse) obj;
            return this.formId == leadFormsCreateResponse.formId && Intrinsics.areEqual(this.url, leadFormsCreateResponse.url);
        }
        return false;
    }

    public final int getFormId() {
        return this.formId;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (this.formId * 31) + this.url.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.formId;
        String str = this.url;
        return "LeadFormsCreateResponse(formId=" + i9 + ", url=" + str + ")";
    }
}
