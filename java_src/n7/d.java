package n7;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.RequestBody;
/* loaded from: classes3.dex */
public class d {
    public static <T> Type a(Class<T> cls) {
        Type[] actualTypeArguments = ((ParameterizedType) cls.getGenericSuperclass()).getActualTypeArguments();
        Type type = actualTypeArguments[0];
        if (actualTypeArguments.length > 1) {
            if (type instanceof ParameterizedType) {
                return ((ParameterizedType) type).getActualTypeArguments()[0];
            }
            throw new IllegalStateException("没有填写泛型参数");
        }
        return type;
    }

    public static <R> Type b(Class<R> cls) {
        List<Type> g10 = g(cls);
        if (g10 != null && !g10.isEmpty()) {
            return g10.get(0);
        }
        return RequestBody.class;
    }

    public static <T> Type c(Class<T> cls) {
        return f((ParameterizedType) cls.getGenericSuperclass(), 0);
    }

    public static Class d(Type type, int i9) {
        if (type instanceof ParameterizedType) {
            return e((ParameterizedType) type, i9);
        }
        if (type instanceof TypeVariable) {
            return d(((TypeVariable) type).getBounds()[0], 0);
        }
        return (Class) type;
    }

    public static Class e(ParameterizedType parameterizedType, int i9) {
        Type type = parameterizedType.getActualTypeArguments()[i9];
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return (Class) ((GenericArrayType) type).getGenericComponentType();
        }
        if (type instanceof TypeVariable) {
            return d(((TypeVariable) type).getBounds()[0], 0);
        }
        return (Class) type;
    }

    public static Type f(ParameterizedType parameterizedType, int i9) {
        Type type = parameterizedType.getActualTypeArguments()[i9];
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        return type instanceof TypeVariable ? d(((TypeVariable) type).getBounds()[0], 0) : type;
    }

    public static <T> List<Type> g(Class<T> cls) {
        Type[] actualTypeArguments;
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof ParameterizedType) {
            ArrayList arrayList = new ArrayList();
            for (Type type : ((ParameterizedType) genericSuperclass).getActualTypeArguments()) {
                arrayList.add(type);
                if (type instanceof ParameterizedType) {
                    Collections.addAll(arrayList, ((ParameterizedType) type).getActualTypeArguments());
                }
            }
            return arrayList;
        }
        return null;
    }
}
