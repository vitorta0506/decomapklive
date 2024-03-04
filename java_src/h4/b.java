package h4;

import android.os.IBinder;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.p;
import h4.a;
import java.lang.reflect.Field;
/* loaded from: classes2.dex */
public final class b<T> extends a.AbstractBinderC0438a {

    /* renamed from: a  reason: collision with root package name */
    private final Object f40543a;

    private b(Object obj) {
        this.f40543a = obj;
    }

    @NonNull
    public static <T> T D0(@NonNull a aVar) {
        if (aVar instanceof b) {
            return (T) ((b) aVar).f40543a;
        }
        IBinder asBinder = aVar.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i9 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i9++;
                field = field2;
            }
        }
        if (i9 == 1) {
            p.j(field);
            if (!field.isAccessible()) {
                field.setAccessible(true);
                try {
                    return (T) field.get(asBinder);
                } catch (IllegalAccessException e10) {
                    throw new IllegalArgumentException("Could not access the field in remoteBinder.", e10);
                } catch (NullPointerException e11) {
                    throw new IllegalArgumentException("Binder object is null.", e11);
                }
            }
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        throw new IllegalArgumentException("Unexpected number of IObjectWrapper declared fields: " + declaredFields.length);
    }

    @NonNull
    public static <T> a E0(@NonNull T t10) {
        return new b(t10);
    }
}
