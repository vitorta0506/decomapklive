package x8;

import com.google.gson.JsonObject;
import com.google.gson.internal.C$Gson$Types;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.GsonGetter;
import java.lang.reflect.Type;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, Type> f59639a;

    /* renamed from: b  reason: collision with root package name */
    private static final Type f59640b;

    static {
        HashMap<String, Type> hashMap = new HashMap<>();
        f59639a = hashMap;
        f59640b = C$Gson$Types.newParameterizedTypeWithOwner(null, c.class, a.class);
        hashMap.put("CMD_SEND_GIFT", b.class);
    }

    public static c<?> a(String str) {
        Type newParameterizedTypeWithOwner;
        try {
            LogUtils.i("HelloMessageModelFactory", str);
            JsonObject jsonObject = (JsonObject) GsonGetter.getGson().fromJson(str, (Class<Object>) JsonObject.class);
            if (jsonObject.has("helloCmd")) {
                Type type = f59639a.get(jsonObject.get("helloCmd").getAsString());
                if (type == null) {
                    newParameterizedTypeWithOwner = f59640b;
                } else {
                    newParameterizedTypeWithOwner = C$Gson$Types.newParameterizedTypeWithOwner(null, c.class, type);
                }
                return (c) GsonGetter.getGson().fromJson(jsonObject, newParameterizedTypeWithOwner);
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
