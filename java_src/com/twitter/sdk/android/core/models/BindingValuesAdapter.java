package com.twitter.sdk.android.core.models;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.guochao.faceshow.utils.BaseConfig;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4.dex */
public class BindingValuesAdapter implements JsonSerializer<c>, JsonDeserializer<c> {
    @Override // com.google.gson.JsonDeserializer
    /* renamed from: a */
    public c deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (!jsonElement.isJsonObject()) {
            return new c();
        }
        Set<Map.Entry<String, JsonElement>> entrySet = jsonElement.getAsJsonObject().entrySet();
        HashMap hashMap = new HashMap(32);
        for (Map.Entry<String, JsonElement> entry : entrySet) {
            hashMap.put(entry.getKey(), b(entry.getValue().getAsJsonObject(), jsonDeserializationContext));
        }
        return new c(hashMap);
    }

    Object b(JsonObject jsonObject, JsonDeserializationContext jsonDeserializationContext) {
        JsonElement jsonElement = jsonObject.get("type");
        if (jsonElement == null || !jsonElement.isJsonPrimitive()) {
            return null;
        }
        String asString = jsonElement.getAsString();
        asString.hashCode();
        char c10 = 65535;
        switch (asString.hashCode()) {
            case -1838656495:
                if (asString.equals("STRING")) {
                    c10 = 0;
                    break;
                }
                break;
            case 2614219:
                if (asString.equals(BaseConfig.DB_TYPE_USER_NAME)) {
                    c10 = 1;
                    break;
                }
                break;
            case 69775675:
                if (asString.equals(ShareConstants.IMAGE_URL)) {
                    c10 = 2;
                    break;
                }
                break;
            case 782694408:
                if (asString.equals("BOOLEAN")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return jsonDeserializationContext.deserialize(jsonObject.get("string_value"), String.class);
            case 1:
                return jsonDeserializationContext.deserialize(jsonObject.get("user_value"), p.class);
            case 2:
                return jsonDeserializationContext.deserialize(jsonObject.get("image_value"), h.class);
            case 3:
                return jsonDeserializationContext.deserialize(jsonObject.get("boolean_value"), Boolean.class);
            default:
                return null;
        }
    }

    @Override // com.google.gson.JsonSerializer
    /* renamed from: c */
    public JsonElement serialize(c cVar, Type type, JsonSerializationContext jsonSerializationContext) {
        return null;
    }
}
