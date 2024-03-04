package com.guochao.faceshow.aaspring.manager;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MMKVUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.UserBean;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Gson f16474a = new GsonBuilder().create();

    @Nullable
    public static <T> T a(String str, String str2, Type type) {
        UserBean c10;
        if (b8.e.g().c() != null) {
            str = str + c10.getUserId();
        }
        return (T) c(str, str2, type);
    }

    public static <T> T b(String str, Type type) {
        String str2 = SpUtils.getStr(BaseApplication.getInstance(), str);
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            return (T) f16474a.fromJson(str2, type);
        } catch (Exception unused) {
            return null;
        }
    }

    public static <T> T c(String str, String str2, Type type) {
        String string = MMKVUtils.getString(str, str2, "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return (T) f16474a.fromJson(string, type);
        } catch (Exception e10) {
            LogUtils.e("CacheManager", "getCache: ", e10);
            return null;
        }
    }

    @Deprecated
    public static <T> List<T> d(String str, Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        String str2 = SpUtils.getStr(BaseApplication.getInstance(), str);
        if (!str2.equals("") && str2.length() > 0) {
            Iterator<JsonElement> it = new JsonParser().parse(str2).getAsJsonArray().iterator();
            while (it.hasNext()) {
                arrayList.add(f16474a.fromJson(it.next(), (Class<Object>) cls));
            }
        }
        return arrayList;
    }

    public static <T> void e(String str, T t10) {
        SpUtils.setStr(BaseApplication.getInstance(), str, f16474a.toJson(t10));
    }

    public static <T> void f(String str, String str2, @NonNull T t10) {
        UserBean c10;
        if (b8.e.g().c() != null) {
            str = str + c10.getUserId();
        }
        g(str, str2, t10);
    }

    public static <T> void g(String str, String str2, @NonNull T t10) {
        MMKVUtils.putString(str, str2, f16474a.toJson(t10));
    }

    public static <T> void h(String str, List<T> list) {
        if (list == null) {
            return;
        }
        JsonArray jsonArray = new JsonArray();
        for (int i9 = 0; i9 < list.size(); i9++) {
            jsonArray.add(f16474a.toJsonTree(list.get(i9)));
        }
        SpUtils.setStr(BaseApplication.getInstance(), str, jsonArray.toString());
    }
}
