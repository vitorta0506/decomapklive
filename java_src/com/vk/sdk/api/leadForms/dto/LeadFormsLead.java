package com.vk.sdk.api.leadForms.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJH\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/leadForms/dto/LeadFormsLead;", "", "leadId", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "date", "answers", "", "Lcom/vk/sdk/api/leadForms/dto/LeadFormsAnswer;", "adId", "(ILcom/vk/dto/common/id/UserId;ILjava/util/List;Ljava/lang/Integer;)V", "getAdId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAnswers", "()Ljava/util/List;", "getDate", "()I", "getLeadId", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "component3", "component4", "component5", "copy", "(ILcom/vk/dto/common/id/UserId;ILjava/util/List;Ljava/lang/Integer;)Lcom/vk/sdk/api/leadForms/dto/LeadFormsLead;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LeadFormsLead {
    @SerializedName("ad_id")
    @Nullable
    private final Integer adId;
    @SerializedName("answers")
    @NotNull
    private final List<LeadFormsAnswer> answers;
    @SerializedName("date")
    private final int date;
    @SerializedName("lead_id")
    private final int leadId;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;

    public LeadFormsLead(int i9, @NotNull UserId userId, int i10, @NotNull List<LeadFormsAnswer> answers, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(answers, "answers");
        this.leadId = i9;
        this.userId = userId;
        this.date = i10;
        this.answers = answers;
        this.adId = num;
    }

    public static /* synthetic */ LeadFormsLead copy$default(LeadFormsLead leadFormsLead, int i9, UserId userId, int i10, List list, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = leadFormsLead.leadId;
        }
        if ((i11 & 2) != 0) {
            userId = leadFormsLead.userId;
        }
        UserId userId2 = userId;
        if ((i11 & 4) != 0) {
            i10 = leadFormsLead.date;
        }
        int i12 = i10;
        List<LeadFormsAnswer> list2 = list;
        if ((i11 & 8) != 0) {
            list2 = leadFormsLead.answers;
        }
        List list3 = list2;
        if ((i11 & 16) != 0) {
            num = leadFormsLead.adId;
        }
        return leadFormsLead.copy(i9, userId2, i12, list3, num);
    }

    public final int component1() {
        return this.leadId;
    }

    @NotNull
    public final UserId component2() {
        return this.userId;
    }

    public final int component3() {
        return this.date;
    }

    @NotNull
    public final List<LeadFormsAnswer> component4() {
        return this.answers;
    }

    @Nullable
    public final Integer component5() {
        return this.adId;
    }

    @NotNull
    public final LeadFormsLead copy(int i9, @NotNull UserId userId, int i10, @NotNull List<LeadFormsAnswer> answers, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(answers, "answers");
        return new LeadFormsLead(i9, userId, i10, answers, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LeadFormsLead) {
            LeadFormsLead leadFormsLead = (LeadFormsLead) obj;
            return this.leadId == leadFormsLead.leadId && Intrinsics.areEqual(this.userId, leadFormsLead.userId) && this.date == leadFormsLead.date && Intrinsics.areEqual(this.answers, leadFormsLead.answers) && Intrinsics.areEqual(this.adId, leadFormsLead.adId);
        }
        return false;
    }

    @Nullable
    public final Integer getAdId() {
        return this.adId;
    }

    @NotNull
    public final List<LeadFormsAnswer> getAnswers() {
        return this.answers;
    }

    public final int getDate() {
        return this.date;
    }

    public final int getLeadId() {
        return this.leadId;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((((((this.leadId * 31) + this.userId.hashCode()) * 31) + this.date) * 31) + this.answers.hashCode()) * 31;
        Integer num = this.adId;
        return hashCode + (num == null ? 0 : num.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.leadId;
        UserId userId = this.userId;
        int i10 = this.date;
        List<LeadFormsAnswer> list = this.answers;
        Integer num = this.adId;
        return "LeadFormsLead(leadId=" + i9 + ", userId=" + userId + ", date=" + i10 + ", answers=" + list + ", adId=" + num + ")";
    }

    public /* synthetic */ LeadFormsLead(int i9, UserId userId, int i10, List list, Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, userId, i10, list, (i11 & 16) != 0 ? null : num);
    }
}
