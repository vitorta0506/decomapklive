package com.vk.api.sdk.internal;

import android.util.JsonReader;
import android.util.JsonToken;
import android.util.MalformedJsonException;
import java.io.StringReader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¨\u0006\t"}, d2 = {"Lcom/vk/api/sdk/internal/JsonUtils;", "", "()V", "containsElement", "", "jsonString", "", "name", "containsElementImpl", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class JsonUtils {
    @NotNull
    public static final JsonUtils INSTANCE = new JsonUtils();

    private JsonUtils() {
    }

    private final boolean containsElementImpl(String str, String str2) {
        JsonToken peek;
        if (str.length() == 0) {
            return false;
        }
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        if (jsonReader.hasNext() && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
            jsonReader.beginObject();
            while (jsonReader.hasNext() && (peek = jsonReader.peek()) != JsonToken.END_DOCUMENT) {
                if (peek != JsonToken.NAME) {
                    jsonReader.skipValue();
                } else if (Intrinsics.areEqual(str2, jsonReader.nextName())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean containsElement(@NotNull String jsonString, @NotNull String name) {
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            return containsElementImpl(jsonString, name);
        } catch (MalformedJsonException e10) {
            throw new MalformedJsonException(((Object) e10.getMessage()) + ". Json: '" + jsonString + '\'');
        }
    }
}
