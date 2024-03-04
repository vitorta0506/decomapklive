package com.facebook.share.internal;

import com.facebook.share.model.CameraEffectArguments;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0014\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0007R2\u0010\u0003\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/facebook/share/internal/CameraEffectJSONUtility;", "", "()V", "SETTERS", "Ljava/util/HashMap;", "Ljava/lang/Class;", "Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;", "Lkotlin/collections/HashMap;", "convertToCameraEffectArguments", "Lcom/facebook/share/model/CameraEffectArguments;", "jsonObject", "Lorg/json/JSONObject;", "convertToJSON", "arguments", "Setter", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class CameraEffectJSONUtility {
    @NotNull
    public static final CameraEffectJSONUtility INSTANCE = new CameraEffectJSONUtility();
    @NotNull
    private static final HashMap<Class<?>, Setter> SETTERS;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bb\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001H&J\"\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001H&¨\u0006\f"}, d2 = {"Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;", "", "setOnArgumentsBuilder", "", "builder", "Lcom/facebook/share/model/CameraEffectArguments$Builder;", "key", "", "value", "setOnJSON", "json", "Lorg/json/JSONObject;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface Setter {
        void setOnArgumentsBuilder(@NotNull CameraEffectArguments.Builder builder, @NotNull String str, @Nullable Object obj) throws JSONException;

        void setOnJSON(@NotNull JSONObject jSONObject, @NotNull String str, @Nullable Object obj) throws JSONException;
    }

    static {
        HashMap<Class<?>, Setter> hashMapOf;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(String.class, new Setter() { // from class: com.facebook.share.internal.CameraEffectJSONUtility$SETTERS$1
            @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
            public void setOnArgumentsBuilder(@NotNull CameraEffectArguments.Builder builder, @NotNull String key, @Nullable Object obj) throws JSONException {
                Intrinsics.checkNotNullParameter(builder, "builder");
                Intrinsics.checkNotNullParameter(key, "key");
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.String");
                builder.putArgument(key, (String) obj);
            }

            @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
            public void setOnJSON(@NotNull JSONObject json, @NotNull String key, @Nullable Object obj) throws JSONException {
                Intrinsics.checkNotNullParameter(json, "json");
                Intrinsics.checkNotNullParameter(key, "key");
                json.put(key, obj);
            }
        }), TuplesKt.to(String[].class, new Setter() { // from class: com.facebook.share.internal.CameraEffectJSONUtility$SETTERS$2
            @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
            public void setOnArgumentsBuilder(@NotNull CameraEffectArguments.Builder builder, @NotNull String key, @Nullable Object obj) throws JSONException {
                Intrinsics.checkNotNullParameter(builder, "builder");
                Intrinsics.checkNotNullParameter(key, "key");
                throw new IllegalArgumentException("Unexpected type from JSON");
            }

            @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
            public void setOnJSON(@NotNull JSONObject json, @NotNull String key, @Nullable Object obj) throws JSONException {
                Intrinsics.checkNotNullParameter(json, "json");
                Intrinsics.checkNotNullParameter(key, "key");
                JSONArray jSONArray = new JSONArray();
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.String?>");
                String[] strArr = (String[]) obj;
                int i9 = 0;
                int length = strArr.length;
                while (i9 < length) {
                    String str = strArr[i9];
                    i9++;
                    jSONArray.put(str);
                }
                json.put(key, jSONArray);
            }
        }), TuplesKt.to(JSONArray.class, new Setter() { // from class: com.facebook.share.internal.CameraEffectJSONUtility$SETTERS$3
            @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
            public void setOnArgumentsBuilder(@NotNull CameraEffectArguments.Builder builder, @NotNull String key, @Nullable Object obj) throws JSONException {
                Intrinsics.checkNotNullParameter(builder, "builder");
                Intrinsics.checkNotNullParameter(key, "key");
                Objects.requireNonNull(obj, "null cannot be cast to non-null type org.json.JSONArray");
                JSONArray jSONArray = (JSONArray) obj;
                ArrayList arrayList = new ArrayList();
                int length = jSONArray.length();
                if (length > 0) {
                    int i9 = 0;
                    while (true) {
                        int i10 = i9 + 1;
                        Object obj2 = jSONArray.get(i9);
                        if (obj2 instanceof String) {
                            arrayList.add(obj2);
                            if (i10 >= length) {
                                break;
                            }
                            i9 = i10;
                        } else {
                            throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected type in an array: ", obj2.getClass()));
                        }
                    }
                }
                Object[] array = arrayList.toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                builder.putArgument(key, (String[]) array);
            }

            @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
            public void setOnJSON(@NotNull JSONObject json, @NotNull String key, @Nullable Object obj) throws JSONException {
                Intrinsics.checkNotNullParameter(json, "json");
                Intrinsics.checkNotNullParameter(key, "key");
                throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
            }
        }));
        SETTERS = hashMapOf;
    }

    private CameraEffectJSONUtility() {
    }

    @JvmStatic
    @Nullable
    public static final CameraEffectArguments convertToCameraEffectArguments(@Nullable JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        CameraEffectArguments.Builder builder = new CameraEffectArguments.Builder();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String key = keys.next();
            Object obj = jSONObject.get(key);
            if (obj != JSONObject.NULL) {
                Setter setter = SETTERS.get(obj.getClass());
                if (setter != null) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    setter.setOnArgumentsBuilder(builder, key, obj);
                } else {
                    throw new IllegalArgumentException(Intrinsics.stringPlus("Unsupported type: ", obj.getClass()));
                }
            }
        }
        return builder.build();
    }

    @JvmStatic
    @Nullable
    public static final JSONObject convertToJSON(@Nullable CameraEffectArguments cameraEffectArguments) throws JSONException {
        if (cameraEffectArguments == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : cameraEffectArguments.keySet()) {
            Object obj = cameraEffectArguments.get(str);
            if (obj != null) {
                Setter setter = SETTERS.get(obj.getClass());
                if (setter != null) {
                    setter.setOnJSON(jSONObject, str, obj);
                } else {
                    throw new IllegalArgumentException(Intrinsics.stringPlus("Unsupported type: ", obj.getClass()));
                }
            }
        }
        return jSONObject;
    }
}
