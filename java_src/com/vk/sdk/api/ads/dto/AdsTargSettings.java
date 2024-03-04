package com.vk.sdk.api.ads.dto;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.facebook.appevents.UserDataStore;
import com.google.gson.annotations.SerializedName;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BasePropertyExists;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\bO\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0085\u0003\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010'J\u0010\u0010N\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u0010\u0010O\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u000b\u0010P\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010Y\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u0010\u0010[\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u000b\u0010\\\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010!HÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u0010\u0010c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u0010\u0010d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u000b\u0010e\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010h\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u000b\u0010i\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010k\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u000b\u0010l\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\bHÆ\u0003J\u008e\u0003\u0010n\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010oJ\u0013\u0010p\u001a\u00020q2\b\u0010r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010s\u001a\u00020\u0003HÖ\u0001J\t\u0010t\u001a\u00020\bHÖ\u0001R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b(\u0010)R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b+\u0010)R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010-R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b/\u0010)R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b0\u0010)R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010-R\u0018\u0010\f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010-R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b3\u0010)R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010-R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u0010-R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b6\u0010)R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010-R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u0010-R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010-R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010-R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010-R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010-R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b?\u0010)R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b@\u0010)R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u0010-R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010-R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u0010-R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u0010-R\u0018\u0010 \u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u001a\u0010\"\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\bI\u0010)R\u001a\u0010#\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\bJ\u0010)R\u0018\u0010$\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bK\u0010-R\u0018\u0010%\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bL\u0010-R\u0018\u0010&\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bM\u0010-¨\u0006u"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsTargSettings;", "", "id", "", "campaignId", "ageFrom", "ageTo", "apps", "", "appsNot", "birthday", "cities", "citiesNot", UserDataStore.COUNTRY, "districts", "groups", "interestCategories", "interests", "paying", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "positions", "religions", "retargetingGroups", "retargetingGroupsNot", "schoolFrom", "schoolTo", "schools", "sex", "Lcom/vk/sdk/api/ads/dto/AdsCriteriaSex;", "stations", "statuses", "streets", "travellers", "Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "uniFrom", "uniTo", "userBrowsers", "userDevices", "userOs", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/ads/dto/AdsCriteriaSex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAgeFrom", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAgeTo", "getApps", "()Ljava/lang/String;", "getAppsNot", "getBirthday", "getCampaignId", "getCities", "getCitiesNot", "getCountry", "getDistricts", "getGroups", "getId", "getInterestCategories", "getInterests", "getPaying", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getPositions", "getReligions", "getRetargetingGroups", "getRetargetingGroupsNot", "getSchoolFrom", "getSchoolTo", "getSchools", "getSex", "()Lcom/vk/sdk/api/ads/dto/AdsCriteriaSex;", "getStations", "getStatuses", "getStreets", "getTravellers", "()Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "getUniFrom", "getUniTo", "getUserBrowsers", "getUserDevices", "getUserOs", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/ads/dto/AdsCriteriaSex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/ads/dto/AdsTargSettings;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsTargSettings {
    @SerializedName("age_from")
    @Nullable
    private final Integer ageFrom;
    @SerializedName("age_to")
    @Nullable
    private final Integer ageTo;
    @SerializedName("apps")
    @Nullable
    private final String apps;
    @SerializedName("apps_not")
    @Nullable
    private final String appsNot;
    @SerializedName("birthday")
    @Nullable
    private final Integer birthday;
    @SerializedName("campaign_id")
    @Nullable
    private final Integer campaignId;
    @SerializedName("cities")
    @Nullable
    private final String cities;
    @SerializedName("cities_not")
    @Nullable
    private final String citiesNot;
    @SerializedName(UserDataStore.COUNTRY)
    @Nullable
    private final Integer country;
    @SerializedName("districts")
    @Nullable
    private final String districts;
    @SerializedName("groups")
    @Nullable
    private final String groups;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35677id;
    @SerializedName("interest_categories")
    @Nullable
    private final String interestCategories;
    @SerializedName("interests")
    @Nullable
    private final String interests;
    @SerializedName("paying")
    @Nullable
    private final BaseBoolInt paying;
    @SerializedName("positions")
    @Nullable
    private final String positions;
    @SerializedName("religions")
    @Nullable
    private final String religions;
    @SerializedName("retargeting_groups")
    @Nullable
    private final String retargetingGroups;
    @SerializedName("retargeting_groups_not")
    @Nullable
    private final String retargetingGroupsNot;
    @SerializedName("school_from")
    @Nullable
    private final Integer schoolFrom;
    @SerializedName("school_to")
    @Nullable
    private final Integer schoolTo;
    @SerializedName("schools")
    @Nullable
    private final String schools;
    @SerializedName("sex")
    @Nullable
    private final AdsCriteriaSex sex;
    @SerializedName("stations")
    @Nullable
    private final String stations;
    @SerializedName("statuses")
    @Nullable
    private final String statuses;
    @SerializedName("streets")
    @Nullable
    private final String streets;
    @SerializedName("travellers")
    @Nullable
    private final BasePropertyExists travellers;
    @SerializedName("uni_from")
    @Nullable
    private final Integer uniFrom;
    @SerializedName("uni_to")
    @Nullable
    private final Integer uniTo;
    @SerializedName("user_browsers")
    @Nullable
    private final String userBrowsers;
    @SerializedName("user_devices")
    @Nullable
    private final String userDevices;
    @SerializedName("user_os")
    @Nullable
    private final String userOs;

    public AdsTargSettings() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, null);
    }

    public AdsTargSettings(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str, @Nullable String str2, @Nullable Integer num5, @Nullable String str3, @Nullable String str4, @Nullable Integer num6, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable BaseBoolInt baseBoolInt, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable Integer num7, @Nullable Integer num8, @Nullable String str13, @Nullable AdsCriteriaSex adsCriteriaSex, @Nullable String str14, @Nullable String str15, @Nullable String str16, @Nullable BasePropertyExists basePropertyExists, @Nullable Integer num9, @Nullable Integer num10, @Nullable String str17, @Nullable String str18, @Nullable String str19) {
        this.f35677id = num;
        this.campaignId = num2;
        this.ageFrom = num3;
        this.ageTo = num4;
        this.apps = str;
        this.appsNot = str2;
        this.birthday = num5;
        this.cities = str3;
        this.citiesNot = str4;
        this.country = num6;
        this.districts = str5;
        this.groups = str6;
        this.interestCategories = str7;
        this.interests = str8;
        this.paying = baseBoolInt;
        this.positions = str9;
        this.religions = str10;
        this.retargetingGroups = str11;
        this.retargetingGroupsNot = str12;
        this.schoolFrom = num7;
        this.schoolTo = num8;
        this.schools = str13;
        this.sex = adsCriteriaSex;
        this.stations = str14;
        this.statuses = str15;
        this.streets = str16;
        this.travellers = basePropertyExists;
        this.uniFrom = num9;
        this.uniTo = num10;
        this.userBrowsers = str17;
        this.userDevices = str18;
        this.userOs = str19;
    }

    @Nullable
    public final Integer component1() {
        return this.f35677id;
    }

    @Nullable
    public final Integer component10() {
        return this.country;
    }

    @Nullable
    public final String component11() {
        return this.districts;
    }

    @Nullable
    public final String component12() {
        return this.groups;
    }

    @Nullable
    public final String component13() {
        return this.interestCategories;
    }

    @Nullable
    public final String component14() {
        return this.interests;
    }

    @Nullable
    public final BaseBoolInt component15() {
        return this.paying;
    }

    @Nullable
    public final String component16() {
        return this.positions;
    }

    @Nullable
    public final String component17() {
        return this.religions;
    }

    @Nullable
    public final String component18() {
        return this.retargetingGroups;
    }

    @Nullable
    public final String component19() {
        return this.retargetingGroupsNot;
    }

    @Nullable
    public final Integer component2() {
        return this.campaignId;
    }

    @Nullable
    public final Integer component20() {
        return this.schoolFrom;
    }

    @Nullable
    public final Integer component21() {
        return this.schoolTo;
    }

    @Nullable
    public final String component22() {
        return this.schools;
    }

    @Nullable
    public final AdsCriteriaSex component23() {
        return this.sex;
    }

    @Nullable
    public final String component24() {
        return this.stations;
    }

    @Nullable
    public final String component25() {
        return this.statuses;
    }

    @Nullable
    public final String component26() {
        return this.streets;
    }

    @Nullable
    public final BasePropertyExists component27() {
        return this.travellers;
    }

    @Nullable
    public final Integer component28() {
        return this.uniFrom;
    }

    @Nullable
    public final Integer component29() {
        return this.uniTo;
    }

    @Nullable
    public final Integer component3() {
        return this.ageFrom;
    }

    @Nullable
    public final String component30() {
        return this.userBrowsers;
    }

    @Nullable
    public final String component31() {
        return this.userDevices;
    }

    @Nullable
    public final String component32() {
        return this.userOs;
    }

    @Nullable
    public final Integer component4() {
        return this.ageTo;
    }

    @Nullable
    public final String component5() {
        return this.apps;
    }

    @Nullable
    public final String component6() {
        return this.appsNot;
    }

    @Nullable
    public final Integer component7() {
        return this.birthday;
    }

    @Nullable
    public final String component8() {
        return this.cities;
    }

    @Nullable
    public final String component9() {
        return this.citiesNot;
    }

    @NotNull
    public final AdsTargSettings copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str, @Nullable String str2, @Nullable Integer num5, @Nullable String str3, @Nullable String str4, @Nullable Integer num6, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable BaseBoolInt baseBoolInt, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable Integer num7, @Nullable Integer num8, @Nullable String str13, @Nullable AdsCriteriaSex adsCriteriaSex, @Nullable String str14, @Nullable String str15, @Nullable String str16, @Nullable BasePropertyExists basePropertyExists, @Nullable Integer num9, @Nullable Integer num10, @Nullable String str17, @Nullable String str18, @Nullable String str19) {
        return new AdsTargSettings(num, num2, num3, num4, str, str2, num5, str3, str4, num6, str5, str6, str7, str8, baseBoolInt, str9, str10, str11, str12, num7, num8, str13, adsCriteriaSex, str14, str15, str16, basePropertyExists, num9, num10, str17, str18, str19);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsTargSettings) {
            AdsTargSettings adsTargSettings = (AdsTargSettings) obj;
            return Intrinsics.areEqual(this.f35677id, adsTargSettings.f35677id) && Intrinsics.areEqual(this.campaignId, adsTargSettings.campaignId) && Intrinsics.areEqual(this.ageFrom, adsTargSettings.ageFrom) && Intrinsics.areEqual(this.ageTo, adsTargSettings.ageTo) && Intrinsics.areEqual(this.apps, adsTargSettings.apps) && Intrinsics.areEqual(this.appsNot, adsTargSettings.appsNot) && Intrinsics.areEqual(this.birthday, adsTargSettings.birthday) && Intrinsics.areEqual(this.cities, adsTargSettings.cities) && Intrinsics.areEqual(this.citiesNot, adsTargSettings.citiesNot) && Intrinsics.areEqual(this.country, adsTargSettings.country) && Intrinsics.areEqual(this.districts, adsTargSettings.districts) && Intrinsics.areEqual(this.groups, adsTargSettings.groups) && Intrinsics.areEqual(this.interestCategories, adsTargSettings.interestCategories) && Intrinsics.areEqual(this.interests, adsTargSettings.interests) && this.paying == adsTargSettings.paying && Intrinsics.areEqual(this.positions, adsTargSettings.positions) && Intrinsics.areEqual(this.religions, adsTargSettings.religions) && Intrinsics.areEqual(this.retargetingGroups, adsTargSettings.retargetingGroups) && Intrinsics.areEqual(this.retargetingGroupsNot, adsTargSettings.retargetingGroupsNot) && Intrinsics.areEqual(this.schoolFrom, adsTargSettings.schoolFrom) && Intrinsics.areEqual(this.schoolTo, adsTargSettings.schoolTo) && Intrinsics.areEqual(this.schools, adsTargSettings.schools) && this.sex == adsTargSettings.sex && Intrinsics.areEqual(this.stations, adsTargSettings.stations) && Intrinsics.areEqual(this.statuses, adsTargSettings.statuses) && Intrinsics.areEqual(this.streets, adsTargSettings.streets) && this.travellers == adsTargSettings.travellers && Intrinsics.areEqual(this.uniFrom, adsTargSettings.uniFrom) && Intrinsics.areEqual(this.uniTo, adsTargSettings.uniTo) && Intrinsics.areEqual(this.userBrowsers, adsTargSettings.userBrowsers) && Intrinsics.areEqual(this.userDevices, adsTargSettings.userDevices) && Intrinsics.areEqual(this.userOs, adsTargSettings.userOs);
        }
        return false;
    }

    @Nullable
    public final Integer getAgeFrom() {
        return this.ageFrom;
    }

    @Nullable
    public final Integer getAgeTo() {
        return this.ageTo;
    }

    @Nullable
    public final String getApps() {
        return this.apps;
    }

    @Nullable
    public final String getAppsNot() {
        return this.appsNot;
    }

    @Nullable
    public final Integer getBirthday() {
        return this.birthday;
    }

    @Nullable
    public final Integer getCampaignId() {
        return this.campaignId;
    }

    @Nullable
    public final String getCities() {
        return this.cities;
    }

    @Nullable
    public final String getCitiesNot() {
        return this.citiesNot;
    }

    @Nullable
    public final Integer getCountry() {
        return this.country;
    }

    @Nullable
    public final String getDistricts() {
        return this.districts;
    }

    @Nullable
    public final String getGroups() {
        return this.groups;
    }

    @Nullable
    public final Integer getId() {
        return this.f35677id;
    }

    @Nullable
    public final String getInterestCategories() {
        return this.interestCategories;
    }

    @Nullable
    public final String getInterests() {
        return this.interests;
    }

    @Nullable
    public final BaseBoolInt getPaying() {
        return this.paying;
    }

    @Nullable
    public final String getPositions() {
        return this.positions;
    }

    @Nullable
    public final String getReligions() {
        return this.religions;
    }

    @Nullable
    public final String getRetargetingGroups() {
        return this.retargetingGroups;
    }

    @Nullable
    public final String getRetargetingGroupsNot() {
        return this.retargetingGroupsNot;
    }

    @Nullable
    public final Integer getSchoolFrom() {
        return this.schoolFrom;
    }

    @Nullable
    public final Integer getSchoolTo() {
        return this.schoolTo;
    }

    @Nullable
    public final String getSchools() {
        return this.schools;
    }

    @Nullable
    public final AdsCriteriaSex getSex() {
        return this.sex;
    }

    @Nullable
    public final String getStations() {
        return this.stations;
    }

    @Nullable
    public final String getStatuses() {
        return this.statuses;
    }

    @Nullable
    public final String getStreets() {
        return this.streets;
    }

    @Nullable
    public final BasePropertyExists getTravellers() {
        return this.travellers;
    }

    @Nullable
    public final Integer getUniFrom() {
        return this.uniFrom;
    }

    @Nullable
    public final Integer getUniTo() {
        return this.uniTo;
    }

    @Nullable
    public final String getUserBrowsers() {
        return this.userBrowsers;
    }

    @Nullable
    public final String getUserDevices() {
        return this.userDevices;
    }

    @Nullable
    public final String getUserOs() {
        return this.userOs;
    }

    public int hashCode() {
        Integer num = this.f35677id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.campaignId;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.ageFrom;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.ageTo;
        int hashCode4 = (hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str = this.apps;
        int hashCode5 = (hashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.appsNot;
        int hashCode6 = (hashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num5 = this.birthday;
        int hashCode7 = (hashCode6 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str3 = this.cities;
        int hashCode8 = (hashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.citiesNot;
        int hashCode9 = (hashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num6 = this.country;
        int hashCode10 = (hashCode9 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str5 = this.districts;
        int hashCode11 = (hashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.groups;
        int hashCode12 = (hashCode11 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.interestCategories;
        int hashCode13 = (hashCode12 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.interests;
        int hashCode14 = (hashCode13 + (str8 == null ? 0 : str8.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.paying;
        int hashCode15 = (hashCode14 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        String str9 = this.positions;
        int hashCode16 = (hashCode15 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.religions;
        int hashCode17 = (hashCode16 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.retargetingGroups;
        int hashCode18 = (hashCode17 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.retargetingGroupsNot;
        int hashCode19 = (hashCode18 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Integer num7 = this.schoolFrom;
        int hashCode20 = (hashCode19 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.schoolTo;
        int hashCode21 = (hashCode20 + (num8 == null ? 0 : num8.hashCode())) * 31;
        String str13 = this.schools;
        int hashCode22 = (hashCode21 + (str13 == null ? 0 : str13.hashCode())) * 31;
        AdsCriteriaSex adsCriteriaSex = this.sex;
        int hashCode23 = (hashCode22 + (adsCriteriaSex == null ? 0 : adsCriteriaSex.hashCode())) * 31;
        String str14 = this.stations;
        int hashCode24 = (hashCode23 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.statuses;
        int hashCode25 = (hashCode24 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.streets;
        int hashCode26 = (hashCode25 + (str16 == null ? 0 : str16.hashCode())) * 31;
        BasePropertyExists basePropertyExists = this.travellers;
        int hashCode27 = (hashCode26 + (basePropertyExists == null ? 0 : basePropertyExists.hashCode())) * 31;
        Integer num9 = this.uniFrom;
        int hashCode28 = (hashCode27 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.uniTo;
        int hashCode29 = (hashCode28 + (num10 == null ? 0 : num10.hashCode())) * 31;
        String str17 = this.userBrowsers;
        int hashCode30 = (hashCode29 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.userDevices;
        int hashCode31 = (hashCode30 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.userOs;
        return hashCode31 + (str19 != null ? str19.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.f35677id;
        Integer num2 = this.campaignId;
        Integer num3 = this.ageFrom;
        Integer num4 = this.ageTo;
        String str = this.apps;
        String str2 = this.appsNot;
        Integer num5 = this.birthday;
        String str3 = this.cities;
        String str4 = this.citiesNot;
        Integer num6 = this.country;
        String str5 = this.districts;
        String str6 = this.groups;
        String str7 = this.interestCategories;
        String str8 = this.interests;
        BaseBoolInt baseBoolInt = this.paying;
        String str9 = this.positions;
        String str10 = this.religions;
        String str11 = this.retargetingGroups;
        String str12 = this.retargetingGroupsNot;
        Integer num7 = this.schoolFrom;
        Integer num8 = this.schoolTo;
        String str13 = this.schools;
        AdsCriteriaSex adsCriteriaSex = this.sex;
        String str14 = this.stations;
        String str15 = this.statuses;
        String str16 = this.streets;
        BasePropertyExists basePropertyExists = this.travellers;
        Integer num9 = this.uniFrom;
        Integer num10 = this.uniTo;
        String str17 = this.userBrowsers;
        String str18 = this.userDevices;
        String str19 = this.userOs;
        return "AdsTargSettings(id=" + num + ", campaignId=" + num2 + ", ageFrom=" + num3 + ", ageTo=" + num4 + ", apps=" + str + ", appsNot=" + str2 + ", birthday=" + num5 + ", cities=" + str3 + ", citiesNot=" + str4 + ", country=" + num6 + ", districts=" + str5 + ", groups=" + str6 + ", interestCategories=" + str7 + ", interests=" + str8 + ", paying=" + baseBoolInt + ", positions=" + str9 + ", religions=" + str10 + ", retargetingGroups=" + str11 + ", retargetingGroupsNot=" + str12 + ", schoolFrom=" + num7 + ", schoolTo=" + num8 + ", schools=" + str13 + ", sex=" + adsCriteriaSex + ", stations=" + str14 + ", statuses=" + str15 + ", streets=" + str16 + ", travellers=" + basePropertyExists + ", uniFrom=" + num9 + ", uniTo=" + num10 + ", userBrowsers=" + str17 + ", userDevices=" + str18 + ", userOs=" + str19 + ")";
    }

    public /* synthetic */ AdsTargSettings(Integer num, Integer num2, Integer num3, Integer num4, String str, String str2, Integer num5, String str3, String str4, Integer num6, String str5, String str6, String str7, String str8, BaseBoolInt baseBoolInt, String str9, String str10, String str11, String str12, Integer num7, Integer num8, String str13, AdsCriteriaSex adsCriteriaSex, String str14, String str15, String str16, BasePropertyExists basePropertyExists, Integer num9, Integer num10, String str17, String str18, String str19, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3, (i9 & 8) != 0 ? null : num4, (i9 & 16) != 0 ? null : str, (i9 & 32) != 0 ? null : str2, (i9 & 64) != 0 ? null : num5, (i9 & 128) != 0 ? null : str3, (i9 & 256) != 0 ? null : str4, (i9 & 512) != 0 ? null : num6, (i9 & 1024) != 0 ? null : str5, (i9 & 2048) != 0 ? null : str6, (i9 & 4096) != 0 ? null : str7, (i9 & 8192) != 0 ? null : str8, (i9 & 16384) != 0 ? null : baseBoolInt, (i9 & 32768) != 0 ? null : str9, (i9 & 65536) != 0 ? null : str10, (i9 & 131072) != 0 ? null : str11, (i9 & 262144) != 0 ? null : str12, (i9 & 524288) != 0 ? null : num7, (i9 & 1048576) != 0 ? null : num8, (i9 & 2097152) != 0 ? null : str13, (i9 & 4194304) != 0 ? null : adsCriteriaSex, (i9 & 8388608) != 0 ? null : str14, (i9 & 16777216) != 0 ? null : str15, (i9 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? null : str16, (i9 & 67108864) != 0 ? null : basePropertyExists, (i9 & 134217728) != 0 ? null : num9, (i9 & 268435456) != 0 ? null : num10, (i9 & 536870912) != 0 ? null : str17, (i9 & BasicMeasure.EXACTLY) != 0 ? null : str18, (i9 & Integer.MIN_VALUE) != 0 ? null : str19);
    }
}
