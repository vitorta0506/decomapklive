package com.vk.sdk.api.store;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.base.dto.BaseSticker;
import com.vk.sdk.api.store.dto.StoreGetStickersKeywordsResponse;
import com.vk.sdk.api.store.dto.StoreProduct;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00070\u0004JZ\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00070\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007JY\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u00042\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010\u001bJ\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/store/StoreService;", "", "()V", "storeAddStickersToFavorite", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "stickerIds", "", "", "storeGetFavoriteStickers", "Lcom/vk/sdk/api/base/dto/BaseSticker;", "storeGetProducts", "Lcom/vk/sdk/api/store/dto/StoreProduct;", "type", "", "merchant", "section", "productIds", ShareConstants.WEB_DIALOG_PARAM_FILTERS, "storeGetStickersKeywords", "Lcom/vk/sdk/api/store/dto/StoreGetStickersKeywordsResponse;", "stickersIds", "productsIds", "aliases", "", "allProducts", "needStickers", "(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "storeRemoveStickersFromFavorite", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoreService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storeAddStickersToFavorite$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m1301storeAddStickersToFavorite$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storeGetFavoriteStickers$lambda-2  reason: not valid java name */
    public static final List m1302storeGetFavoriteStickers$lambda2(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends BaseSticker>>() { // from class: com.vk.sdk.api.store.StoreService$storeGetFavoriteStickers$1$typeToken$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…eSticker>>(it, typeToken)");
        return (List) fromJson;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storeGetProducts$default(StoreService storeService, String str, String str2, String str3, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        if ((i9 & 4) != 0) {
            str3 = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        if ((i9 & 16) != 0) {
            list2 = null;
        }
        return storeService.storeGetProducts(str, str2, str3, list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storeGetProducts$lambda-3  reason: not valid java name */
    public static final List m1303storeGetProducts$lambda3(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends StoreProduct>>() { // from class: com.vk.sdk.api.store.StoreService$storeGetProducts$1$typeToken$1
        }.getType());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storeGetStickersKeywords$default(StoreService storeService, List list, List list2, Boolean bool, Boolean bool2, Boolean bool3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            list2 = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        if ((i9 & 8) != 0) {
            bool2 = null;
        }
        if ((i9 & 16) != 0) {
            bool3 = null;
        }
        return storeService.storeGetStickersKeywords(list, list2, bool, bool2, bool3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storeGetStickersKeywords$lambda-10  reason: not valid java name */
    public static final StoreGetStickersKeywordsResponse m1304storeGetStickersKeywords$lambda10(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoreGetStickersKeywordsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoreGetStickersKeywordsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storeRemoveStickersFromFavorite$lambda-17  reason: not valid java name */
    public static final BaseOkResponse m1305storeRemoveStickersFromFavorite$lambda17(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> storeAddStickersToFavorite(@NotNull List<Integer> stickerIds) {
        Intrinsics.checkNotNullParameter(stickerIds, "stickerIds");
        NewApiRequest newApiRequest = new NewApiRequest("store.addStickersToFavorite", new ApiResponseParser() { // from class: com.vk.sdk.api.store.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1301storeAddStickersToFavorite$lambda0;
                m1301storeAddStickersToFavorite$lambda0 = StoreService.m1301storeAddStickersToFavorite$lambda0(jsonElement);
                return m1301storeAddStickersToFavorite$lambda0;
            }
        });
        newApiRequest.addParam("sticker_ids", stickerIds);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<BaseSticker>> storeGetFavoriteStickers() {
        return new NewApiRequest("store.getFavoriteStickers", new ApiResponseParser() { // from class: com.vk.sdk.api.store.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1302storeGetFavoriteStickers$lambda2;
                m1302storeGetFavoriteStickers$lambda2 = StoreService.m1302storeGetFavoriteStickers$lambda2(jsonElement);
                return m1302storeGetFavoriteStickers$lambda2;
            }
        });
    }

    @NotNull
    public final VKRequest<List<StoreProduct>> storeGetProducts(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable List<Integer> list, @Nullable List<String> list2) {
        NewApiRequest newApiRequest = new NewApiRequest("store.getProducts", new ApiResponseParser() { // from class: com.vk.sdk.api.store.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1303storeGetProducts$lambda3;
                m1303storeGetProducts$lambda3 = StoreService.m1303storeGetProducts$lambda3(jsonElement);
                return m1303storeGetProducts$lambda3;
            }
        });
        if (str != null) {
            newApiRequest.addParam("type", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("merchant", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("section", str3);
        }
        if (list != null) {
            newApiRequest.addParam("product_ids", list);
        }
        if (list2 != null) {
            newApiRequest.addParam(ShareConstants.WEB_DIALOG_PARAM_FILTERS, list2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoreGetStickersKeywordsResponse> storeGetStickersKeywords(@Nullable List<Integer> list, @Nullable List<Integer> list2, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        NewApiRequest newApiRequest = new NewApiRequest("store.getStickersKeywords", new ApiResponseParser() { // from class: com.vk.sdk.api.store.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoreGetStickersKeywordsResponse m1304storeGetStickersKeywords$lambda10;
                m1304storeGetStickersKeywords$lambda10 = StoreService.m1304storeGetStickersKeywords$lambda10(jsonElement);
                return m1304storeGetStickersKeywords$lambda10;
            }
        });
        if (list != null) {
            newApiRequest.addParam("stickers_ids", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("products_ids", list2);
        }
        if (bool != null) {
            newApiRequest.addParam("aliases", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("all_products", bool2.booleanValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("need_stickers", bool3.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> storeRemoveStickersFromFavorite(@NotNull List<Integer> stickerIds) {
        Intrinsics.checkNotNullParameter(stickerIds, "stickerIds");
        NewApiRequest newApiRequest = new NewApiRequest("store.removeStickersFromFavorite", new ApiResponseParser() { // from class: com.vk.sdk.api.store.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1305storeRemoveStickersFromFavorite$lambda17;
                m1305storeRemoveStickersFromFavorite$lambda17 = StoreService.m1305storeRemoveStickersFromFavorite$lambda17(jsonElement);
                return m1305storeRemoveStickersFromFavorite$lambda17;
            }
        });
        newApiRequest.addParam("sticker_ids", stickerIds);
        return newApiRequest;
    }
}
