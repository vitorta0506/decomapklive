package com.guochao.faceshow.aaspring.utils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
@Deprecated
/* loaded from: classes3.dex */
public class MemoryCache {
    private static MemoryCache INSTANCE;
    private Map<String, Object> map = new HashMap();

    private MemoryCache() {
    }

    public static MemoryCache getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new MemoryCache();
        }
        return INSTANCE;
    }

    public <T> T clear(Class<T> cls) {
        return (T) this.map.remove(cls.getName());
    }

    public <T> T get(Class<T> cls) {
        return (T) this.map.get(cls.getName());
    }

    public <T> void put(T t10) {
        if (t10 != null) {
            this.map.put(t10.getClass().getName(), t10);
        }
    }

    public <T> T remove(String str) {
        if (this.map.containsKey(str)) {
            return (T) this.map.remove(str);
        }
        return null;
    }

    public void removeByStartKey(String str) {
        Iterator<String> it = this.map.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.startsWith(str)) {
                it.remove();
                this.map.remove(next);
            }
        }
    }

    public <T> T get(String str) {
        if (this.map.containsKey(str)) {
            return (T) this.map.get(str);
        }
        return null;
    }

    public void put(String str, Object obj) {
        this.map.put(str, obj);
    }
}
