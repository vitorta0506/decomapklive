package com.tencent.thumbplayer.adapter.strategy.utils;

import android.text.TextUtils;
import android.util.SparseArray;
import com.tencent.thumbplayer.adapter.a.b.c;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.tplayer.TPOptionalIDInternal;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class TPNativeKeyMapUtil {
    private static final String REVERSE_MAP_NAME_SUFFIX = ".reverseMap";
    private static final String TAG = "TPNativeKeyMapUtil";
    private static final Map<String, Map<Number, Number>> sNameToMap = new ConcurrentHashMap();
    private static final Map<Class<?>, AtomicBoolean> sHasThisAnnotationInitMap = new ConcurrentHashMap();
    private static final SparseArray<c.a> sToNativeOptionalIdMap = new SparseArray<>();
    private static final SparseArray<String> sOptionalIdKeyToNameMap = new SparseArray<>();
    private static final AtomicBoolean sHasOptionalIdMapInit = new AtomicBoolean(false);

    private static <T extends Annotation> void buildBiDirectionMapForAnnotation(Class<T> cls) {
        AtomicBoolean atomicBoolean;
        TPLogUtil.i(TAG, "buildBiDirectionMapForAnnotation, clazz=".concat(String.valueOf(cls)));
        Map<Class<?>, AtomicBoolean> map = sHasThisAnnotationInitMap;
        synchronized (map) {
            atomicBoolean = map.get(cls);
            if (atomicBoolean == null) {
                atomicBoolean = new AtomicBoolean(false);
                map.put(cls, atomicBoolean);
            }
        }
        synchronized (atomicBoolean) {
            if (!atomicBoolean.get()) {
                searchClassToFillMap(cls);
                atomicBoolean.set(true);
                return;
            }
            TPLogUtil.i(TAG, "className=" + cls.getSimpleName() + " already init");
        }
    }

    private static void buildNativeInitConfigMap() {
        Field[] declaredFields;
        TPNativeKeyMap.MapInitConfig mapInitConfig;
        try {
            Class<?> cls = Class.forName(TPOptionalID.class.getName());
            for (Field field : cls.getDeclaredFields()) {
                if (field.getType().toString().equals("int") && (mapInitConfig = (TPNativeKeyMap.MapInitConfig) field.getAnnotation(TPNativeKeyMap.MapInitConfig.class)) != null) {
                    int i9 = field.getInt(cls);
                    sOptionalIdKeyToNameMap.put(i9, mapInitConfig.keyName());
                    if (mapInitConfig.value() == -1) {
                        sToNativeOptionalIdMap.put(i9, new c.a());
                    } else {
                        field.setAccessible(true);
                        sToNativeOptionalIdMap.put(i9, new c.a(mapInitConfig.type(), mapInitConfig.value()));
                    }
                }
            }
        } catch (ClassNotFoundException e10) {
            TPLogUtil.e(TAG, e10);
        } catch (IllegalAccessException e11) {
            TPLogUtil.e(TAG, e11);
        }
    }

    private static void buildNativeOptionalIdToMapInternal(Class<?> cls) {
        Field[] declaredFields;
        TPNativeKeyMap.MapOptionalId mapOptionalId;
        try {
            for (Field field : cls.getDeclaredFields()) {
                if (field.getType().toString().equals("int") && (mapOptionalId = (TPNativeKeyMap.MapOptionalId) field.getAnnotation(TPNativeKeyMap.MapOptionalId.class)) != null) {
                    int i9 = field.getInt(cls);
                    sOptionalIdKeyToNameMap.put(i9, mapOptionalId.keyName());
                    if (mapOptionalId.value() == -1) {
                        sToNativeOptionalIdMap.put(i9, new c.a());
                    } else {
                        field.setAccessible(true);
                        sToNativeOptionalIdMap.put(i9, new c.a(mapOptionalId.type(), mapOptionalId.value()));
                    }
                }
            }
        } catch (IllegalAccessException e10) {
            TPLogUtil.e(TAG, e10);
        }
    }

    private static void buildOptionalIdMap() {
        AtomicBoolean atomicBoolean = sHasOptionalIdMapInit;
        synchronized (atomicBoolean) {
            if (sToNativeOptionalIdMap.size() != 0) {
                return;
            }
            if (atomicBoolean.get()) {
                throw new IllegalStateException("构建Map错误，请查看【--keep class com.tencent.thumbplayer.api.** { *; }】是否加入反混淆");
            }
            buildNativeInitConfigMap();
            buildPublicToNativeOptionalIdMap();
            buildPrivateToNativeOptionalIdMap();
            atomicBoolean.set(true);
        }
    }

    private static void buildPrivateToNativeOptionalIdMap() {
        try {
            buildNativeOptionalIdToMapInternal(Class.forName(TPOptionalIDInternal.class.getName()));
        } catch (ClassNotFoundException e10) {
            TPLogUtil.e(TAG, e10);
        }
    }

    private static void buildPublicToNativeOptionalIdMap() {
        try {
            buildNativeOptionalIdToMapInternal(Class.forName(TPOptionalID.class.getName()));
        } catch (ClassNotFoundException e10) {
            TPLogUtil.e(TAG, e10);
        }
    }

    private static <T extends Annotation> void checkFillMapValidity(Class<T> cls, Map<Number, Number> map, Map<Number, Number> map2, Class<?> cls2, Number number, Number number2) {
        if (map.containsKey(number2)) {
            throw new IllegalStateException(cls2.getName() + " 配置了重复的成员变量，注解=" + cls.getName() + " 成员变量值=" + number2 + " 请查找一下使用这个注解@" + cls.getName() + "的哪两个成员变量值相等");
        } else if (map2.containsKey(number)) {
            throw new IllegalStateException(cls2.getName() + " 配置了重复的注解值，注解=" + cls.getName() + " 成员变量值=" + number2 + " 请查找一下@" + cls.getName() + "(这个值)在哪里重复了");
        }
    }

    public static c.a convertToNativeOptionalId(@TPCommonEnum.TPOptionalId int i9) {
        SparseArray<c.a> sparseArray = sToNativeOptionalIdMap;
        if (sparseArray.size() == 0) {
            buildOptionalIdMap();
        }
        return sparseArray.get(i9, new c.a());
    }

    public static <T extends Annotation> Set<Map.Entry<Number, Number>> getEntrySetOfToNativeMap(Class<T> cls) {
        return new HashSet(getMapForAnnotation(cls, true).entrySet());
    }

    public static <T extends Annotation> Set<Map.Entry<Number, Number>> getEntrySetOfToTPMap(Class<T> cls) {
        return new HashSet(getMapForAnnotation(cls, false).entrySet());
    }

    private static <T extends Annotation> Map<Number, Number> getMapForAnnotation(Class<T> cls, boolean z10) {
        String mapKey = getMapKey(cls, z10);
        Map<String, Map<Number, Number>> map = sNameToMap;
        Map<Number, Number> map2 = map.get(mapKey);
        if (map2 == null || map2.size() == 0) {
            buildBiDirectionMapForAnnotation(cls);
            map2 = map.get(mapKey);
        }
        if (((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)) == null) {
            throw new IllegalArgumentException(cls.getSimpleName() + "has not SearchConfig annotation");
        } else if (map2 == null || map2.size() == 0) {
            throw new IllegalStateException(cls.getSimpleName() + " is null after buildBiDirectionMap");
        } else {
            return map2;
        }
    }

    private static <T extends Annotation> String getMapKey(Class<T> cls, boolean z10) {
        String canonicalName = cls.getCanonicalName();
        if (z10) {
            return canonicalName;
        }
        return canonicalName + REVERSE_MAP_NAME_SUFFIX;
    }

    public static String getOptionalIdName(int i9) {
        if (!sHasOptionalIdMapInit.get()) {
            buildOptionalIdMap();
        }
        return sOptionalIdKeyToNameMap.get(i9, "");
    }

    public static void init() {
        long currentTimeMillis = System.currentTimeMillis();
        Class<?>[] declaredClasses = TPNativeKeyMap.class.getDeclaredClasses();
        TPLogUtil.i(TAG, "init BiDirectionMap for tp&native value");
        for (Class<?> cls : declaredClasses) {
            if (cls.isAnnotation() && Modifier.isPublic(cls.getModifiers()) && ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)) != null) {
                buildBiDirectionMapForAnnotation(cls);
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        TPLogUtil.i(TAG, "init cost time=" + (currentTimeMillis2 - currentTimeMillis));
    }

    private static <T extends Annotation> void searchClassToFillMap(Class<T> cls) {
        int i9;
        Annotation annotation;
        Integer valueOf;
        Integer num;
        boolean z10 = true;
        String mapKey = getMapKey(cls, true);
        Map<String, Map<Number, Number>> map = sNameToMap;
        Map<Number, Number> map2 = map.get(mapKey);
        String mapKey2 = getMapKey(cls, false);
        Map<Number, Number> map3 = map.get(mapKey2);
        if (map2 == null || map3 == null) {
            map2 = new HashMap<>();
            map.put(mapKey, map2);
            map3 = new HashMap<>();
            map.put(mapKey2, map3);
        }
        Map<Number, Number> map4 = map2;
        Map<Number, Number> map5 = map3;
        try {
            TPNativeKeyMap.SearchConfig searchConfig = (TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class);
            if (searchConfig == null) {
                throw new IllegalArgumentException(cls.getCanonicalName() + "has not SearchConfig annotation");
            }
            Class<?> searchClass = searchConfig.searchClass();
            Field[] declaredFields = searchClass.getDeclaredFields();
            int length = declaredFields.length;
            int i10 = 0;
            while (i10 < length) {
                Field field = declaredFields[i10];
                String str = "";
                Class<? extends Number> valueClass = searchConfig.valueClass();
                Class<? extends Number> cls2 = Integer.TYPE;
                if (valueClass == cls2) {
                    str = "int";
                } else if (searchConfig.valueClass() == Long.TYPE) {
                    str = "long";
                }
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("代码还没实现对" + searchConfig.valueClass().getName() + "的支持");
                }
                if (!field.getType().toString().equals(str) || (annotation = field.getAnnotation(cls)) == null) {
                    i9 = i10;
                } else {
                    field.setAccessible(z10);
                    int i11 = i10;
                    Method declaredMethod = cls.getDeclaredMethod("value", new Class[0]);
                    z10 = true;
                    declaredMethod.setAccessible(true);
                    if (searchConfig.valueClass() == cls2) {
                        valueOf = Integer.valueOf(field.getInt(searchClass));
                        num = (Integer) declaredMethod.invoke(annotation, new Object[0]);
                    } else if (searchConfig.valueClass() != Long.TYPE) {
                        throw new IllegalArgumentException("代码还没实现对" + searchConfig.valueClass().getName() + "的支持");
                    } else {
                        valueOf = Long.valueOf(field.getLong(searchClass));
                        num = (Long) declaredMethod.invoke(annotation, new Object[0]);
                    }
                    Number number = num;
                    i9 = i11;
                    checkFillMapValidity(cls, map4, map5, searchClass, number, valueOf);
                    map4.put(valueOf, number);
                    map5.put(number, valueOf);
                }
                i10 = i9 + 1;
            }
        } catch (IllegalAccessException e10) {
            TPLogUtil.e(TAG, e10);
        } catch (NoSuchMethodException e11) {
            TPLogUtil.e(TAG, e11);
            throw new IllegalStateException("com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap下所有元素需要加到混淆中, 并且每个MapXXX注解需要有value方法");
        } catch (InvocationTargetException e12) {
            TPLogUtil.e(TAG, e12);
        }
    }

    public static <T extends Annotation> int toNativeIntValue(Class<T> cls, int i9) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, true);
        if (mapForAnnotation.containsKey(Integer.valueOf(i9))) {
            return mapForAnnotation.get(Integer.valueOf(i9)).intValue();
        }
        TPLogUtil.e(TAG, "toNativeValue, tpValue=" + i9 + "return default value, clazz" + cls);
        return (int) ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).nativeDefValue();
    }

    public static <T extends Annotation> long toNativeLongValue(Class<T> cls, long j10) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, true);
        if (mapForAnnotation.containsKey(Long.valueOf(j10))) {
            return mapForAnnotation.get(Long.valueOf(j10)).longValue();
        }
        TPLogUtil.e(TAG, "toNativeValue, tpValue=" + j10 + "return default value, clazz" + cls);
        return ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).nativeDefValue();
    }

    public static <T extends Annotation> int toTPIntValue(Class<T> cls, int i9) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, false);
        if (mapForAnnotation.containsKey(Integer.valueOf(i9))) {
            return mapForAnnotation.get(Integer.valueOf(i9)).intValue();
        }
        TPLogUtil.i(TAG, "toTPValue, nativeValue=" + i9 + "return default value, clazz" + cls);
        return (int) ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).tpDefValue();
    }

    public static <T extends Annotation> long toTPLongValue(Class<T> cls, long j10) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, false);
        if (mapForAnnotation.containsKey(Long.valueOf(j10))) {
            return mapForAnnotation.get(Long.valueOf(j10)).longValue();
        }
        TPLogUtil.i(TAG, "toTPValue, nativeValue=" + j10 + "return default value, clazz" + cls);
        return ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).tpDefValue();
    }
}
