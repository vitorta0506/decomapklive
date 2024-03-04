package com.vk.sdk.api.leadForms.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b1\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BÇ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0019J\t\u00102\u001a\u00020\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u00105\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010(J\u000b\u00109\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010;\u001a\u00020\u0005HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\bHÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\bHÆ\u0003JØ\u0001\u0010C\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010DJ\u0013\u0010E\u001a\u00020F2\b\u0010G\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010H\u001a\u00020\u0003HÖ\u0001J\t\u0010I\u001a\u00020\bHÖ\u0001R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\r\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010 R\u0018\u0010\n\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001dR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001dR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001dR\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b'\u0010(R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001dR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001dR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001dR\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001dR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u001dR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001d¨\u0006J"}, d2 = {"Lcom/vk/sdk/api/leadForms/dto/LeadFormsForm;", "", "formId", "", "groupId", "Lcom/vk/dto/common/id/UserId;", "leadsCount", "url", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "name", "title", "description", "confirmation", "siteLinkUrl", "policyLinkUrl", "questions", "", "Lcom/vk/sdk/api/leadForms/dto/LeadFormsQuestionItem;", "active", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "pixelCode", "oncePerUser", "notifyAdmins", "notifyEmails", "(ILcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getActive", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getConfirmation", "()Ljava/lang/String;", "getDescription", "getFormId", "()I", "getGroupId", "()Lcom/vk/dto/common/id/UserId;", "getLeadsCount", "getName", "getNotifyAdmins", "getNotifyEmails", "getOncePerUser", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPhoto", "getPixelCode", "getPolicyLinkUrl", "getQuestions", "()Ljava/util/List;", "getSiteLinkUrl", "getTitle", "getUrl", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/leadForms/dto/LeadFormsForm;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LeadFormsForm {
    @SerializedName("active")
    @Nullable
    private final BaseBoolInt active;
    @SerializedName("confirmation")
    @Nullable
    private final String confirmation;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("form_id")
    private final int formId;
    @SerializedName("group_id")
    @NotNull
    private final UserId groupId;
    @SerializedName("leads_count")
    private final int leadsCount;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("notify_admins")
    @Nullable
    private final String notifyAdmins;
    @SerializedName("notify_emails")
    @Nullable
    private final String notifyEmails;
    @SerializedName("once_per_user")
    @Nullable
    private final Integer oncePerUser;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final String photo;
    @SerializedName("pixel_code")
    @Nullable
    private final String pixelCode;
    @SerializedName("policy_link_url")
    @Nullable
    private final String policyLinkUrl;
    @SerializedName("questions")
    @Nullable
    private final List<LeadFormsQuestionItem> questions;
    @SerializedName("site_link_url")
    @Nullable
    private final String siteLinkUrl;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("url")
    @NotNull
    private final String url;

    public LeadFormsForm(int i9, @NotNull UserId groupId, int i10, @NotNull String url, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable List<LeadFormsQuestionItem> list, @Nullable BaseBoolInt baseBoolInt, @Nullable String str8, @Nullable Integer num, @Nullable String str9, @Nullable String str10) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(url, "url");
        this.formId = i9;
        this.groupId = groupId;
        this.leadsCount = i10;
        this.url = url;
        this.photo = str;
        this.name = str2;
        this.title = str3;
        this.description = str4;
        this.confirmation = str5;
        this.siteLinkUrl = str6;
        this.policyLinkUrl = str7;
        this.questions = list;
        this.active = baseBoolInt;
        this.pixelCode = str8;
        this.oncePerUser = num;
        this.notifyAdmins = str9;
        this.notifyEmails = str10;
    }

    public final int component1() {
        return this.formId;
    }

    @Nullable
    public final String component10() {
        return this.siteLinkUrl;
    }

    @Nullable
    public final String component11() {
        return this.policyLinkUrl;
    }

    @Nullable
    public final List<LeadFormsQuestionItem> component12() {
        return this.questions;
    }

    @Nullable
    public final BaseBoolInt component13() {
        return this.active;
    }

    @Nullable
    public final String component14() {
        return this.pixelCode;
    }

    @Nullable
    public final Integer component15() {
        return this.oncePerUser;
    }

    @Nullable
    public final String component16() {
        return this.notifyAdmins;
    }

    @Nullable
    public final String component17() {
        return this.notifyEmails;
    }

    @NotNull
    public final UserId component2() {
        return this.groupId;
    }

    public final int component3() {
        return this.leadsCount;
    }

    @NotNull
    public final String component4() {
        return this.url;
    }

    @Nullable
    public final String component5() {
        return this.photo;
    }

    @Nullable
    public final String component6() {
        return this.name;
    }

    @Nullable
    public final String component7() {
        return this.title;
    }

    @Nullable
    public final String component8() {
        return this.description;
    }

    @Nullable
    public final String component9() {
        return this.confirmation;
    }

    @NotNull
    public final LeadFormsForm copy(int i9, @NotNull UserId groupId, int i10, @NotNull String url, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable List<LeadFormsQuestionItem> list, @Nullable BaseBoolInt baseBoolInt, @Nullable String str8, @Nullable Integer num, @Nullable String str9, @Nullable String str10) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(url, "url");
        return new LeadFormsForm(i9, groupId, i10, url, str, str2, str3, str4, str5, str6, str7, list, baseBoolInt, str8, num, str9, str10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LeadFormsForm) {
            LeadFormsForm leadFormsForm = (LeadFormsForm) obj;
            return this.formId == leadFormsForm.formId && Intrinsics.areEqual(this.groupId, leadFormsForm.groupId) && this.leadsCount == leadFormsForm.leadsCount && Intrinsics.areEqual(this.url, leadFormsForm.url) && Intrinsics.areEqual(this.photo, leadFormsForm.photo) && Intrinsics.areEqual(this.name, leadFormsForm.name) && Intrinsics.areEqual(this.title, leadFormsForm.title) && Intrinsics.areEqual(this.description, leadFormsForm.description) && Intrinsics.areEqual(this.confirmation, leadFormsForm.confirmation) && Intrinsics.areEqual(this.siteLinkUrl, leadFormsForm.siteLinkUrl) && Intrinsics.areEqual(this.policyLinkUrl, leadFormsForm.policyLinkUrl) && Intrinsics.areEqual(this.questions, leadFormsForm.questions) && this.active == leadFormsForm.active && Intrinsics.areEqual(this.pixelCode, leadFormsForm.pixelCode) && Intrinsics.areEqual(this.oncePerUser, leadFormsForm.oncePerUser) && Intrinsics.areEqual(this.notifyAdmins, leadFormsForm.notifyAdmins) && Intrinsics.areEqual(this.notifyEmails, leadFormsForm.notifyEmails);
        }
        return false;
    }

    @Nullable
    public final BaseBoolInt getActive() {
        return this.active;
    }

    @Nullable
    public final String getConfirmation() {
        return this.confirmation;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    public final int getFormId() {
        return this.formId;
    }

    @NotNull
    public final UserId getGroupId() {
        return this.groupId;
    }

    public final int getLeadsCount() {
        return this.leadsCount;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getNotifyAdmins() {
        return this.notifyAdmins;
    }

    @Nullable
    public final String getNotifyEmails() {
        return this.notifyEmails;
    }

    @Nullable
    public final Integer getOncePerUser() {
        return this.oncePerUser;
    }

    @Nullable
    public final String getPhoto() {
        return this.photo;
    }

    @Nullable
    public final String getPixelCode() {
        return this.pixelCode;
    }

    @Nullable
    public final String getPolicyLinkUrl() {
        return this.policyLinkUrl;
    }

    @Nullable
    public final List<LeadFormsQuestionItem> getQuestions() {
        return this.questions;
    }

    @Nullable
    public final String getSiteLinkUrl() {
        return this.siteLinkUrl;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = ((((((this.formId * 31) + this.groupId.hashCode()) * 31) + this.leadsCount) * 31) + this.url.hashCode()) * 31;
        String str = this.photo;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.name;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.title;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.description;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.confirmation;
        int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.siteLinkUrl;
        int hashCode7 = (hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.policyLinkUrl;
        int hashCode8 = (hashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        List<LeadFormsQuestionItem> list = this.questions;
        int hashCode9 = (hashCode8 + (list == null ? 0 : list.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.active;
        int hashCode10 = (hashCode9 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        String str8 = this.pixelCode;
        int hashCode11 = (hashCode10 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Integer num = this.oncePerUser;
        int hashCode12 = (hashCode11 + (num == null ? 0 : num.hashCode())) * 31;
        String str9 = this.notifyAdmins;
        int hashCode13 = (hashCode12 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.notifyEmails;
        return hashCode13 + (str10 != null ? str10.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.formId;
        UserId userId = this.groupId;
        int i10 = this.leadsCount;
        String str = this.url;
        String str2 = this.photo;
        String str3 = this.name;
        String str4 = this.title;
        String str5 = this.description;
        String str6 = this.confirmation;
        String str7 = this.siteLinkUrl;
        String str8 = this.policyLinkUrl;
        List<LeadFormsQuestionItem> list = this.questions;
        BaseBoolInt baseBoolInt = this.active;
        String str9 = this.pixelCode;
        Integer num = this.oncePerUser;
        String str10 = this.notifyAdmins;
        String str11 = this.notifyEmails;
        return "LeadFormsForm(formId=" + i9 + ", groupId=" + userId + ", leadsCount=" + i10 + ", url=" + str + ", photo=" + str2 + ", name=" + str3 + ", title=" + str4 + ", description=" + str5 + ", confirmation=" + str6 + ", siteLinkUrl=" + str7 + ", policyLinkUrl=" + str8 + ", questions=" + list + ", active=" + baseBoolInt + ", pixelCode=" + str9 + ", oncePerUser=" + num + ", notifyAdmins=" + str10 + ", notifyEmails=" + str11 + ")";
    }

    public /* synthetic */ LeadFormsForm(int i9, UserId userId, int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List list, BaseBoolInt baseBoolInt, String str9, Integer num, String str10, String str11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, userId, i10, str, (i11 & 16) != 0 ? null : str2, (i11 & 32) != 0 ? null : str3, (i11 & 64) != 0 ? null : str4, (i11 & 128) != 0 ? null : str5, (i11 & 256) != 0 ? null : str6, (i11 & 512) != 0 ? null : str7, (i11 & 1024) != 0 ? null : str8, (i11 & 2048) != 0 ? null : list, (i11 & 4096) != 0 ? null : baseBoolInt, (i11 & 8192) != 0 ? null : str9, (i11 & 16384) != 0 ? null : num, (32768 & i11) != 0 ? null : str10, (i11 & 65536) != 0 ? null : str11);
    }
}
