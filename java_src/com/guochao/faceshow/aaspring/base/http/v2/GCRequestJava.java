package com.guochao.faceshow.aaspring.base.http.v2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import java.lang.reflect.ParameterizedType;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* loaded from: classes3.dex */
public class GCRequestJava extends GCRequest {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Function1<Response<Object>, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f16288a;

        a(d dVar) {
            this.f16288a = dVar;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Response<Object> response) {
            this.f16288a.a(response);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Function1<Response<Object>, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f16290a;

        b(c cVar) {
            this.f16290a = cVar;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Response<Object> response) {
            this.f16290a.a(response);
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes3.dex */
    public interface c<E> {
        void a(Response<E> response);
    }

    /* loaded from: classes3.dex */
    public interface d<T> {
        void a(@NonNull Response<T> response);
    }

    public GCRequestJava(@NonNull String str) {
        super(str);
    }

    @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequest
    @NonNull
    /* renamed from: a */
    public GCRequestJava addQuery(@NonNull String str, @Nullable String str2) {
        return (GCRequestJava) super.addQuery(str, str2);
    }

    @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequest
    @NonNull
    /* renamed from: b */
    public GCRequestJava bindToLifecycle(@Nullable Lifecycle lifecycle) {
        return (GCRequestJava) super.bindToLifecycle(lifecycle);
    }

    @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequest
    @NonNull
    /* renamed from: c */
    public GCRequestJava bindToLifecycle(@Nullable LifecycleOwner lifecycleOwner) {
        return (GCRequestJava) super.bindToLifecycle(lifecycleOwner);
    }

    @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequest, com.guochao.faceshow.aaspring.base.utils.a
    public void cancel() {
        super.cancel();
    }

    public <E> GCRequestJava d(c<E> cVar) {
        getCallbackHolder().setFail(new b(cVar));
        getCallbackHolder().setFailClz((Class) ((ParameterizedType) cVar.getClass().getGenericInterfaces()[0]).getActualTypeArguments()[0]);
        return this;
    }

    @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequest
    @NonNull
    /* renamed from: e */
    public GCRequestJava header(@NonNull String str, @Nullable String str2) {
        return (GCRequestJava) super.header(str, str2);
    }

    @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequest
    @NonNull
    /* renamed from: f */
    public GCRequestJava putBody(@NonNull String str, @NonNull Object obj) {
        return obj == null ? this : (GCRequestJava) super.putBody(str, obj);
    }

    @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequest
    @NonNull
    /* renamed from: g */
    public GCRequestJava putBodyModel(@Nullable Object obj, boolean z10) {
        return (GCRequestJava) super.putBodyModel(obj, z10);
    }

    @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequest
    @NonNull
    /* renamed from: h */
    public GCRequestJava removeQuery(@NonNull String str) {
        return (GCRequestJava) super.removeQuery(str);
    }

    @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequest
    @NonNull
    /* renamed from: i */
    public GCRequestJava request() {
        return (GCRequestJava) super.request();
    }

    public <T> GCRequestJava j(d<T> dVar) {
        getCallbackHolder().setSuccess(new a(dVar));
        getCallbackHolder().setSuccessClz((Class) ((ParameterizedType) dVar.getClass().getGenericInterfaces()[0]).getActualTypeArguments()[0]);
        return this;
    }
}
