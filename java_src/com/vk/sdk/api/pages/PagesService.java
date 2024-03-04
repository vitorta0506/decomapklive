package com.vk.sdk.api.pages;

import com.facebook.AccessToken;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.utils.Contants;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.pages.dto.PagesSaveAccessEdit;
import com.vk.sdk.api.pages.dto.PagesSaveAccessView;
import com.vk.sdk.api.pages.dto.PagesWikipage;
import com.vk.sdk.api.pages.dto.PagesWikipageFull;
import com.vk.sdk.api.pages.dto.PagesWikipageHistory;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007Je\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0014J2\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u00042\u0006\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000bJ\u001e\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u00160\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000bJ=\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u001d\u001a\u00020\r2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u001eJ \u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010 \u001a\u00020\u00072\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000bJM\u0010!\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\"JD\u0010#\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\u0006\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'¨\u0006("}, d2 = {"Lcom/vk/sdk/api/pages/PagesService;", "", "()V", "pagesClearCache", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "url", "", "pagesGet", "Lcom/vk/sdk/api/pages/dto/PagesWikipageFull;", "ownerId", "Lcom/vk/dto/common/id/UserId;", "pageId", "", "global", "", "sitePreview", "title", "needSource", "needHtml", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "pagesGetHistory", "", "Lcom/vk/sdk/api/pages/dto/PagesWikipageHistory;", "groupId", Contants.USER_ID, "pagesGetTitles", "Lcom/vk/sdk/api/pages/dto/PagesWikipage;", "pagesGetVersion", "versionId", "(ILcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "pagesParseWiki", ViewHierarchyConstants.TEXT_KEY, "pagesSave", "(Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "pagesSaveAccess", ViewHierarchyConstants.VIEW_KEY, "Lcom/vk/sdk/api/pages/dto/PagesSaveAccessView;", "edit", "Lcom/vk/sdk/api/pages/dto/PagesSaveAccessEdit;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PagesService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pagesClearCache$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m1207pagesClearCache$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest pagesGet$default(PagesService pagesService, UserId userId, Integer num, Boolean bool, Boolean bool2, String str, Boolean bool3, Boolean bool4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        if ((i9 & 8) != 0) {
            bool2 = null;
        }
        if ((i9 & 16) != 0) {
            str = null;
        }
        if ((i9 & 32) != 0) {
            bool3 = null;
        }
        if ((i9 & 64) != 0) {
            bool4 = null;
        }
        return pagesService.pagesGet(userId, num, bool, bool2, str, bool3, bool4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pagesGet$lambda-2  reason: not valid java name */
    public static final PagesWikipageFull m1208pagesGet$lambda2(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PagesWikipageFull) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PagesWikipageFull.class);
    }

    public static /* synthetic */ VKRequest pagesGetHistory$default(PagesService pagesService, int i9, UserId userId, UserId userId2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            userId2 = null;
        }
        return pagesService.pagesGetHistory(i9, userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pagesGetHistory$lambda-11  reason: not valid java name */
    public static final List m1209pagesGetHistory$lambda11(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PagesWikipageHistory>>() { // from class: com.vk.sdk.api.pages.PagesService$pagesGetHistory$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest pagesGetTitles$default(PagesService pagesService, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        return pagesService.pagesGetTitles(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pagesGetTitles$lambda-15  reason: not valid java name */
    public static final List m1210pagesGetTitles$lambda15(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PagesWikipage>>() { // from class: com.vk.sdk.api.pages.PagesService$pagesGetTitles$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest pagesGetVersion$default(PagesService pagesService, int i9, UserId userId, UserId userId2, Boolean bool, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            userId2 = null;
        }
        if ((i10 & 8) != 0) {
            bool = null;
        }
        return pagesService.pagesGetVersion(i9, userId, userId2, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pagesGetVersion$lambda-18  reason: not valid java name */
    public static final PagesWikipageFull m1211pagesGetVersion$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PagesWikipageFull) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PagesWikipageFull.class);
    }

    public static /* synthetic */ VKRequest pagesParseWiki$default(PagesService pagesService, String str, UserId userId, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            userId = null;
        }
        return pagesService.pagesParseWiki(str, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pagesParseWiki$lambda-23  reason: not valid java name */
    public static final String m1212pagesParseWiki$lambda23(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (String) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) String.class);
    }

    public static /* synthetic */ VKRequest pagesSave$default(PagesService pagesService, String str, Integer num, UserId userId, UserId userId2, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            userId = null;
        }
        if ((i9 & 8) != 0) {
            userId2 = null;
        }
        if ((i9 & 16) != 0) {
            str2 = null;
        }
        return pagesService.pagesSave(str, num, userId, userId2, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pagesSave$lambda-26  reason: not valid java name */
    public static final Integer m1213pagesSave$lambda26(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pagesSaveAccess$lambda-33  reason: not valid java name */
    public static final Integer m1214pagesSaveAccess$lambda33(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> pagesClearCache(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        NewApiRequest newApiRequest = new NewApiRequest("pages.clearCache", new ApiResponseParser() { // from class: com.vk.sdk.api.pages.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1207pagesClearCache$lambda0;
                m1207pagesClearCache$lambda0 = PagesService.m1207pagesClearCache$lambda0(jsonElement);
                return m1207pagesClearCache$lambda0;
            }
        });
        newApiRequest.addParam("url", url);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PagesWikipageFull> pagesGet(@Nullable UserId userId, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable String str, @Nullable Boolean bool3, @Nullable Boolean bool4) {
        NewApiRequest newApiRequest = new NewApiRequest("pages.get", new ApiResponseParser() { // from class: com.vk.sdk.api.pages.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PagesWikipageFull m1208pagesGet$lambda2;
                m1208pagesGet$lambda2 = PagesService.m1208pagesGet$lambda2(jsonElement);
                return m1208pagesGet$lambda2;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            newApiRequest.addParam("page_id", num.intValue());
        }
        if (bool != null) {
            newApiRequest.addParam("global", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("site_preview", bool2.booleanValue());
        }
        if (str != null) {
            newApiRequest.addParam("title", str);
        }
        if (bool3 != null) {
            newApiRequest.addParam("need_source", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("need_html", bool4.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PagesWikipageHistory>> pagesGetHistory(int i9, @Nullable UserId userId, @Nullable UserId userId2) {
        NewApiRequest newApiRequest = new NewApiRequest("pages.getHistory", new ApiResponseParser() { // from class: com.vk.sdk.api.pages.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1209pagesGetHistory$lambda11;
                m1209pagesGetHistory$lambda11 = PagesService.m1209pagesGetHistory$lambda11(jsonElement);
                return m1209pagesGetHistory$lambda11;
            }
        });
        newApiRequest.addParam("page_id", i9);
        if (userId != null) {
            newApiRequest.addParam("group_id", userId);
        }
        if (userId2 != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, userId2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PagesWikipage>> pagesGetTitles(@Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("pages.getTitles", new ApiResponseParser() { // from class: com.vk.sdk.api.pages.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1210pagesGetTitles$lambda15;
                m1210pagesGetTitles$lambda15 = PagesService.m1210pagesGetTitles$lambda15(jsonElement);
                return m1210pagesGetTitles$lambda15;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("group_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PagesWikipageFull> pagesGetVersion(int i9, @Nullable UserId userId, @Nullable UserId userId2, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("pages.getVersion", new ApiResponseParser() { // from class: com.vk.sdk.api.pages.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PagesWikipageFull m1211pagesGetVersion$lambda18;
                m1211pagesGetVersion$lambda18 = PagesService.m1211pagesGetVersion$lambda18(jsonElement);
                return m1211pagesGetVersion$lambda18;
            }
        });
        newApiRequest.addParam("version_id", i9);
        if (userId != null) {
            newApiRequest.addParam("group_id", userId);
        }
        if (userId2 != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, userId2);
        }
        if (bool != null) {
            newApiRequest.addParam("need_html", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<String> pagesParseWiki(@NotNull String text, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(text, "text");
        NewApiRequest newApiRequest = new NewApiRequest("pages.parseWiki", new ApiResponseParser() { // from class: com.vk.sdk.api.pages.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                String m1212pagesParseWiki$lambda23;
                m1212pagesParseWiki$lambda23 = PagesService.m1212pagesParseWiki$lambda23(jsonElement);
                return m1212pagesParseWiki$lambda23;
            }
        });
        newApiRequest.addParam(ViewHierarchyConstants.TEXT_KEY, text);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> pagesSave(@Nullable String str, @Nullable Integer num, @Nullable UserId userId, @Nullable UserId userId2, @Nullable String str2) {
        NewApiRequest newApiRequest = new NewApiRequest("pages.save", new ApiResponseParser() { // from class: com.vk.sdk.api.pages.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1213pagesSave$lambda26;
                m1213pagesSave$lambda26 = PagesService.m1213pagesSave$lambda26(jsonElement);
                return m1213pagesSave$lambda26;
            }
        });
        if (str != null) {
            newApiRequest.addParam(ViewHierarchyConstants.TEXT_KEY, str);
        }
        if (num != null) {
            newApiRequest.addParam("page_id", num.intValue());
        }
        if (userId != null) {
            newApiRequest.addParam("group_id", userId);
        }
        if (userId2 != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, userId2);
        }
        if (str2 != null) {
            newApiRequest.addParam("title", str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> pagesSaveAccess(int i9, @Nullable UserId userId, @Nullable UserId userId2, @Nullable PagesSaveAccessView pagesSaveAccessView, @Nullable PagesSaveAccessEdit pagesSaveAccessEdit) {
        NewApiRequest newApiRequest = new NewApiRequest("pages.saveAccess", new ApiResponseParser() { // from class: com.vk.sdk.api.pages.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1214pagesSaveAccess$lambda33;
                m1214pagesSaveAccess$lambda33 = PagesService.m1214pagesSaveAccess$lambda33(jsonElement);
                return m1214pagesSaveAccess$lambda33;
            }
        });
        newApiRequest.addParam("page_id", i9);
        if (userId != null) {
            newApiRequest.addParam("group_id", userId);
        }
        if (userId2 != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, userId2);
        }
        if (pagesSaveAccessView != null) {
            newApiRequest.addParam(ViewHierarchyConstants.VIEW_KEY, pagesSaveAccessView.getValue());
        }
        if (pagesSaveAccessEdit != null) {
            newApiRequest.addParam("edit", pagesSaveAccessEdit.getValue());
        }
        return newApiRequest;
    }
}
