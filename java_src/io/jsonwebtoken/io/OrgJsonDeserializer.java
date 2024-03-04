package io.jsonwebtoken.io;

import io.jsonwebtoken.lang.Assert;
import io.jsonwebtoken.lang.Strings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes6.dex */
public class OrgJsonDeserializer implements Deserializer<Object> {
    private Object convertIfNecessary(Object obj) {
        if (JSONObject.NULL.equals(obj)) {
            return null;
        }
        if (obj instanceof JSONArray) {
            return toList((JSONArray) obj);
        }
        return obj instanceof JSONObject ? toMap((JSONObject) obj) : obj;
    }

    private Object parse(String str) throws JSONException {
        JSONTokener jSONTokener = new JSONTokener(str);
        char nextClean = jSONTokener.nextClean();
        jSONTokener.back();
        if (nextClean == '{') {
            return toMap(new JSONObject(jSONTokener));
        }
        if (nextClean == '[') {
            return toList(new JSONArray(jSONTokener));
        }
        return convertIfNecessary(jSONTokener.nextValue());
    }

    private List<Object> toList(JSONArray jSONArray) {
        int length = jSONArray.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i9 = 0; i9 < length; i9++) {
            arrayList.add(convertIfNecessary(jSONArray.get(i9)));
        }
        return arrayList;
    }

    private Map<String, Object> toMap(JSONObject jSONObject) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            linkedHashMap.put(next, convertIfNecessary(jSONObject.get(next)));
        }
        return linkedHashMap;
    }

    @Override // io.jsonwebtoken.io.Deserializer
    public Object deserialize(byte[] bArr) throws DeserializationException {
        Assert.notNull(bArr, "JSON byte array cannot be null");
        if (bArr.length != 0) {
            try {
                return parse(new String(bArr, Strings.UTF_8));
            } catch (Exception e10) {
                throw new DeserializationException("Invalid JSON: " + e10.getMessage(), e10);
            }
        }
        throw new DeserializationException("Invalid JSON: zero length byte array.");
    }
}
