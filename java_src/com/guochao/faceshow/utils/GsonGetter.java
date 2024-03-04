package com.guochao.faceshow.utils;

import com.google.gson.Gson;
/* loaded from: classes4.dex */
public class GsonGetter {
    private static Gson gson;
    private static final Object syncRoot = new Object();

    public static Gson getGson() {
        if (gson == null) {
            synchronized (syncRoot) {
                if (gson == null) {
                    gson = new Gson();
                }
            }
        }
        return gson;
    }
}
