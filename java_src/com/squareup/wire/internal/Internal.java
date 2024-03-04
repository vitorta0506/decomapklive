package com.squareup.wire.internal;

import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.squareup.wire.ProtoAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class Internal {
    private Internal() {
    }

    public static void checkElementsNotNull(List<?> list) {
        Objects.requireNonNull(list, "list == null");
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (list.get(i9) == null) {
                throw new NullPointerException("Element at index " + i9 + " is null");
            }
        }
    }

    public static <T> List<T> copyOf(String str, List<T> list) {
        if (list != null) {
            if (list != Collections.emptyList() && !(list instanceof ImmutableList)) {
                return new ArrayList(list);
            }
            return new MutableOnWriteList(list);
        }
        throw new NullPointerException(str + " == null");
    }

    public static int countNonNull(Object obj, Object obj2) {
        return (obj != null ? 1 : 0) + (obj2 == null ? 0 : 1);
    }

    public static int countNonNull(Object obj, Object obj2, Object obj3) {
        return (obj != null ? 1 : 0) + (obj2 != null ? 1 : 0) + (obj3 == null ? 0 : 1);
    }

    public static int countNonNull(Object obj, Object obj2, Object obj3, Object obj4, Object... objArr) {
        int i9 = obj != null ? 1 : 0;
        if (obj2 != null) {
            i9++;
        }
        if (obj3 != null) {
            i9++;
        }
        if (obj4 != null) {
            i9++;
        }
        for (Object obj5 : objArr) {
            if (obj5 != null) {
                i9++;
            }
        }
        return i9;
    }

    public static boolean equals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <T> List<T> immutableCopyOf(String str, List<T> list) {
        if (list != null) {
            if (list instanceof MutableOnWriteList) {
                list = ((MutableOnWriteList) list).mutableList;
            }
            if (list == Collections.emptyList() || (list instanceof ImmutableList)) {
                return list;
            }
            ImmutableList immutableList = new ImmutableList(list);
            if (immutableList.contains(null)) {
                throw new IllegalArgumentException(str + ".contains(null)");
            }
            return immutableList;
        }
        throw new NullPointerException(str + " == null");
    }

    public static IllegalStateException missingRequiredFields(Object... objArr) {
        StringBuilder sb2 = new StringBuilder();
        int length = objArr.length;
        String str = "";
        for (int i9 = 0; i9 < length; i9 += 2) {
            if (objArr[i9] == null) {
                if (sb2.length() > 0) {
                    str = NotifyType.SOUND;
                }
                sb2.append("\n  ");
                sb2.append(objArr[i9 + 1]);
            }
        }
        throw new IllegalStateException("Required field" + str + " not set:" + ((Object) sb2));
    }

    public static <T> List<T> newMutableList() {
        return new MutableOnWriteList(Collections.emptyList());
    }

    public static <K, V> Map<K, V> newMutableMap() {
        return new LinkedHashMap();
    }

    public static <T> void redactElements(List<T> list, ProtoAdapter<T> protoAdapter) {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            list.set(i9, protoAdapter.redact(list.get(i9)));
        }
    }

    public static <T> void redactElements(Map<?, T> map, ProtoAdapter<T> protoAdapter) {
        for (Map.Entry<?, T> entry : map.entrySet()) {
            entry.setValue(protoAdapter.redact(entry.getValue()));
        }
    }

    public static void checkElementsNotNull(Map<?, ?> map) {
        Objects.requireNonNull(map, "map == null");
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Objects.requireNonNull(entry.getKey(), "map.containsKey(null)");
            if (entry.getValue() == null) {
                throw new NullPointerException("Value for key " + entry.getKey() + " is null");
            }
        }
    }

    public static <K, V> Map<K, V> copyOf(String str, Map<K, V> map) {
        if (map != null) {
            return new LinkedHashMap(map);
        }
        throw new NullPointerException(str + " == null");
    }

    public static <K, V> Map<K, V> immutableCopyOf(String str, Map<K, V> map) {
        if (map != null) {
            if (map.isEmpty()) {
                return Collections.emptyMap();
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            if (!linkedHashMap.containsKey(null)) {
                if (!linkedHashMap.containsValue(null)) {
                    return Collections.unmodifiableMap(linkedHashMap);
                }
                throw new IllegalArgumentException(str + ".containsValue(null)");
            }
            throw new IllegalArgumentException(str + ".containsKey(null)");
        }
        throw new NullPointerException(str + " == null");
    }
}
