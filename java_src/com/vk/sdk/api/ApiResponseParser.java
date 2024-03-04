package com.vk.sdk.api;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bà\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0005H&¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vk/sdk/api/ApiResponseParser;", ExifInterface.GPS_DIRECTION_TRUE, "", "parseResponse", "json", "Lcom/google/gson/JsonElement;", "(Lcom/google/gson/JsonElement;)Ljava/lang/Object;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public interface ApiResponseParser<T> {
    T parseResponse(@NotNull JsonElement jsonElement);
}
