package com.tencent.xmagic.auth;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class Json {
    private static Object makeJson(Object obj) {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            JSONObject jSONObject = new JSONObject();
            for (Object obj2 : map.keySet()) {
                try {
                    jSONObject.put(obj2.toString(), makeJson(map.get(obj2)));
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            return jSONObject;
        }
        int i9 = 0;
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            JSONArray jSONArray = new JSONArray();
            int length = objArr.length;
            while (i9 < length) {
                jSONArray.put(makeJson(objArr[i9]));
                i9++;
            }
            return jSONArray;
        } else if (obj instanceof Iterable) {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj3 : (Iterable) obj) {
                jSONArray2.put(makeJson(obj3));
            }
            return jSONArray2;
        } else if (obj == null) {
            return "null";
        } else {
            if (obj.getClass().isPrimitive() || obj.getClass().isEnum() || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Boolean) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Double) || obj.getClass().getPackage().getName().startsWith("java.")) {
                return obj;
            }
            Field[] declaredFields = obj.getClass().getDeclaredFields();
            JSONObject jSONObject2 = new JSONObject();
            int length2 = declaredFields.length;
            while (i9 < length2) {
                Field field = declaredFields[i9];
                if (Modifier.isPublic(field.getModifiers())) {
                    try {
                        jSONObject2.put(field.getName(), makeJson(field.get(obj)));
                    } catch (IllegalAccessException | JSONException e11) {
                        e11.printStackTrace();
                    }
                }
                i9++;
            }
            return jSONObject2;
        }
    }

    public static JSONObject toJson(Object obj) {
        return (JSONObject) makeJson(obj);
    }

    public static String toJsonStr(Object obj) {
        try {
            return toJson(obj).toString(4);
        } catch (JSONException e10) {
            e10.printStackTrace();
            return "{}";
        }
    }
}
