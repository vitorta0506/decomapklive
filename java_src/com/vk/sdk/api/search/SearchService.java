package com.vk.sdk.api.search;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.GraphRequest;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import com.huawei.hms.api.ConnectionResult;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.search.SearchService;
import com.vk.sdk.api.search.dto.SearchGetHintsResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002Je\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vk/sdk/api/search/SearchService;", "", "()V", "searchGetHints", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/search/dto/SearchGetHintsResponse;", "q", "", TypedValues.CycleType.S_WAVE_OFFSET, "", "limit", ShareConstants.WEB_DIALOG_PARAM_FILTERS, "", GraphRequest.FIELDS_PARAM, "searchGlobal", "", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class SearchService {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest searchGetHints$default(SearchService searchService, String str, Integer num, Integer num2, List list, List list2, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        if ((i9 & 16) != 0) {
            list2 = null;
        }
        if ((i9 & 32) != 0) {
            bool = null;
        }
        return searchService.searchGetHints(str, num, num2, list, list2, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: searchGetHints$lambda-0  reason: not valid java name */
    public static final SearchGetHintsResponse m1282searchGetHints$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (SearchGetHintsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) SearchGetHintsResponse.class);
    }

    @NotNull
    public final VKRequest<SearchGetHintsResponse> searchGetHints(@Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable List<String> list, @Nullable List<String> list2, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("search.getHints", new ApiResponseParser() { // from class: mf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                SearchGetHintsResponse m1282searchGetHints$lambda0;
                m1282searchGetHints$lambda0 = SearchService.m1282searchGetHints$lambda0(jsonElement);
                return m1282searchGetHints$lambda0;
            }
        });
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "q", str, 0, (int) ConnectionResult.NETWORK_ERROR, 4, (Object) null);
        }
        if (num != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 200);
        }
        if (num2 != null) {
            newApiRequest.addParam("limit", num2.intValue(), 0, 200);
        }
        if (list != null) {
            newApiRequest.addParam(ShareConstants.WEB_DIALOG_PARAM_FILTERS, list);
        }
        if (list2 != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list2);
        }
        if (bool != null) {
            newApiRequest.addParam("search_global", bool.booleanValue());
        }
        return newApiRequest;
    }
}
