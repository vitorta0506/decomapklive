package com.vk.sdk.api;

import com.facebook.internal.ServerProtocol;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.newsfeed.dto.NewsfeedNewsfeedItem;
import com.vk.sdk.api.users.dto.UsersSubscriptionsItem;
import java.lang.reflect.Type;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/GsonHolder;", "", "()V", "gson", "Lcom/google/gson/Gson;", "getGson", "()Lcom/google/gson/Gson;", "gson$delegate", "Lkotlin/Lazy;", "BooleanGsonSerializer", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class GsonHolder {
    @NotNull
    public static final GsonHolder INSTANCE = new GsonHolder();
    @NotNull
    private static final Lazy gson$delegate;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J-\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0002\u0010\fJ+\u0010\r\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/GsonHolder$BooleanGsonSerializer;", "Lcom/google/gson/JsonDeserializer;", "", "Lcom/google/gson/JsonSerializer;", "()V", "deserialize", "json", "Lcom/google/gson/JsonElement;", "typeOfT", "Ljava/lang/reflect/Type;", "context", "Lcom/google/gson/JsonDeserializationContext;", "(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Boolean;", "serialize", "src", "typeOfSrc", "Lcom/google/gson/JsonSerializationContext;", "(Ljava/lang/Boolean;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class BooleanGsonSerializer implements JsonDeserializer<Boolean>, JsonSerializer<Boolean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.JsonDeserializer
        @Nullable
        public Boolean deserialize(@Nullable JsonElement jsonElement, @Nullable Type type, @Nullable JsonDeserializationContext jsonDeserializationContext) {
            if (jsonElement instanceof JsonPrimitive) {
                String asString = ((JsonPrimitive) jsonElement).getAsString();
                return Boolean.valueOf(Intrinsics.areEqual(asString, "1") || Intrinsics.areEqual(asString, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
            }
            return null;
        }

        @Override // com.google.gson.JsonSerializer
        @NotNull
        public JsonElement serialize(@Nullable Boolean bool, @Nullable Type type, @Nullable JsonSerializationContext jsonSerializationContext) {
            return new JsonPrimitive(Integer.valueOf(Intrinsics.areEqual(bool, Boolean.TRUE) ? 1 : 0));
        }
    }

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Gson>() { // from class: com.vk.sdk.api.GsonHolder$gson$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Gson invoke() {
                return new GsonBuilder().registerTypeAdapter(UsersSubscriptionsItem.class, new UsersSubscriptionsItem.Deserializer()).registerTypeAdapter(NewsfeedNewsfeedItem.class, new NewsfeedNewsfeedItem.Deserializer()).registerTypeAdapter(UserId.class, new UserId.GsonSerializer(false)).registerTypeAdapter(Boolean.class, new GsonHolder.BooleanGsonSerializer()).registerTypeAdapter(Boolean.TYPE, new GsonHolder.BooleanGsonSerializer()).create();
            }
        });
        gson$delegate = lazy;
    }

    private GsonHolder() {
    }

    @NotNull
    public final Gson getGson() {
        Object value = gson$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-gson>(...)");
        return (Gson) value;
    }
}
