package com.tencent.thumbplayer.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private String f34493a;

    /* renamed from: b  reason: collision with root package name */
    private a f34494b;

    /* renamed from: c  reason: collision with root package name */
    private Looper f34495c;

    /* renamed from: d  reason: collision with root package name */
    private m f34496d = new m();

    /* renamed from: e  reason: collision with root package name */
    private Object f34497e;

    /* renamed from: f  reason: collision with root package name */
    private Class<?> f34498f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends Handler {
        private a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            q.this.a(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        Object f34500a;

        /* renamed from: b  reason: collision with root package name */
        e f34501b;

        private b() {
        }
    }

    public q(String str, Looper looper, @NonNull Object obj) {
        this.f34493a = str;
        this.f34495c = looper;
        this.f34494b = new a(this.f34495c);
        this.f34497e = obj;
        Class<?> cls = obj.getClass();
        this.f34498f = cls;
        if (n.a(cls, 0)) {
            return;
        }
        String str2 = this.f34493a;
        TPLogUtil.e(str2, "Register " + this.f34498f.getName() + " @ThreadSwitch method failed, version: 2.31.0.139");
        throw new RuntimeException("register @ThreadSwitch method failed, player can not work");
    }

    private Object a(int i9, int i10, int i11, Object obj, boolean z10, boolean z11, long j10) {
        e eVar = new e();
        b bVar = new b();
        bVar.f34500a = obj;
        bVar.f34501b = eVar;
        b(i9, i10, i11, bVar, z10, z11, j10);
        return eVar.a(500L);
    }

    private Object a(String str, Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        String name = n.a(this.f34498f, str, a(obj2)).getReturnType().getName();
        if (name.equals(TypedValues.Custom.S_BOOLEAN)) {
            return Boolean.FALSE;
        }
        if (name.equals("int")) {
            return 0;
        }
        if (name.equals("long")) {
            return 0L;
        }
        if (name.equals(TypedValues.Custom.S_FLOAT)) {
            return Float.valueOf(0.0f);
        }
        return null;
    }

    private String a(int i9) {
        String b10 = n.b(this.f34498f, i9);
        if (TextUtils.isEmpty(b10) || b10.equals("unknown")) {
            return i9 + " not find";
        }
        return b10;
    }

    private void a(int i9, Object obj) {
        e eVar = obj instanceof b ? ((b) obj).f34501b : null;
        Method f10 = n.f(this.f34498f, i9);
        if (f10 == null) {
            TPLogUtil.e(this.f34493a, "invokeMethod, handle method name is empty, msg:".concat(String.valueOf(i9)));
            if (eVar != null) {
                eVar.a((Throwable) new RuntimeException("invokeMethod, handle method name is empty"));
                return;
            }
            return;
        }
        try {
            Object invoke = f10.getParameterTypes().length == 0 ? f10.invoke(this.f34497e, new Object[0]) : f10.invoke(this.f34497e, a(obj));
            if (eVar != null) {
                eVar.a(invoke);
            }
        } catch (InvocationTargetException e10) {
            String str = this.f34493a;
            TPLogUtil.e(str, "invokeMethod " + f10.getName() + " has excecption: " + e10.getTargetException().toString());
            if (eVar == null) {
                return;
            }
            if (e10.getTargetException() instanceof IllegalArgumentException) {
                eVar.a((Throwable) new IllegalArgumentException("invokeMethod " + f10.getName() + " failed, params invalid", e10.getCause()));
            } else if (!(e10.getTargetException() instanceof IllegalStateException)) {
                eVar.a(e10.getTargetException());
            } else {
                eVar.a((Throwable) new IllegalStateException("invokeMethod " + f10.getName() + " failed, state invalid", e10.getCause()));
            }
        } catch (Exception e11) {
            String str2 = this.f34493a;
            TPLogUtil.e(str2, "invokeMethod " + f10.getName() + " has excecption: " + e11.toString());
            if (eVar != null) {
                eVar.a((Throwable) e11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Message message) {
        if (this.f34497e == null) {
            TPLogUtil.e(this.f34493a, "handle listener is null, return");
        } else {
            a(message.what, message.obj);
        }
    }

    private boolean a() {
        return Looper.myLooper() == this.f34495c;
    }

    private Object[] a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof b) {
            Object obj2 = ((b) obj).f34500a;
            if (obj2 == null) {
                return null;
            }
            return (Object[]) obj2;
        }
        return (Object[]) obj;
    }

    private boolean b(int i9, int i10, int i11, Object obj, boolean z10, boolean z11, long j10) {
        String str;
        StringBuilder sb2;
        String str2;
        if (this.f34494b == null) {
            str = this.f34493a;
            sb2 = new StringBuilder();
            sb2.append(a(i9));
            str2 = " , send failed , handler null";
        } else if (z10 && obj == null) {
            str = this.f34493a;
            sb2 = new StringBuilder();
            sb2.append(a(i9));
            str2 = ", send failed , params null";
        } else if (this.f34495c.getThread().isAlive()) {
            if (!a()) {
                this.f34496d.readLock().lock();
            }
            if (z11) {
                this.f34494b.removeMessages(i9);
            }
            Message obtainMessage = this.f34494b.obtainMessage();
            obtainMessage.what = i9;
            obtainMessage.arg1 = i10;
            obtainMessage.arg2 = i11;
            obtainMessage.obj = obj;
            if (a()) {
                a(obtainMessage);
                return true;
            }
            this.f34494b.sendMessageDelayed(obtainMessage, j10);
            this.f34496d.readLock().unlock();
            return true;
        } else {
            str = this.f34493a;
            sb2 = new StringBuilder();
            sb2.append(a(i9));
            str2 = ", send failed , thread had dead";
        }
        sb2.append(str2);
        TPLogUtil.e(str, sb2.toString());
        return false;
    }

    public Object a(String str, Object obj) {
        return a(str, b(str, obj), obj);
    }

    public Object b(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            TPLogUtil.e(this.f34493a, "dealThreadSwitch failed , methodName is null");
            throw new RuntimeException("dealThreadSwitch failed , methodName is null");
        }
        int b10 = n.b(this.f34498f, str, a(obj));
        if (b10 < 0) {
            TPLogUtil.e(this.f34493a, "dealThreadSwitch failed , not match method:".concat(String.valueOf(str)));
            throw new RuntimeException("dealThreadSwitch failed , not match method:".concat(String.valueOf(str)));
        }
        boolean d10 = n.d(this.f34498f, b10);
        boolean e10 = n.e(this.f34498f, b10);
        if (n.c(this.f34498f, b10)) {
            return a(b10, 0, 0, obj, e10, d10, 0L);
        }
        b(b10, 0, 0, obj, e10, d10, 0L);
        return null;
    }
}
