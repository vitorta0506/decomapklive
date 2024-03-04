package com.tencent.thumbplayer.c;

import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.d.b;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
/* loaded from: classes4.dex */
public class d implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    private e f33813a;

    /* renamed from: b  reason: collision with root package name */
    private com.tencent.thumbplayer.tplayer.a f33814b;

    /* renamed from: c  reason: collision with root package name */
    private ITPPlayListener f33815c;

    /* renamed from: d  reason: collision with root package name */
    private a f33816d = new a();

    /* renamed from: e  reason: collision with root package name */
    private Object f33817e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ITPPlayListener {
        private a() {
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getAdvRemainTime() {
            return d.this.f33815c.getAdvRemainTime();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public String getContentType(int i9, String str) {
            return d.this.f33815c.getContentType(i9, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int getCurrentPlayClipNo() {
            return d.this.f33815c.getCurrentPlayClipNo();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPlayOffset() {
            return d.this.f33815c.getCurrentPlayOffset();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPosition() {
            return d.this.f33815c.getCurrentPosition();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public String getDataFilePath(int i9, String str) {
            return d.this.f33815c.getDataFilePath(i9, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getDataTotalSize(int i9, String str) {
            return d.this.f33815c.getDataTotalSize(i9, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(long j10) {
            return d.this.f33815c.getPlayInfo(j10);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(String str) {
            return d.this.f33815c.getPlayInfo(str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getPlayerBufferLength() {
            return d.this.f33815c.getPlayerBufferLength();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlExpired(Map<String, String> map) {
            d.this.f33815c.onDownloadCdnUrlExpired(map);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
            b.d dVar = new b.d();
            dVar.a(str2);
            dVar.b(str3);
            d.this.f33814b.b().a(dVar);
            d.this.f33815c.onDownloadCdnUrlInfoUpdate(str, str2, str3, str4);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlUpdate(String str) {
            d.this.f33815c.onDownloadCdnUrlUpdate(str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadError(int i9, int i10, String str) {
            d.this.f33815c.onDownloadError(i9, i10, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadFinish() {
            d.this.f33815c.onDownloadFinish();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProgressUpdate(int i9, int i10, long j10, long j11, String str) {
            b.e eVar = new b.e();
            eVar.b(i10 * 8);
            d.this.f33814b.b().a(eVar);
            d.this.f33815c.onDownloadProgressUpdate(i9, i10, j10, j11, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProtocolUpdate(String str, String str2) {
            b.f fVar = new b.f();
            fVar.b(str);
            fVar.a(str2);
            d.this.f33814b.b().a(fVar);
            d.this.f33815c.onDownloadProtocolUpdate(str, str2);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadStatusUpdate(int i9) {
            d.this.f33815c.onDownloadStatusUpdate(i9);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object onPlayCallback(int i9, Object obj, Object obj2, Object obj3, Object obj4) {
            return d.this.f33815c.onPlayCallback(i9, obj, obj2, obj3, obj4);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onReadData(int i9, String str, long j10, long j11) {
            return d.this.f33815c.onReadData(i9, str, j10, j11);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onStartReadData(int i9, String str, long j10, long j11) {
            return d.this.f33815c.onStartReadData(i9, str, j10, j11);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onStopReadData(int i9, String str, int i10) {
            return d.this.f33815c.onStopReadData(i9, str, i10);
        }
    }

    public d(@NonNull e eVar, @NonNull com.tencent.thumbplayer.tplayer.a aVar) {
        this.f33813a = eVar;
        this.f33814b = aVar;
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

    private void a(Method method, Object[] objArr) {
        String name = method.getName();
        name.hashCode();
        if (name.equals("startDownloadPlayByAsset") || name.equals("startDownloadPlay")) {
            a(objArr);
        }
    }

    private void a(Object[] objArr) {
        this.f33814b.b().a(new b.g());
    }

    private void b(@NonNull Method method, Object[] objArr) {
        if (method.getName().equals("setPlayListener")) {
            this.f33815c = (ITPPlayListener) objArr[0];
            objArr[0] = this.f33816d;
        }
    }

    public synchronized Object a() {
        if (this.f33817e == null) {
            this.f33817e = Proxy.newProxyInstance(this.f33813a.getClass().getClassLoader(), this.f33813a.getClass().getInterfaces(), this);
        }
        return this.f33817e;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        StringBuilder sb2;
        String th2;
        b(method, objArr);
        try {
            Object invoke = method.invoke(this.f33813a, objArr);
            a(method, objArr);
            return invoke;
        } catch (InvocationTargetException e10) {
            if (e10.getTargetException() == null) {
                sb2 = new StringBuilder("invokeMethod ");
                sb2.append(method.getName());
                sb2.append(" has excecption: ");
                th2 = e10.toString();
                sb2.append(th2);
                TPLogUtil.e("TPDataTransportManagerProxy", sb2.toString());
                return a(method);
            }
            throw e10.getTargetException();
        } catch (Throwable th3) {
            sb2 = new StringBuilder("invokeMethod ");
            sb2.append(method.getName());
            sb2.append(" has excecption: ");
            th2 = th3.toString();
            sb2.append(th2);
            TPLogUtil.e("TPDataTransportManagerProxy", sb2.toString());
            return a(method);
        }
    }
}
