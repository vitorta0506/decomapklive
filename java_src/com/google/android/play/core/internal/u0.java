package com.google.android.play.core.internal;

import java.lang.reflect.Field;
/* loaded from: classes2.dex */
public class u0 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f10616a;

    /* renamed from: b  reason: collision with root package name */
    private final Field f10617b;

    /* renamed from: c  reason: collision with root package name */
    private final Class f10618c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(Object obj, Field field, Class cls) {
        this.f10616a = obj;
        this.f10617b = field;
        this.f10618c = cls;
    }

    public final Object a() {
        try {
            return this.f10618c.cast(this.f10617b.get(this.f10616a));
        } catch (Exception e10) {
            throw new zzbx(String.format("Failed to get value of field %s of type %s on object of type %s", this.f10617b.getName(), this.f10616a.getClass().getName(), this.f10618c.getName()), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Field b() {
        return this.f10617b;
    }

    public final void c(Object obj) {
        try {
            this.f10617b.set(this.f10616a, obj);
        } catch (Exception e10) {
            throw new zzbx(String.format("Failed to set value of field %s of type %s on object of type %s", this.f10617b.getName(), this.f10616a.getClass().getName(), this.f10618c.getName()), e10);
        }
    }
}
