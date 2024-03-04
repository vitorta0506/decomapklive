package com.vk.sdk.api.database;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseCountry;
import com.vk.sdk.api.database.dto.DatabaseCityById;
import com.vk.sdk.api.database.dto.DatabaseGetChairsResponse;
import com.vk.sdk.api.database.dto.DatabaseGetCitiesResponse;
import com.vk.sdk.api.database.dto.DatabaseGetCountriesResponse;
import com.vk.sdk.api.database.dto.DatabaseGetFacultiesResponse;
import com.vk.sdk.api.database.dto.DatabaseGetMetroStationsResponse;
import com.vk.sdk.api.database.dto.DatabaseGetRegionsResponse;
import com.vk.sdk.api.database.dto.DatabaseGetSchoolsResponse;
import com.vk.sdk.api.database.dto.DatabaseGetUniversitiesResponse;
import com.vk.sdk.api.database.dto.DatabaseStation;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J1\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\nJU\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\r\u001a\u00020\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0013J$\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u00150\u00042\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0015JA\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u001bJ$\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u00150\u00042\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0015J1\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u00042\u0006\u0010!\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ1\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010$\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ$\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\u00150\u00042\u0010\b\u0002\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0015J=\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\u00042\u0006\u0010\r\u001a\u00020\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010*J)\u0010+\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00150\u00150\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010,J=\u0010-\u001a\b\u0012\u0004\u0012\u00020.0\u00042\u0006\u0010$\u001a\u00020\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010*JM\u0010/\u001a\b\u0012\u0004\u0012\u0002000\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u00101¨\u00062"}, d2 = {"Lcom/vk/sdk/api/database/DatabaseService;", "", "()V", "databaseGetChairs", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/database/dto/DatabaseGetChairsResponse;", "facultyId", "", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "(ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "databaseGetCities", "Lcom/vk/sdk/api/database/dto/DatabaseGetCitiesResponse;", "countryId", "regionId", "q", "", "needAll", "", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "databaseGetCitiesById", "", "Lcom/vk/sdk/api/database/dto/DatabaseCityById;", "cityIds", "databaseGetCountries", "Lcom/vk/sdk/api/database/dto/DatabaseGetCountriesResponse;", "code", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "databaseGetCountriesById", "Lcom/vk/sdk/api/base/dto/BaseCountry;", "countryIds", "databaseGetFaculties", "Lcom/vk/sdk/api/database/dto/DatabaseGetFacultiesResponse;", "universityId", "databaseGetMetroStations", "Lcom/vk/sdk/api/database/dto/DatabaseGetMetroStationsResponse;", "cityId", "databaseGetMetroStationsById", "Lcom/vk/sdk/api/database/dto/DatabaseStation;", "stationIds", "databaseGetRegions", "Lcom/vk/sdk/api/database/dto/DatabaseGetRegionsResponse;", "(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "databaseGetSchoolClasses", "(Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "databaseGetSchools", "Lcom/vk/sdk/api/database/dto/DatabaseGetSchoolsResponse;", "databaseGetUniversities", "Lcom/vk/sdk/api/database/dto/DatabaseGetUniversitiesResponse;", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DatabaseService {
    public static /* synthetic */ VKRequest databaseGetChairs$default(DatabaseService databaseService, int i9, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        return databaseService.databaseGetChairs(i9, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetChairs$lambda-0  reason: not valid java name */
    public static final DatabaseGetChairsResponse m948databaseGetChairs$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DatabaseGetChairsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DatabaseGetChairsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetCities$lambda-4  reason: not valid java name */
    public static final DatabaseGetCitiesResponse m949databaseGetCities$lambda4(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DatabaseGetCitiesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DatabaseGetCitiesResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest databaseGetCitiesById$default(DatabaseService databaseService, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        return databaseService.databaseGetCitiesById(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetCitiesById$lambda-11  reason: not valid java name */
    public static final List m950databaseGetCitiesById$lambda11(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends DatabaseCityById>>() { // from class: com.vk.sdk.api.database.DatabaseService$databaseGetCitiesById$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest databaseGetCountries$default(DatabaseService databaseService, Boolean bool, String str, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            bool = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        return databaseService.databaseGetCountries(bool, str, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetCountries$lambda-14  reason: not valid java name */
    public static final DatabaseGetCountriesResponse m951databaseGetCountries$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DatabaseGetCountriesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DatabaseGetCountriesResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest databaseGetCountriesById$default(DatabaseService databaseService, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        return databaseService.databaseGetCountriesById(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetCountriesById$lambda-20  reason: not valid java name */
    public static final List m952databaseGetCountriesById$lambda20(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends BaseCountry>>() { // from class: com.vk.sdk.api.database.DatabaseService$databaseGetCountriesById$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest databaseGetFaculties$default(DatabaseService databaseService, int i9, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        return databaseService.databaseGetFaculties(i9, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetFaculties$lambda-23  reason: not valid java name */
    public static final DatabaseGetFacultiesResponse m953databaseGetFaculties$lambda23(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DatabaseGetFacultiesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DatabaseGetFacultiesResponse.class);
    }

    public static /* synthetic */ VKRequest databaseGetMetroStations$default(DatabaseService databaseService, int i9, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        return databaseService.databaseGetMetroStations(i9, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetMetroStations$lambda-27  reason: not valid java name */
    public static final DatabaseGetMetroStationsResponse m954databaseGetMetroStations$lambda27(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DatabaseGetMetroStationsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DatabaseGetMetroStationsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest databaseGetMetroStationsById$default(DatabaseService databaseService, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        return databaseService.databaseGetMetroStationsById(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetMetroStationsById$lambda-31  reason: not valid java name */
    public static final List m955databaseGetMetroStationsById$lambda31(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends DatabaseStation>>() { // from class: com.vk.sdk.api.database.DatabaseService$databaseGetMetroStationsById$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest databaseGetRegions$default(DatabaseService databaseService, int i9, String str, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            num2 = null;
        }
        return databaseService.databaseGetRegions(i9, str, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetRegions$lambda-34  reason: not valid java name */
    public static final DatabaseGetRegionsResponse m956databaseGetRegions$lambda34(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DatabaseGetRegionsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DatabaseGetRegionsResponse.class);
    }

    public static /* synthetic */ VKRequest databaseGetSchoolClasses$default(DatabaseService databaseService, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        return databaseService.databaseGetSchoolClasses(num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetSchoolClasses$lambda-39  reason: not valid java name */
    public static final List m957databaseGetSchoolClasses$lambda39(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends List<? extends String>>>() { // from class: com.vk.sdk.api.database.DatabaseService$databaseGetSchoolClasses$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest databaseGetSchools$default(DatabaseService databaseService, int i9, String str, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            num2 = null;
        }
        return databaseService.databaseGetSchools(i9, str, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetSchools$lambda-42  reason: not valid java name */
    public static final DatabaseGetSchoolsResponse m958databaseGetSchools$lambda42(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DatabaseGetSchoolsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DatabaseGetSchoolsResponse.class);
    }

    public static /* synthetic */ VKRequest databaseGetUniversities$default(DatabaseService databaseService, String str, Integer num, Integer num2, Integer num3, Integer num4, int i9, Object obj) {
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
            num3 = null;
        }
        if ((i9 & 16) != 0) {
            num4 = null;
        }
        return databaseService.databaseGetUniversities(str, num, num2, num3, num4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: databaseGetUniversities$lambda-47  reason: not valid java name */
    public static final DatabaseGetUniversitiesResponse m959databaseGetUniversities$lambda47(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DatabaseGetUniversitiesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DatabaseGetUniversitiesResponse.class);
    }

    @NotNull
    public final VKRequest<DatabaseGetChairsResponse> databaseGetChairs(int i9, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getChairs", new ApiResponseParser() { // from class: com.vk.sdk.api.database.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DatabaseGetChairsResponse m948databaseGetChairs$lambda0;
                m948databaseGetChairs$lambda0 = DatabaseService.m948databaseGetChairs$lambda0(jsonElement);
                return m948databaseGetChairs$lambda0;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "faculty_id", i9, 0, 0, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 10000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DatabaseGetCitiesResponse> databaseGetCities(int i9, @Nullable Integer num, @Nullable String str, @Nullable Boolean bool, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getCities", new ApiResponseParser() { // from class: com.vk.sdk.api.database.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DatabaseGetCitiesResponse m949databaseGetCities$lambda4;
                m949databaseGetCities$lambda4 = DatabaseService.m949databaseGetCities$lambda4(jsonElement);
                return m949databaseGetCities$lambda4;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "country_id", i9, 0, 0, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "region_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (bool != null) {
            newApiRequest.addParam("need_all", bool.booleanValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<DatabaseCityById>> databaseGetCitiesById(@Nullable List<Integer> list) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getCitiesById", new ApiResponseParser() { // from class: com.vk.sdk.api.database.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m950databaseGetCitiesById$lambda11;
                m950databaseGetCitiesById$lambda11 = DatabaseService.m950databaseGetCitiesById$lambda11(jsonElement);
                return m950databaseGetCitiesById$lambda11;
            }
        });
        if (list != null) {
            newApiRequest.addParam("city_ids", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DatabaseGetCountriesResponse> databaseGetCountries(@Nullable Boolean bool, @Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getCountries", new ApiResponseParser() { // from class: com.vk.sdk.api.database.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DatabaseGetCountriesResponse m951databaseGetCountries$lambda14;
                m951databaseGetCountries$lambda14 = DatabaseService.m951databaseGetCountries$lambda14(jsonElement);
                return m951databaseGetCountries$lambda14;
            }
        });
        if (bool != null) {
            newApiRequest.addParam("need_all", bool.booleanValue());
        }
        if (str != null) {
            newApiRequest.addParam("code", str);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<BaseCountry>> databaseGetCountriesById(@Nullable List<Integer> list) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getCountriesById", new ApiResponseParser() { // from class: com.vk.sdk.api.database.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m952databaseGetCountriesById$lambda20;
                m952databaseGetCountriesById$lambda20 = DatabaseService.m952databaseGetCountriesById$lambda20(jsonElement);
                return m952databaseGetCountriesById$lambda20;
            }
        });
        if (list != null) {
            newApiRequest.addParam("country_ids", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DatabaseGetFacultiesResponse> databaseGetFaculties(int i9, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getFaculties", new ApiResponseParser() { // from class: com.vk.sdk.api.database.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DatabaseGetFacultiesResponse m953databaseGetFaculties$lambda23;
                m953databaseGetFaculties$lambda23 = DatabaseService.m953databaseGetFaculties$lambda23(jsonElement);
                return m953databaseGetFaculties$lambda23;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "university_id", i9, 0, 0, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 10000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DatabaseGetMetroStationsResponse> databaseGetMetroStations(int i9, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getMetroStations", new ApiResponseParser() { // from class: com.vk.sdk.api.database.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DatabaseGetMetroStationsResponse m954databaseGetMetroStations$lambda27;
                m954databaseGetMetroStations$lambda27 = DatabaseService.m954databaseGetMetroStations$lambda27(jsonElement);
                return m954databaseGetMetroStations$lambda27;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "city_id", i9, 0, 0, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 500);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<DatabaseStation>> databaseGetMetroStationsById(@Nullable List<Integer> list) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getMetroStationsById", new ApiResponseParser() { // from class: com.vk.sdk.api.database.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m955databaseGetMetroStationsById$lambda31;
                m955databaseGetMetroStationsById$lambda31 = DatabaseService.m955databaseGetMetroStationsById$lambda31(jsonElement);
                return m955databaseGetMetroStationsById$lambda31;
            }
        });
        if (list != null) {
            newApiRequest.addParam("station_ids", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DatabaseGetRegionsResponse> databaseGetRegions(int i9, @Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getRegions", new ApiResponseParser() { // from class: com.vk.sdk.api.database.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DatabaseGetRegionsResponse m956databaseGetRegions$lambda34;
                m956databaseGetRegions$lambda34 = DatabaseService.m956databaseGetRegions$lambda34(jsonElement);
                return m956databaseGetRegions$lambda34;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "country_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<List<String>>> databaseGetSchoolClasses(@Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getSchoolClasses", new ApiResponseParser() { // from class: com.vk.sdk.api.database.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m957databaseGetSchoolClasses$lambda39;
                m957databaseGetSchoolClasses$lambda39 = DatabaseService.m957databaseGetSchoolClasses$lambda39(jsonElement);
                return m957databaseGetSchoolClasses$lambda39;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "country_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DatabaseGetSchoolsResponse> databaseGetSchools(int i9, @Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getSchools", new ApiResponseParser() { // from class: com.vk.sdk.api.database.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DatabaseGetSchoolsResponse m958databaseGetSchools$lambda42;
                m958databaseGetSchools$lambda42 = DatabaseService.m958databaseGetSchools$lambda42(jsonElement);
                return m958databaseGetSchools$lambda42;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "city_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 10000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DatabaseGetUniversitiesResponse> databaseGetUniversities(@Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4) {
        NewApiRequest newApiRequest = new NewApiRequest("database.getUniversities", new ApiResponseParser() { // from class: com.vk.sdk.api.database.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DatabaseGetUniversitiesResponse m959databaseGetUniversities$lambda47;
                m959databaseGetUniversities$lambda47 = DatabaseService.m959databaseGetUniversities$lambda47(jsonElement);
                return m959databaseGetUniversities$lambda47;
            }
        });
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "country_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "city_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num4.intValue(), 0, 10000);
        }
        return newApiRequest;
    }
}
