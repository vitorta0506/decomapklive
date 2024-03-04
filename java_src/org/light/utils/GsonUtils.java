package org.light.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes7.dex */
public final class GsonUtils {
    private static final String TAG = "org.light.utils.GsonUtils";
    private static Gson gson = new GsonBuilder().create();

    private GsonUtils() {
    }

    public static void confirmValueIsArray(JsonObject jsonObject, String str) {
        JsonElement jsonElement;
        if (jsonObject == null || str == null || (jsonElement = jsonObject.get(str)) == null || jsonElement.isJsonArray()) {
            return;
        }
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(jsonElement);
        jsonObject.remove(str);
        jsonObject.add(str, jsonArray);
    }

    public static double getDoubleUnsafe(JsonArray jsonArray, int i9) {
        return jsonArray.get(i9).getAsDouble();
    }

    public static float getFloatSafe(JsonArray jsonArray, int i9) {
        if (i9 >= jsonArray.size()) {
            return 0.0f;
        }
        return jsonArray.get(i9).getAsFloat();
    }

    public static float getFloatUnsafe(JsonArray jsonArray, int i9) {
        return jsonArray.get(i9).getAsFloat();
    }

    public static int getIntUnsafe(JsonArray jsonArray, int i9) {
        return jsonArray.get(i9).getAsInt();
    }

    public static JsonObject getJsonObjectUnsafe(JsonArray jsonArray, int i9) {
        return jsonArray.get(i9).getAsJsonObject();
    }

    public static String getStringUnsafe(JsonArray jsonArray, int i9) {
        return jsonArray.get(i9).getAsString();
    }

    public static JsonObject json2JsonObject(String str) {
        try {
            JsonElement parse = new JsonParser().parse(str);
            if (parse instanceof JsonObject) {
                return (JsonObject) parse;
            }
            return null;
        } catch (JsonSyntaxException unused) {
            return null;
        }
    }

    public static <T> T json2Obj(Gson gson2, String str, Type type) {
        try {
            return (T) gson2.fromJson(str, type);
        } catch (Exception unused) {
            return null;
        }
    }

    public static <T> List<T> json2ObjList(Gson gson2, String str, Class<T> cls) {
        JsonArray asJsonArray;
        ArrayList arrayList;
        int i9;
        ArrayList arrayList2 = null;
        try {
            asJsonArray = new JsonParser().parse(str).getAsJsonArray();
            arrayList = new ArrayList();
        } catch (Exception unused) {
        }
        try {
            int size = asJsonArray.size();
            for (i9 = 0; i9 < size; i9++) {
                arrayList.add(gson2.fromJson(asJsonArray.get(i9), (Class<Object>) cls));
            }
            return arrayList;
        } catch (Exception unused2) {
            arrayList2 = arrayList;
            return arrayList2;
        }
    }

    public static <T> String obj2Json(Gson gson2, T t10) {
        try {
            return gson2.toJson(t10);
        } catch (Exception unused) {
            return null;
        }
    }

    public static <T> String objList2Json(Gson gson2, List<T> list) {
        try {
            return gson2.toJson(list);
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean optBoolean(JsonObject jsonObject, String str) {
        return optBoolean(jsonObject, str, false);
    }

    public static double optDouble(JsonObject jsonObject, String str) {
        return optDouble(jsonObject, str, Double.NaN);
    }

    public static float optFloat(JsonObject jsonObject, String str) {
        return optFloat(jsonObject, str, Float.NaN);
    }

    public static int optInt(JsonObject jsonObject, String str) {
        return optInt(jsonObject, str, 0);
    }

    public static JsonArray optJsonArray(JsonObject jsonObject, String str) {
        try {
            JsonElement jsonElement = jsonObject.get(str);
            if (jsonElement instanceof JsonArray) {
                return (JsonArray) jsonElement;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JsonObject optJsonObject(JsonObject jsonObject, String str) {
        try {
            JsonElement jsonElement = jsonObject.get(str);
            if (jsonElement instanceof JsonObject) {
                return (JsonObject) jsonElement;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static long optLong(JsonObject jsonObject, String str) {
        return optLong(jsonObject, str, 0L);
    }

    public static String optString(JsonObject jsonObject, String str) {
        return optString(jsonObject, str, "");
    }

    public static int getIntUnsafe(JsonObject jsonObject, String str) {
        return jsonObject.get(str).getAsInt();
    }

    public static String getStringUnsafe(JsonObject jsonObject, String str) {
        return jsonObject.get(str).getAsString();
    }

    public static <T> T json2Obj(String str, Type type) {
        try {
            return (T) gson.fromJson(str, type);
        } catch (Exception unused) {
            return null;
        }
    }

    public static <T> String obj2Json(T t10) {
        return obj2Json(gson, t10);
    }

    public static <T> String objList2Json(List<T> list) {
        return objList2Json(gson, list);
    }

    public static boolean optBoolean(JsonObject jsonObject, String str, boolean z10) {
        try {
            JsonElement jsonElement = jsonObject.get(str);
            if (jsonElement instanceof JsonPrimitive) {
                return jsonElement.getAsBoolean();
            }
        } catch (Exception unused) {
        }
        return z10;
    }

    public static double optDouble(JsonObject jsonObject, String str, double d10) {
        try {
            JsonElement jsonElement = jsonObject.get(str);
            if (jsonElement instanceof JsonPrimitive) {
                return jsonElement.getAsDouble();
            }
        } catch (Exception unused) {
        }
        return d10;
    }

    public static float optFloat(JsonObject jsonObject, String str, float f10) {
        try {
            JsonElement jsonElement = jsonObject.get(str);
            if (jsonElement instanceof JsonPrimitive) {
                return jsonElement.getAsFloat();
            }
        } catch (Exception unused) {
        }
        return f10;
    }

    public static int optInt(JsonObject jsonObject, String str, int i9) {
        try {
            JsonElement jsonElement = jsonObject.get(str);
            if (jsonElement instanceof JsonPrimitive) {
                return jsonElement.getAsInt();
            }
        } catch (Exception unused) {
        }
        return i9;
    }

    public static long optLong(JsonObject jsonObject, String str, long j10) {
        try {
            JsonElement jsonElement = jsonObject.get(str);
            if (jsonElement instanceof JsonPrimitive) {
                return jsonElement.getAsLong();
            }
        } catch (Exception unused) {
        }
        return j10;
    }

    public static String optString(JsonObject jsonObject, String str, String str2) {
        try {
            JsonElement jsonElement = jsonObject.get(str);
            if (jsonElement instanceof JsonPrimitive) {
                return jsonElement.getAsString();
            }
        } catch (Exception unused) {
        }
        return str2;
    }

    public static <T> T json2Obj(Gson gson2, String str, Class<T> cls) {
        try {
            return (T) gson2.fromJson(str, (Class<Object>) cls);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static <T> String obj2Json(Gson gson2, T t10, Type type) {
        try {
            return gson2.toJson(t10, type);
        } catch (Exception unused) {
            return null;
        }
    }

    public static <T> T json2Obj(String str, Class<T> cls) {
        return (T) json2Obj(gson, str, (Class<Object>) cls);
    }

    public static <T> String obj2Json(T t10, Type type) {
        return obj2Json(gson, t10, type);
    }

    public static JsonArray optJsonArray(JsonArray jsonArray, int i9) {
        if (i9 >= 0) {
            try {
                if (i9 < jsonArray.size()) {
                    JsonElement jsonElement = jsonArray.get(i9);
                    if (jsonElement instanceof JsonArray) {
                        return (JsonArray) jsonElement;
                    }
                    return null;
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static JsonObject optJsonObject(JsonArray jsonArray, int i9) {
        if (i9 >= 0) {
            try {
                if (i9 < jsonArray.size()) {
                    JsonElement jsonElement = jsonArray.get(i9);
                    if (jsonElement instanceof JsonObject) {
                        return (JsonObject) jsonElement;
                    }
                    return null;
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static double optDouble(JsonArray jsonArray, int i9) {
        return optDouble(jsonArray, i9, Double.NaN);
    }

    public static int optInt(JsonArray jsonArray, int i9) {
        return optInt(jsonArray, i9, 0);
    }

    public static String optString(JsonArray jsonArray, int i9) {
        if (i9 >= 0) {
            try {
                if (i9 < jsonArray.size()) {
                    JsonElement jsonElement = jsonArray.get(i9);
                    return jsonElement instanceof JsonPrimitive ? jsonElement.getAsString() : "";
                }
                return "";
            } catch (Exception unused) {
                return "";
            }
        }
        return "";
    }

    public static <T> List<T> json2ObjList(String str, Class<T> cls) {
        return json2ObjList(gson, str, cls);
    }

    public static double optDouble(JsonArray jsonArray, int i9, double d10) {
        if (i9 >= 0) {
            try {
                if (i9 < jsonArray.size()) {
                    JsonElement jsonElement = jsonArray.get(i9);
                    if (jsonElement instanceof JsonPrimitive) {
                        return jsonElement.getAsDouble();
                    }
                }
            } catch (Exception unused) {
            }
        }
        return d10;
    }

    public static int optInt(JsonArray jsonArray, int i9, int i10) {
        if (i9 >= 0) {
            try {
                if (i9 < jsonArray.size()) {
                    JsonElement jsonElement = jsonArray.get(i9);
                    if (jsonElement instanceof JsonPrimitive) {
                        return jsonElement.getAsInt();
                    }
                }
            } catch (Exception unused) {
            }
        }
        return i10;
    }
}
