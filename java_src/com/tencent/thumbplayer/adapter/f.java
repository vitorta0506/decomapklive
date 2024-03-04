package com.tencent.thumbplayer.adapter;

import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.d.b;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class f implements InvocationHandler {

    /* renamed from: f  reason: collision with root package name */
    private static final Map<String, Class> f33694f;

    /* renamed from: a  reason: collision with root package name */
    private d f33695a;

    /* renamed from: b  reason: collision with root package name */
    private com.tencent.thumbplayer.tplayer.a f33696b;

    /* renamed from: c  reason: collision with root package name */
    private g f33697c = new g("TPPlayerAdapterProxy");

    /* renamed from: d  reason: collision with root package name */
    private a f33698d;

    /* renamed from: e  reason: collision with root package name */
    private Object f33699e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements c.f, c.g, c.h, c.i, c.j {
        private a() {
        }

        private void a(long j10, long j11, Object obj) {
            f.this.f33696b.b().a(new b.c());
        }

        private void b(long j10, long j11, Object obj) {
            f.this.f33696b.b().a(new b.C0345b());
        }

        private void c(long j10, long j11, Object obj) {
            b.s sVar = new b.s();
            sVar.a(((Long) obj).longValue());
            sVar.b((int) j11);
            f.this.f33696b.b().a(sVar);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.i
        public void a() {
            b.o oVar = new b.o();
            oVar.b(f.this.f33695a.d());
            oVar.a(f.this.f33695a.m());
            f.this.f33696b.b().a(oVar);
            f.this.f33697c.a();
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.f
        public void a(@TPCommonEnum.TPErrorType int i9, int i10, long j10, long j11) {
            b.i iVar = new b.i();
            iVar.c(i10);
            iVar.b(i9);
            TPGeneralPlayFlowParams u10 = f.this.f33695a.u();
            if (u10 == null) {
                u10 = new TPGeneralPlayFlowParams();
            }
            iVar.a(u10);
            TPDynamicStatisticParams c10 = f.this.f33695a.c(false);
            if (c10 == null) {
                c10 = new TPDynamicStatisticParams();
            }
            iVar.a(c10);
            f.this.f33696b.b().a(iVar);
            f.this.f33697c.a(i9, i10, j10, j11);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.h
        public void a(int i9, long j10, long j11, Object obj) {
            if (i9 == 4) {
                c(j10, j11, obj);
            } else if (i9 == 200) {
                a(j10, j11, obj);
            } else if (i9 == 201) {
                b(j10, j11, obj);
            }
            f.this.f33697c.a(i9, j10, j11, obj);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.g
        public void a(TPDrmInfo tPDrmInfo) {
            b.h hVar = new b.h();
            hVar.a(tPDrmInfo);
            f.this.f33696b.b().a(hVar);
            f.this.f33697c.a(tPDrmInfo);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.j
        public void c() {
            f.this.f33696b.b().a(new b.q());
            f.this.f33697c.c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f33694f = hashMap;
        hashMap.put("setOnPreparedListener", c.i.class);
        hashMap.put("setOnInfoListener", c.h.class);
        hashMap.put("setOnErrorListener", c.f.class);
        hashMap.put("setOnSeekCompleteListener", c.j.class);
    }

    public f(@NonNull d dVar, @NonNull com.tencent.thumbplayer.tplayer.a aVar) {
        a aVar2 = new a();
        this.f33698d = aVar2;
        this.f33695a = dVar;
        this.f33696b = aVar;
        dVar.a((c.g) aVar2);
    }

    private static Object a(Method method) {
        String name = method.getReturnType().getName();
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

    private void a(@NonNull Method method, Object[] objArr) {
        String name = method.getName();
        name.hashCode();
        char c10 = 65535;
        switch (name.hashCode()) {
            case -2055859787:
                if (name.equals("prepareAsync")) {
                    c10 = 0;
                    break;
                }
                break;
            case -906224877:
                if (name.equals("seekTo")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3540994:
                if (name.equals("stop")) {
                    c10 = 2;
                    break;
                }
                break;
            case 106440182:
                if (name.equals("pause")) {
                    c10 = 3;
                    break;
                }
                break;
            case 108404047:
                if (name.equals("reset")) {
                    c10 = 4;
                    break;
                }
                break;
            case 109757538:
                if (name.equals("start")) {
                    c10 = 5;
                    break;
                }
                break;
            case 205228463:
                if (name.equals("selectTrack")) {
                    c10 = 6;
                    break;
                }
                break;
            case 218603354:
                if (name.equals("setPlaySpeedRatio")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1090594823:
                if (name.equals("release")) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                a(objArr);
                return;
            case 1:
                g(objArr);
                return;
            case 2:
                d(objArr);
                return;
            case 3:
                c(objArr);
                return;
            case 4:
                e(objArr);
                return;
            case 5:
                b(objArr);
                return;
            case 6:
                i(objArr);
                return;
            case 7:
                h(objArr);
                return;
            case '\b':
                f(objArr);
                return;
            default:
                return;
        }
    }

    private void a(Object[] objArr) {
    }

    private void b(@NonNull Method method, Object[] objArr) {
        Map<String, Class> map = f33694f;
        if (map.containsKey(method.getName())) {
            try {
                this.f33697c.getClass().getMethod(method.getName(), map.get(method.getName())).invoke(this.f33697c, objArr[0]);
                objArr[0] = this.f33698d;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
    }

    private void b(Object[] objArr) {
        this.f33696b.b().a(new b.m());
    }

    private void c(Object[] objArr) {
        this.f33696b.b().a(new b.j());
    }

    private void d(Object[] objArr) {
        b.n nVar = new b.n();
        TPGeneralPlayFlowParams u10 = this.f33695a.u();
        if (u10 == null) {
            u10 = new TPGeneralPlayFlowParams();
        }
        nVar.a(u10);
        TPDynamicStatisticParams c10 = this.f33695a.c(false);
        if (c10 == null) {
            c10 = new TPDynamicStatisticParams();
        }
        nVar.a(c10);
        this.f33696b.b().a(nVar);
    }

    private void e(Object[] objArr) {
        b.l lVar = new b.l();
        TPGeneralPlayFlowParams u10 = this.f33695a.u();
        if (u10 == null) {
            u10 = new TPGeneralPlayFlowParams();
        }
        lVar.a(u10);
        TPDynamicStatisticParams c10 = this.f33695a.c(false);
        if (c10 == null) {
            c10 = new TPDynamicStatisticParams();
        }
        lVar.a(c10);
        this.f33696b.b().a(lVar);
    }

    private void f(Object[] objArr) {
        this.f33696b.b().a(new b.k());
    }

    private void g(Object[] objArr) {
        this.f33696b.b().a(new b.r());
    }

    private void h(Object[] objArr) {
        b.v vVar = new b.v();
        vVar.a(((Float) objArr[0]).floatValue());
        this.f33696b.b().a(vVar);
    }

    private void i(Object[] objArr) {
        b.t tVar = new b.t();
        tVar.b(((Integer) objArr[0]).intValue());
        tVar.a(((Long) objArr[1]).longValue());
        tVar.a(this.f33695a.r()[((Integer) objArr[0]).intValue()]);
        this.f33696b.b().a(tVar);
    }

    public synchronized Object a() {
        if (this.f33699e == null) {
            this.f33699e = Proxy.newProxyInstance(this.f33695a.getClass().getClassLoader(), this.f33695a.getClass().getInterfaces(), this);
        }
        return this.f33699e;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        StringBuilder sb2;
        String th2;
        try {
            a(method, objArr);
            b(method, objArr);
            return method.invoke(this.f33695a, objArr);
        } catch (InvocationTargetException e10) {
            if (e10.getTargetException() == null) {
                sb2 = new StringBuilder("invokeMethod ");
                sb2.append(method.getName());
                sb2.append(" has excecption: ");
                th2 = e10.toString();
                sb2.append(th2);
                TPLogUtil.e("TPPlayerAdapterProxy", sb2.toString());
                return a(method);
            }
            throw e10.getTargetException();
        } catch (Throwable th3) {
            sb2 = new StringBuilder("invokeMethod ");
            sb2.append(method.getName());
            sb2.append(" has excecption: ");
            th2 = th3.toString();
            sb2.append(th2);
            TPLogUtil.e("TPPlayerAdapterProxy", sb2.toString());
            return a(method);
        }
    }
}
