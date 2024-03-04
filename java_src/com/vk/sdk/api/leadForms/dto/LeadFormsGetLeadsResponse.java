package com.vk.sdk.api.leadForms.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0003J%\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0006HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/leadForms/dto/LeadFormsGetLeadsResponse;", "", "leads", "", "Lcom/vk/sdk/api/leadForms/dto/LeadFormsLead;", "nextPageToken", "", "(Ljava/util/List;Ljava/lang/String;)V", "getLeads", "()Ljava/util/List;", "getNextPageToken", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LeadFormsGetLeadsResponse {
    @SerializedName("leads")
    @NotNull
    private final List<LeadFormsLead> leads;
    @SerializedName("next_page_token")
    @Nullable
    private final String nextPageToken;

    public LeadFormsGetLeadsResponse(@NotNull List<LeadFormsLead> leads, @Nullable String str) {
        Intrinsics.checkNotNullParameter(leads, "leads");
        this.leads = leads;
        this.nextPageToken = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LeadFormsGetLeadsResponse copy$default(LeadFormsGetLeadsResponse leadFormsGetLeadsResponse, List list, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = leadFormsGetLeadsResponse.leads;
        }
        if ((i9 & 2) != 0) {
            str = leadFormsGetLeadsResponse.nextPageToken;
        }
        return leadFormsGetLeadsResponse.copy(list, str);
    }

    @NotNull
    public final List<LeadFormsLead> component1() {
        return this.leads;
    }

    @Nullable
    public final String component2() {
        return this.nextPageToken;
    }

    @NotNull
    public final LeadFormsGetLeadsResponse copy(@NotNull List<LeadFormsLead> leads, @Nullable String str) {
        Intrinsics.checkNotNullParameter(leads, "leads");
        return new LeadFormsGetLeadsResponse(leads, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LeadFormsGetLeadsResponse) {
            LeadFormsGetLeadsResponse leadFormsGetLeadsResponse = (LeadFormsGetLeadsResponse) obj;
            return Intrinsics.areEqual(this.leads, leadFormsGetLeadsResponse.leads) && Intrinsics.areEqual(this.nextPageToken, leadFormsGetLeadsResponse.nextPageToken);
        }
        return false;
    }

    @NotNull
    public final List<LeadFormsLead> getLeads() {
        return this.leads;
    }

    @Nullable
    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    public int hashCode() {
        int hashCode = this.leads.hashCode() * 31;
        String str = this.nextPageToken;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        List<LeadFormsLead> list = this.leads;
        String str = this.nextPageToken;
        return "LeadFormsGetLeadsResponse(leads=" + list + ", nextPageToken=" + str + ")";
    }

    public /* synthetic */ LeadFormsGetLeadsResponse(List list, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i9 & 2) != 0 ? null : str);
    }
}
