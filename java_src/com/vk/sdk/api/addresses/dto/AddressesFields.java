package com.vk.sdk.api.addresses.dto;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.share.internal.ShareConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/addresses/dto/AddressesFields;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ID", ShareConstants.TITLE, "ADDRESS", "ADDITIONAL_ADDRESS", "COUNTRY_ID", "CITY_ID", "METRO_STATION_ID", "LATITUDE", "LONGITUDE", "DISTANCE", "WORK_INFO_STATUS", "TIMETABLE", "PHONE", "TIME_OFFSET", "HAS_VK_TAXI", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum AddressesFields {
    ID("id"),
    TITLE("title"),
    ADDRESS(IntegrityManager.INTEGRITY_TYPE_ADDRESS),
    ADDITIONAL_ADDRESS("additional_address"),
    COUNTRY_ID("country_id"),
    CITY_ID("city_id"),
    METRO_STATION_ID("metro_station_id"),
    LATITUDE("latitude"),
    LONGITUDE("longitude"),
    DISTANCE("distance"),
    WORK_INFO_STATUS("work_info_status"),
    TIMETABLE("timetable"),
    PHONE("phone"),
    TIME_OFFSET("time_offset"),
    HAS_VK_TAXI("has_vk_taxi");
    
    @NotNull
    private final String value;

    AddressesFields(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
