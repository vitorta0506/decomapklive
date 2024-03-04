package com.tencent.thumbplayer.tplayer;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.n;
import com.tencent.thumbplayer.utils.q;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
/* loaded from: classes4.dex */
public class d implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    private b f34379a;

    /* renamed from: b  reason: collision with root package name */
    private q f34380b;

    public d(b bVar) {
        this.f34379a = bVar;
        this.f34380b = new q(bVar.b(), this.f34379a.a(), this.f34379a);
    }

    private int a(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    private boolean a(Method method, Object[] objArr) {
        return n.a(this.f34379a.getClass(), method.getName(), objArr) != null;
    }

    private Object b(Method method, Object[] objArr) {
        String name = method.getName();
        if (name.equals("setDataSource")) {
            objArr = b(objArr);
        }
        if (method.getReturnType().getName().equals("void")) {
            this.f34380b.b(name, objArr);
            return null;
        }
        Object a10 = this.f34380b.a(name, objArr);
        String b10 = this.f34379a.b();
        TPLogUtil.i(b10, "dealThreadSwitch: " + name + ", var count:" + a(objArr) + ", result:" + a10);
        return a10;
    }

    private Object[] b(Object[] objArr) {
        String b10;
        StringBuilder sb2;
        if (objArr[0] != null && (objArr[0] instanceof ParcelFileDescriptor)) {
            try {
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) objArr[0];
                objArr[0] = ParcelFileDescriptor.fromFd(parcelFileDescriptor.detachFd());
                parcelFileDescriptor.close();
            } catch (Exception e10) {
                e = e10;
                b10 = this.f34379a.b();
                sb2 = new StringBuilder("setDataSource, fromFd has exception:");
                sb2.append(e.toString());
                TPLogUtil.e(b10, sb2.toString());
                return objArr;
            }
        } else if (objArr[0] != null && (objArr[0] instanceof AssetFileDescriptor)) {
            try {
                AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) objArr[0];
                objArr[0] = new AssetFileDescriptor(ParcelFileDescriptor.fromFd(assetFileDescriptor.getParcelFileDescriptor().detachFd()), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
                assetFileDescriptor.close();
            } catch (Exception e11) {
                e = e11;
                b10 = this.f34379a.b();
                sb2 = new StringBuilder("setDataSource, fromFd has exception:");
                sb2.append(e.toString());
                TPLogUtil.e(b10, sb2.toString());
                return objArr;
            }
        }
        return objArr;
    }

    public Object a() {
        return Proxy.newProxyInstance(this.f34379a.getClass().getClassLoader(), this.f34379a.getClass().getInterfaces(), this);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        return !a(method, objArr) ? method.invoke(this.f34379a, objArr) : b(method, objArr);
    }
}
