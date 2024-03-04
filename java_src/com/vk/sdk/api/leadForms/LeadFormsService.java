package com.vk.sdk.api.leadForms;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.leadForms.dto.LeadFormsCreateResponse;
import com.vk.sdk.api.leadForms.dto.LeadFormsDeleteResponse;
import com.vk.sdk.api.leadForms.dto.LeadFormsForm;
import com.vk.sdk.api.leadForms.dto.LeadFormsGetLeadsResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u00ad\u0001\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00162\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0016¢\u0006\u0002\u0010\u0018J\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007J\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007J9\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\"J\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\t0\u0004J\u001a\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u00160\u00042\u0006\u0010\u0006\u001a\u00020\u0007Jµ\u0001\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00162\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0016¢\u0006\u0002\u0010&¨\u0006'"}, d2 = {"Lcom/vk/sdk/api/leadForms/LeadFormsService;", "", "()V", "leadFormsCreate", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/leadForms/dto/LeadFormsCreateResponse;", "groupId", "", "name", "", "title", "description", "questions", "policyLinkUrl", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "confirmation", "siteLinkUrl", "active", "", "oncePerUser", "pixelCode", "notifyAdmins", "", "notifyEmails", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "leadFormsDelete", "Lcom/vk/sdk/api/leadForms/dto/LeadFormsDeleteResponse;", "formId", "leadFormsGet", "Lcom/vk/sdk/api/leadForms/dto/LeadFormsForm;", "leadFormsGetLeads", "Lcom/vk/sdk/api/leadForms/dto/LeadFormsGetLeadsResponse;", "limit", "nextPageToken", "(IILjava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "leadFormsGetUploadURL", "leadFormsList", "leadFormsUpdate", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LeadFormsService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: leadFormsCreate$lambda-0  reason: not valid java name */
    public static final LeadFormsCreateResponse m1076leadFormsCreate$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (LeadFormsCreateResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) LeadFormsCreateResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: leadFormsDelete$lambda-10  reason: not valid java name */
    public static final LeadFormsDeleteResponse m1077leadFormsDelete$lambda10(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (LeadFormsDeleteResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) LeadFormsDeleteResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: leadFormsGet$lambda-12  reason: not valid java name */
    public static final LeadFormsForm m1078leadFormsGet$lambda12(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (LeadFormsForm) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) LeadFormsForm.class);
    }

    public static /* synthetic */ VKRequest leadFormsGetLeads$default(LeadFormsService leadFormsService, int i9, int i10, Integer num, String str, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num = null;
        }
        if ((i11 & 8) != 0) {
            str = null;
        }
        return leadFormsService.leadFormsGetLeads(i9, i10, num, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: leadFormsGetLeads$lambda-14  reason: not valid java name */
    public static final LeadFormsGetLeadsResponse m1079leadFormsGetLeads$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (LeadFormsGetLeadsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) LeadFormsGetLeadsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: leadFormsGetUploadURL$lambda-18  reason: not valid java name */
    public static final String m1080leadFormsGetUploadURL$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) String.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson(it, String::class.java)");
        return (String) fromJson;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: leadFormsList$lambda-19  reason: not valid java name */
    public static final List m1081leadFormsList$lambda19(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends LeadFormsForm>>() { // from class: com.vk.sdk.api.leadForms.LeadFormsService$leadFormsList$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: leadFormsUpdate$lambda-21  reason: not valid java name */
    public static final LeadFormsCreateResponse m1082leadFormsUpdate$lambda21(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (LeadFormsCreateResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) LeadFormsCreateResponse.class);
    }

    @NotNull
    public final VKRequest<LeadFormsCreateResponse> leadFormsCreate(int i9, @NotNull String name, @NotNull String title, @NotNull String description, @NotNull String questions, @NotNull String policyLinkUrl, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable String str4, @Nullable List<Integer> list, @Nullable List<String> list2) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(questions, "questions");
        Intrinsics.checkNotNullParameter(policyLinkUrl, "policyLinkUrl");
        NewApiRequest newApiRequest = new NewApiRequest("leadForms.create", new ApiResponseParser() { // from class: com.vk.sdk.api.leadForms.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                LeadFormsCreateResponse m1076leadFormsCreate$lambda0;
                m1076leadFormsCreate$lambda0 = LeadFormsService.m1076leadFormsCreate$lambda0(jsonElement);
                return m1076leadFormsCreate$lambda0;
            }
        });
        newApiRequest.addParam("group_id", i9);
        NewApiRequest.addParam$default(newApiRequest, "name", name, 0, 100, 4, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "title", title, 0, 60, 4, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "description", description, 0, 600, 4, (Object) null);
        newApiRequest.addParam("questions", questions);
        NewApiRequest.addParam$default(newApiRequest, "policy_link_url", policyLinkUrl, 0, 200, 4, (Object) null);
        if (str != null) {
            newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, str);
        }
        if (str2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "confirmation", str2, 0, 300, 4, (Object) null);
        }
        if (str3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "site_link_url", str3, 0, 200, 4, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("active", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("once_per_user", bool2.booleanValue());
        }
        if (str4 != null) {
            newApiRequest.addParam("pixel_code", str4);
        }
        if (list != null) {
            newApiRequest.addParam("notify_admins", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("notify_emails", list2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<LeadFormsDeleteResponse> leadFormsDelete(int i9, int i10) {
        NewApiRequest newApiRequest = new NewApiRequest("leadForms.delete", new ApiResponseParser() { // from class: com.vk.sdk.api.leadForms.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                LeadFormsDeleteResponse m1077leadFormsDelete$lambda10;
                m1077leadFormsDelete$lambda10 = LeadFormsService.m1077leadFormsDelete$lambda10(jsonElement);
                return m1077leadFormsDelete$lambda10;
            }
        });
        newApiRequest.addParam("group_id", i9);
        newApiRequest.addParam("form_id", i10);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<LeadFormsForm> leadFormsGet(int i9, int i10) {
        NewApiRequest newApiRequest = new NewApiRequest("leadForms.get", new ApiResponseParser() { // from class: com.vk.sdk.api.leadForms.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                LeadFormsForm m1078leadFormsGet$lambda12;
                m1078leadFormsGet$lambda12 = LeadFormsService.m1078leadFormsGet$lambda12(jsonElement);
                return m1078leadFormsGet$lambda12;
            }
        });
        newApiRequest.addParam("group_id", i9);
        newApiRequest.addParam("form_id", i10);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<LeadFormsGetLeadsResponse> leadFormsGetLeads(int i9, int i10, @Nullable Integer num, @Nullable String str) {
        NewApiRequest newApiRequest = new NewApiRequest("leadForms.getLeads", new ApiResponseParser() { // from class: com.vk.sdk.api.leadForms.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                LeadFormsGetLeadsResponse m1079leadFormsGetLeads$lambda14;
                m1079leadFormsGetLeads$lambda14 = LeadFormsService.m1079leadFormsGetLeads$lambda14(jsonElement);
                return m1079leadFormsGetLeads$lambda14;
            }
        });
        newApiRequest.addParam("group_id", i9);
        newApiRequest.addParam("form_id", i10);
        if (num != null) {
            newApiRequest.addParam("limit", num.intValue(), 1, 1000);
        }
        if (str != null) {
            newApiRequest.addParam("next_page_token", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<String> leadFormsGetUploadURL() {
        return new NewApiRequest("leadForms.getUploadURL", new ApiResponseParser() { // from class: com.vk.sdk.api.leadForms.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                String m1080leadFormsGetUploadURL$lambda18;
                m1080leadFormsGetUploadURL$lambda18 = LeadFormsService.m1080leadFormsGetUploadURL$lambda18(jsonElement);
                return m1080leadFormsGetUploadURL$lambda18;
            }
        });
    }

    @NotNull
    public final VKRequest<List<LeadFormsForm>> leadFormsList(int i9) {
        NewApiRequest newApiRequest = new NewApiRequest("leadForms.list", new ApiResponseParser() { // from class: com.vk.sdk.api.leadForms.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1081leadFormsList$lambda19;
                m1081leadFormsList$lambda19 = LeadFormsService.m1081leadFormsList$lambda19(jsonElement);
                return m1081leadFormsList$lambda19;
            }
        });
        newApiRequest.addParam("group_id", i9);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<LeadFormsCreateResponse> leadFormsUpdate(int i9, int i10, @NotNull String name, @NotNull String title, @NotNull String description, @NotNull String questions, @NotNull String policyLinkUrl, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable String str4, @Nullable List<Integer> list, @Nullable List<String> list2) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(questions, "questions");
        Intrinsics.checkNotNullParameter(policyLinkUrl, "policyLinkUrl");
        NewApiRequest newApiRequest = new NewApiRequest("leadForms.update", new ApiResponseParser() { // from class: com.vk.sdk.api.leadForms.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                LeadFormsCreateResponse m1082leadFormsUpdate$lambda21;
                m1082leadFormsUpdate$lambda21 = LeadFormsService.m1082leadFormsUpdate$lambda21(jsonElement);
                return m1082leadFormsUpdate$lambda21;
            }
        });
        newApiRequest.addParam("group_id", i9);
        newApiRequest.addParam("form_id", i10);
        NewApiRequest.addParam$default(newApiRequest, "name", name, 0, 100, 4, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "title", title, 0, 60, 4, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "description", description, 0, 600, 4, (Object) null);
        newApiRequest.addParam("questions", questions);
        NewApiRequest.addParam$default(newApiRequest, "policy_link_url", policyLinkUrl, 0, 200, 4, (Object) null);
        if (str != null) {
            newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, str);
        }
        if (str2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "confirmation", str2, 0, 300, 4, (Object) null);
        }
        if (str3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "site_link_url", str3, 0, 200, 4, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("active", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("once_per_user", bool2.booleanValue());
        }
        if (str4 != null) {
            newApiRequest.addParam("pixel_code", str4);
        }
        if (list != null) {
            newApiRequest.addParam("notify_admins", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("notify_emails", list2);
        }
        return newApiRequest;
    }
}
