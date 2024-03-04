package com.meizu.cloud.pushsdk.b.b;

import com.meizu.cloud.pushinternal.DebugLogger;
import java.lang.reflect.Constructor;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final a f28214a;

    /* renamed from: b  reason: collision with root package name */
    private final Class<?>[] f28215b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, Class<?>... clsArr) {
        this.f28214a = aVar;
        this.f28215b = clsArr;
    }

    public <T> d<T> a(Object... objArr) {
        d<T> dVar = new d<>();
        try {
            Constructor<?> declaredConstructor = this.f28214a.a().getDeclaredConstructor(this.f28215b);
            declaredConstructor.setAccessible(true);
            dVar.f28221b = (T) declaredConstructor.newInstance(objArr);
            dVar.f28220a = true;
        } catch (Exception e10) {
            DebugLogger.e("ReflectConstructor", "newInstance", e10);
        }
        return dVar;
    }
}
