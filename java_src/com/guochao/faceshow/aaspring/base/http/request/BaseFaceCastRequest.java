package com.guochao.faceshow.aaspring.base.http.request;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.gson.Gson;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.NativeBridge;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.BaseConfig;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;
import org.light.utils.FileUtils;
@Deprecated
/* loaded from: classes3.dex */
public abstract class BaseFaceCastRequest<T extends BaseFaceCastRequest> implements com.guochao.faceshow.aaspring.base.utils.a, LifecycleObserver {

    /* renamed from: v  reason: collision with root package name */
    public static String f16243v = "";

    /* renamed from: w  reason: collision with root package name */
    public static String f16244w = "";

    /* renamed from: x  reason: collision with root package name */
    public static String f16245x = "";

    /* renamed from: b  reason: collision with root package name */
    com.guochao.faceshow.aaspring.base.utils.a f16249b;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f16255h;

    /* renamed from: i  reason: collision with root package name */
    protected Object f16256i;

    /* renamed from: j  reason: collision with root package name */
    protected String f16257j;

    /* renamed from: k  reason: collision with root package name */
    private WeakReference<Context> f16258k;

    /* renamed from: l  reason: collision with root package name */
    LifecycleOwner f16259l;

    /* renamed from: m  reason: collision with root package name */
    com.guochao.faceshow.aaspring.base.http.callback.a f16260m;

    /* renamed from: o  reason: collision with root package name */
    protected com.guochao.faceshow.aaspring.base.http.callback.c f16262o;

    /* renamed from: p  reason: collision with root package name */
    BaseFaceCastRequest f16263p;

    /* renamed from: r  reason: collision with root package name */
    protected int f16265r;

    /* renamed from: s  reason: collision with root package name */
    protected b<T> f16266s;

    /* renamed from: y  reason: collision with root package name */
    public static final List<String> f16246y = new ArrayList();

    /* renamed from: z  reason: collision with root package name */
    static Handler f16247z = new Handler(Looper.getMainLooper());
    static final char[] A = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a  reason: collision with root package name */
    d f16248a = d.b();

    /* renamed from: c  reason: collision with root package name */
    boolean f16250c = false;

    /* renamed from: d  reason: collision with root package name */
    protected final Map<String, String> f16251d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    protected final Map<String, Object> f16252e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    protected Map<String, String> f16253f = null;

    /* renamed from: g  reason: collision with root package name */
    public final JSONObject f16254g = new JSONObject();

    /* renamed from: n  reason: collision with root package name */
    private boolean f16261n = true;

    /* renamed from: q  reason: collision with root package name */
    private int f16264q = 1;

    /* renamed from: t  reason: collision with root package name */
    Runnable f16267t = new c();

    /* renamed from: u  reason: collision with root package name */
    com.guochao.faceshow.aaspring.base.http.callback.c<?> f16268u = new a();

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.utils.a
        public void cancel() {
            super.cancel();
            com.guochao.faceshow.aaspring.base.http.callback.c cVar = BaseFaceCastRequest.this.f16262o;
            if (cVar != null) {
                cVar.cancel();
            }
            BaseFaceCastRequest.f16247z.removeCallbacks(BaseFaceCastRequest.this.f16267t);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            BaseFaceCastRequest baseFaceCastRequest = BaseFaceCastRequest.this;
            if (baseFaceCastRequest.f16250c) {
                return;
            }
            BaseFaceCastRequest.f16247z.removeCallbacks(baseFaceCastRequest.f16267t);
            Handler handler = BaseFaceCastRequest.f16247z;
            BaseFaceCastRequest baseFaceCastRequest2 = BaseFaceCastRequest.this;
            handler.postDelayed(baseFaceCastRequest2.f16267t, baseFaceCastRequest2.f16265r);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            com.guochao.faceshow.aaspring.base.http.callback.c cVar = BaseFaceCastRequest.this.f16262o;
            if (cVar != null) {
                cVar.onFailure(aVar);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            com.guochao.faceshow.aaspring.base.http.callback.c cVar = BaseFaceCastRequest.this.f16262o;
            if (cVar != null) {
                cVar.onResponse(obj, faceCastBaseResponse);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b<T extends BaseFaceCastRequest> {
        void a(T t10);
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            BaseFaceCastRequest baseFaceCastRequest = BaseFaceCastRequest.this;
            if (baseFaceCastRequest.f16250c) {
                return;
            }
            b<T> bVar = baseFaceCastRequest.f16266s;
            if (bVar != 0) {
                bVar.a(baseFaceCastRequest);
            }
            BaseFaceCastRequest.this.L();
        }
    }

    /* loaded from: classes3.dex */
    public static final class d {

        /* renamed from: c  reason: collision with root package name */
        private static final d f16271c = new d().c(false);

        /* renamed from: a  reason: collision with root package name */
        boolean f16272a;

        /* renamed from: b  reason: collision with root package name */
        boolean f16273b;

        private d() {
        }

        public static d b() {
            return new d();
        }

        public boolean a() {
            return this.f16273b;
        }

        public d c(boolean z10) {
            this.f16273b = z10;
            return this;
        }
    }

    public BaseFaceCastRequest() {
    }

    public static boolean J(String str) {
        return f16246y.contains(str);
    }

    public static String N(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i9 = 0; i9 < length; i9++) {
            byte b10 = bArr[i9];
            int i10 = i9 * 2;
            char[] cArr2 = A;
            cArr[i10] = cArr2[(b10 >>> 4) & 15];
            cArr[i10 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public T A(b<T> bVar) {
        this.f16266s = bVar;
        return this;
    }

    public T B(String str, int i9) {
        if (!TextUtils.isEmpty(str) && !EmptyUtils.isEmpty(Integer.valueOf(i9))) {
            this.f16251d.put(str, String.valueOf(i9));
        }
        return this;
    }

    public T C(String str, Object obj) {
        this.f16252e.put(str, obj);
        return this;
    }

    public T D(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !EmptyUtils.isEmpty(str2)) {
            this.f16251d.put(str, str2);
        }
        return this;
    }

    public T E(Map<String, String> map) {
        if (!EmptyUtils.isEmpty(map)) {
            this.f16251d.putAll(map);
        }
        return this;
    }

    public T F(String str, Object obj) {
        this.f16251d.put(str, String.valueOf(obj));
        return this;
    }

    public <E> T G(@IntRange(from = 0) int i9, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<E> cVar) {
        this.f16265r = i9;
        this.f16255h = true;
        this.f16249b = H(cVar);
        return this;
    }

    abstract <E> com.guochao.faceshow.aaspring.base.utils.a H(@Nullable com.guochao.faceshow.aaspring.base.http.callback.c<E> cVar);

    public T I(@IntRange(from = 1) int i9) {
        if (i9 < 1) {
            i9 = 1;
        }
        this.f16264q = i9;
        return this;
    }

    public T K(boolean z10) {
        this.f16261n = z10;
        this.f16248a.f16272a = z10;
        return this;
    }

    public T L() {
        return M(this.f16262o);
    }

    public <E> T M(@Nullable com.guochao.faceshow.aaspring.base.http.callback.c<E> cVar) {
        if (cVar != null) {
            cVar.mCancel = false;
        }
        this.f16250c = false;
        this.f16249b = H(cVar);
        return this;
    }

    public T O(Context context) {
        this.f16258k = new WeakReference<>(context);
        return this;
    }

    public T P(LifecycleOwner lifecycleOwner) {
        LifecycleOwner lifecycleOwner2 = this.f16259l;
        if (lifecycleOwner2 != null) {
            lifecycleOwner2.getLifecycle().removeObserver(this);
        }
        this.f16259l = lifecycleOwner;
        if (lifecycleOwner != null) {
            lifecycleOwner.getLifecycle().removeObserver(this);
            this.f16259l.getLifecycle().addObserver(this);
        }
        return this;
    }

    public T Q(String str) {
        this.f16257j = str;
        return this;
    }

    public T a(com.guochao.faceshow.aaspring.base.http.callback.a aVar) {
        this.f16260m = aVar;
        return this;
    }

    public <E> T b(com.guochao.faceshow.aaspring.base.http.callback.c<E> cVar) {
        this.f16262o = cVar;
        return this;
    }

    public <C extends d> T c(C c10) {
        this.f16248a = c10;
        return this;
    }

    @Override // com.guochao.faceshow.aaspring.base.utils.a
    public void cancel() {
        if (this.f16250c) {
            return;
        }
        this.f16250c = true;
        com.guochao.faceshow.aaspring.base.utils.a aVar = this.f16249b;
        if (aVar != null) {
            aVar.cancel();
        }
        com.guochao.faceshow.aaspring.base.http.callback.c cVar = this.f16262o;
        if (cVar != null) {
            cVar.cancel();
        }
    }

    protected String d(JSONObject jSONObject) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            TreeMap treeMap = new TreeMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                treeMap.put(next, jSONObject.get(next).toString());
            }
            ArrayList arrayList = new ArrayList(treeMap.entrySet());
            StringBuilder sb2 = new StringBuilder();
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                sb2.append(String.format("%s=%s&", ((Map.Entry) arrayList.get(i9)).getKey(), ((Map.Entry) arrayList.get(i9)).getValue()));
            }
            sb2.append(String.format("time=%s&sign=%s", Long.valueOf(currentTimeMillis), f16243v));
            byte[] bytes = sb2.toString().getBytes();
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            jSONObject.put("pass_s", N(messageDigest.digest()));
            jSONObject.put("stampTime", currentTimeMillis);
            D("unixTime", String.valueOf(currentTimeMillis));
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String e() {
        return NativeBridge.e(d(this.f16254g), f16243v);
    }

    public com.guochao.faceshow.aaspring.base.http.callback.a f() {
        return this.f16260m;
    }

    public com.guochao.faceshow.aaspring.base.http.callback.c<?> g() {
        return this.f16262o;
    }

    public Context h() {
        WeakReference<Context> weakReference = this.f16258k;
        if (weakReference != null) {
            return weakReference.get() != null ? this.f16258k.get() : GCApplication.app();
        }
        return GCApplication.app();
    }

    public Map<String, String> i() {
        return this.f16253f;
    }

    public Object j() {
        return this.f16256i;
    }

    public JSONObject k() {
        return this.f16254g;
    }

    public LifecycleOwner l() {
        return this.f16259l;
    }

    public Map<String, Object> m() {
        return this.f16252e;
    }

    public Map<String, String> n() {
        return this.f16251d;
    }

    public String o() {
        return this.f16257j;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    void onDestroy() {
        LifecycleOwner lifecycleOwner = this.f16259l;
        if (lifecycleOwner != null) {
            lifecycleOwner.getLifecycle().removeObserver(this);
        }
        cancel();
    }

    public com.guochao.faceshow.aaspring.base.http.callback.c<?> p() {
        return this.f16268u;
    }

    public d q() {
        return this.f16248a;
    }

    public int r() {
        return this.f16264q;
    }

    public T s(String str, String str2) {
        if (this.f16253f == null) {
            this.f16253f = new HashMap();
        }
        this.f16253f.put(str, str2);
        return this;
    }

    public boolean t(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        long parseLong = Long.parseLong(this.f16251d.get("unixTime"));
        String str2 = this.f16257j.replaceAll(FileUtils.RES_PREFIX_STORAGE, "") + parseLong + f16243v + f16244w;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str2.getBytes());
            return str.equals(N(messageDigest.digest()));
        } catch (NoSuchAlgorithmException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public <P> T u(P p10) {
        Class<?> cls = p10.getClass();
        if (cls != Integer.TYPE && cls != Float.TYPE && cls != Double.TYPE && cls != Long.TYPE && !(p10 instanceof Number) && !(p10 instanceof String)) {
            String json = new Gson().toJson(p10);
            if (!p10.getClass().isAssignableFrom(List.class) && !p10.getClass().isArray()) {
                try {
                    JSONObject jSONObject = new JSONObject(json);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        this.f16254g.put(next, jSONObject.get(next));
                    }
                } catch (JSONException unused) {
                }
            } else {
                D(RemoteMessageConst.MessageBody.PARAM, json);
            }
            return this;
        }
        LogUtils.e("BaseFaceCastRequest", "please put a non-number or non-String object here", new UnsupportedOperationException("please put a non-number or non-String object here"));
        return this;
    }

    public T v(String str, Object obj) {
        try {
            this.f16254g.put(str, obj);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return this;
    }

    public T w(Object obj) {
        this.f16256i = obj;
        return this;
    }

    public T x() {
        try {
            this.f16254g.put(BaseConfig.KEY_TOKEN, f16245x);
        } catch (JSONException unused) {
        }
        return this;
    }

    public T y(String str, Object obj) {
        this.f16252e.put(str, obj);
        return this;
    }

    public void z() {
        LifecycleOwner lifecycleOwner = this.f16259l;
        if (lifecycleOwner != null) {
            lifecycleOwner.getLifecycle().removeObserver(this);
        }
    }

    public BaseFaceCastRequest(Context context, LifecycleOwner lifecycleOwner, String str) {
        this.f16259l = lifecycleOwner;
        if (context != null) {
            this.f16258k = new WeakReference<>(context);
        }
        this.f16257j = str;
    }
}
