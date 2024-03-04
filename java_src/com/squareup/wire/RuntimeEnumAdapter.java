package com.squareup.wire;

import com.squareup.wire.WireEnum;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class RuntimeEnumAdapter<E extends WireEnum> extends EnumAdapter<E> {
    private Method fromValueMethod;
    private final Class<E> type;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RuntimeEnumAdapter(Class<E> cls) {
        super(cls);
        this.type = cls;
    }

    private Method getFromValueMethod() {
        Method method = this.fromValueMethod;
        if (method != null) {
            return method;
        }
        try {
            Method method2 = this.type.getMethod("fromValue", Integer.TYPE);
            this.fromValueMethod = method2;
            return method2;
        } catch (NoSuchMethodException e10) {
            throw new AssertionError(e10);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof RuntimeEnumAdapter) && ((RuntimeEnumAdapter) obj).type == this.type;
    }

    @Override // com.squareup.wire.EnumAdapter
    protected E fromValue(int i9) {
        try {
            return (E) getFromValueMethod().invoke(null, Integer.valueOf(i9));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new AssertionError(e10);
        }
    }

    public int hashCode() {
        return this.type.hashCode();
    }
}
