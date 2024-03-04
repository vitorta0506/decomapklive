package com.twitter.sdk.android.core;

import com.facebook.internal.ServerProtocol;
import com.google.gson.Gson;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class AuthTokenAdapter implements JsonSerializer<a>, JsonDeserializer<a> {

    /* renamed from: b  reason: collision with root package name */
    static final Map<String, Class<? extends a>> f35104b;

    /* renamed from: a  reason: collision with root package name */
    private final Gson f35105a = new Gson();

    static {
        HashMap hashMap = new HashMap();
        f35104b = hashMap;
        hashMap.put("oauth1a", TwitterAuthToken.class);
        hashMap.put("oauth2", OAuth2Token.class);
        hashMap.put("guest", GuestAuthToken.class);
    }

    static String b(Class<? extends a> cls) {
        for (Map.Entry<String, Class<? extends a>> entry : f35104b.entrySet()) {
            if (entry.getValue().equals(cls)) {
                return entry.getKey();
            }
        }
        return "";
    }

    @Override // com.google.gson.JsonDeserializer
    /* renamed from: a */
    public a deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        JsonObject asJsonObject = jsonElement.getAsJsonObject();
        String asString = asJsonObject.getAsJsonPrimitive(ServerProtocol.DIALOG_PARAM_AUTH_TYPE).getAsString();
        return (a) this.f35105a.fromJson(asJsonObject.get("auth_token"), (Class<Object>) f35104b.get(asString));
    }

    @Override // com.google.gson.JsonSerializer
    /* renamed from: c */
    public JsonElement serialize(a aVar, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(ServerProtocol.DIALOG_PARAM_AUTH_TYPE, b(aVar.getClass()));
        jsonObject.add("auth_token", this.f35105a.toJsonTree(aVar));
        return jsonObject;
    }
}
