package com.guochao.faceshow.aaspring.manager;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.LifecycleOwner;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.AppResource;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.bean.BagListBean;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import q7.a;
import vh.o;
/* loaded from: classes3.dex */
public class a implements a.InterfaceC0622a {

    /* renamed from: d  reason: collision with root package name */
    public static long f16444d;

    /* renamed from: e  reason: collision with root package name */
    private static a f16445e;

    /* renamed from: a  reason: collision with root package name */
    SparseArray<List<ResourceCategoryItem>> f16446a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    SparseArray<BagListBean> f16447b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    private Context f16448c;

    /* renamed from: com.guochao.faceshow.aaspring.manager.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0153a extends com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<ResourceCategoryItem>>> {
        C0153a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<SparseArray<List<ResourceCategoryItem>>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(SparseArray<List<ResourceCategoryItem>> sparseArray, @NonNull FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> faceCastBaseResponse) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LifecycleOwner f16450a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.base.http.callback.c f16451b;

        b(LifecycleOwner lifecycleOwner, com.guochao.faceshow.aaspring.base.http.callback.c cVar) {
            this.f16450a = lifecycleOwner;
            this.f16451b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.w(this.f16450a, this.f16451b, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LifecycleOwner f16453a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.base.http.callback.c f16454b;

        c(LifecycleOwner lifecycleOwner, com.guochao.faceshow.aaspring.base.http.callback.c cVar) {
            this.f16453a = lifecycleOwner;
            this.f16454b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.w(this.f16453a, this.f16454b, 9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LifecycleOwner f16456a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.base.http.callback.c f16457b;

        d(LifecycleOwner lifecycleOwner, com.guochao.faceshow.aaspring.base.http.callback.c cVar) {
            this.f16456a = lifecycleOwner;
            this.f16457b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.w(this.f16456a, this.f16457b, 12);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LifecycleOwner f16459a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.base.http.callback.c f16460b;

        e(LifecycleOwner lifecycleOwner, com.guochao.faceshow.aaspring.base.http.callback.c cVar) {
            this.f16459a = lifecycleOwner;
            this.f16460b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.w(this.f16459a, this.f16460b, 13);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16462a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.base.http.callback.c f16463b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f16464c;

        f(boolean z10, com.guochao.faceshow.aaspring.base.http.callback.c cVar, int i9) {
            this.f16462a = z10;
            this.f16463b = cVar;
            this.f16464c = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<AppResource> aVar) {
            com.guochao.faceshow.aaspring.base.http.callback.c cVar = this.f16463b;
            if (cVar != null) {
                cVar.onFailure(new g7.a(new Throwable(), aVar.a()));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(AppResource appResource, @NonNull FaceCastBaseResponse<AppResource> faceCastBaseResponse) {
            int i9;
            com.guochao.faceshow.aaspring.base.http.callback.c cVar;
            if (appResource == null) {
                if (this.f16462a || (cVar = this.f16463b) == null) {
                    return;
                }
                cVar.onFailure(new g7.a(new Throwable(), 0));
                return;
            }
            a.this.o(appResource, this.f16463b, this.f16462a, this.f16464c);
            if (System.currentTimeMillis() - a.f16444d < 14400000 || (i9 = this.f16464c) != 1) {
                return;
            }
            a.d(a.this.m(appResource, i9));
            a.f16444d = System.currentTimeMillis();
        }
    }

    /* loaded from: classes3.dex */
    class g implements GCRequestJava.c<AppResource> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.base.http.callback.c f16466a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f16467b;

        g(com.guochao.faceshow.aaspring.base.http.callback.c cVar, boolean z10) {
            this.f16466a = cVar;
            this.f16467b = z10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<AppResource> response) {
            com.guochao.faceshow.aaspring.base.http.callback.c cVar = this.f16466a;
            if (cVar == null || this.f16467b) {
                return;
            }
            cVar.onFailure(new g7.a(new Throwable(), response.getCode()));
        }
    }

    /* loaded from: classes3.dex */
    class h implements GCRequestJava.d<BagListBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16469a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f16470b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.base.http.callback.c f16471c;

        h(boolean z10, int i9, com.guochao.faceshow.aaspring.base.http.callback.c cVar) {
            this.f16469a = z10;
            this.f16470b = i9;
            this.f16471c = cVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<BagListBean> response) {
            if (!this.f16469a && response.getData() == null) {
                BagListBean bagListBean = new BagListBean();
                bagListBean.setList(new ArrayList());
                a.this.f16447b.put(this.f16470b, bagListBean);
                com.guochao.faceshow.aaspring.base.http.callback.c cVar = this.f16471c;
                if (cVar != null) {
                    cVar.onFailure(new g7.a(new Throwable(), 0));
                    return;
                }
                return;
            }
            a.this.n(response.getData(), this.f16471c, this.f16469a, this.f16470b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements o<Integer, Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f16473a;

        i(List list) {
            this.f16473a = list;
        }

        @Override // vh.o
        /* renamed from: a */
        public Object apply(Integer num) {
            List<ResourceListItemBean> gifList;
            for (int i9 = 0; i9 < this.f16473a.size(); i9++) {
                ResourceCategoryItem resourceCategoryItem = (ResourceCategoryItem) this.f16473a.get(i9);
                if (resourceCategoryItem != null && (gifList = resourceCategoryItem.getGifList()) != null && !gifList.isEmpty()) {
                    for (int i10 = 0; i10 < gifList.size(); i10++) {
                        com.guochao.faceshow.aaspring.manager.h n9 = com.guochao.faceshow.aaspring.manager.h.n(resourceCategoryItem, gifList.get(i10));
                        if (n9.h(resourceCategoryItem, gifList.get(i10)) == null) {
                            n9.r();
                        }
                    }
                }
            }
            return "";
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class j<T> implements k<T> {
        @Override // com.guochao.faceshow.aaspring.manager.a.k
        public void a(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, double d10, long j10, long j11) {
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.k
        public void b(int i9, String str, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean) {
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.k
        public void c(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, @Nullable T t10) {
        }
    }

    /* loaded from: classes3.dex */
    public interface k<T> {
        void a(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, @FloatRange(from = 0.0d, to = 1.0d) double d10, long j10, long j11);

        void b(int i9, String str, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean);

        void c(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, @Nullable T t10);
    }

    public static void d(List<ResourceCategoryItem> list) {
        io.reactivex.k.just(1).map(new i(list)).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe();
    }

    private void f(List<ResourceCategoryItem> list, int i9) {
        if (list != null) {
            for (ResourceCategoryItem resourceCategoryItem : list) {
                ArrayList arrayList = new ArrayList();
                if (resourceCategoryItem.getGifList() != null) {
                    for (ResourceListItemBean resourceListItemBean : resourceCategoryItem.getGifList()) {
                        boolean z10 = true;
                        if (i9 != 1 && i9 != 2 && i9 != 3 && i9 != 4 && i9 != 13 && i9 != 14) {
                            z10 = false;
                        }
                        if (resourceListItemBean.isHandyGift() || !TextUtils.isEmpty(resourceListItemBean.getMp4Url()) || GiftLiveMessage.isFaceGift(resourceListItemBean) || !z10) {
                            arrayList.add(resourceListItemBean);
                        }
                    }
                }
                resourceCategoryItem.setGifList(arrayList);
            }
        }
    }

    public static a g() {
        synchronized (a.class) {
            if (f16445e == null) {
                synchronized (a.class) {
                    f16445e = new a();
                }
            }
        }
        return f16445e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<ResourceCategoryItem> m(AppResource appResource, int i9) {
        if (i9 != 100) {
            switch (i9) {
                case 1:
                    return appResource.getLive();
                case 2:
                    return appResource.getVideo();
                case 3:
                    return appResource.getOto();
                case 4:
                    return appResource.getIm();
                case 5:
                    return appResource.getLiveeffect();
                case 6:
                    break;
                case 7:
                    return appResource.getOtoeffect();
                case 8:
                    return appResource.getVideopaster();
                case 9:
                    return appResource.getImEmotInfo();
                case 10:
                    return appResource.getImEmotInfoRecommend();
                case 11:
                    return appResource.getSoundEffect();
                case 12:
                    return appResource.getPkeffect();
                case 13:
                    return appResource.getAppoint();
                case 14:
                    return appResource.getBag();
                case 15:
                    return appResource.getImbreak();
                case 16:
                    return appResource.getLiveVoice();
                default:
                    return appResource.getIm();
            }
        }
        return appResource.getVideoeffect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(BagListBean bagListBean, com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<BagListBean>> cVar, boolean z10, int i9) {
        SparseArray<BagListBean> sparseArray = new SparseArray<>();
        FaceCastBaseResponse<SparseArray<BagListBean>> faceCastBaseResponse = new FaceCastBaseResponse<>();
        faceCastBaseResponse.setCode(1);
        if (bagListBean != null && bagListBean.getList() != null && bagListBean.getList().size() > 0) {
            sparseArray.put(i9, bagListBean);
            this.f16447b.put(i9, bagListBean);
        } else {
            BagListBean bagListBean2 = new BagListBean();
            bagListBean2.setList(new ArrayList());
            this.f16447b.put(i9, bagListBean2);
        }
        if (z10) {
            return;
        }
        faceCastBaseResponse.setResult(sparseArray);
        if (cVar != null) {
            cVar.onResponse(sparseArray, faceCastBaseResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(AppResource appResource, com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<ResourceCategoryItem>>> cVar, boolean z10, int... iArr) {
        SparseArray<List<ResourceCategoryItem>> sparseArray = new SparseArray<>();
        FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> faceCastBaseResponse = new FaceCastBaseResponse<>();
        faceCastBaseResponse.setCode(1);
        for (int i9 : iArr) {
            List<ResourceCategoryItem> m10 = m(appResource, i9);
            f(m10, i9);
            sparseArray.put(i9, m10);
            this.f16446a.put(i9, m10);
        }
        if (z10) {
            return;
        }
        faceCastBaseResponse.setResult(sparseArray);
        if (cVar != null) {
            cVar.onResponse(sparseArray, faceCastBaseResponse);
        }
    }

    public void e() {
        this.f16446a.clear();
    }

    public List<ResourceCategoryItem> h(int i9) {
        return this.f16446a.get(i9);
    }

    public void i(int i9, int i10, int i11, k<File> kVar) {
        j(i10, i11, kVar, i9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void j(int i9, int i10, k<File> kVar, int... iArr) {
        ResourceCategoryItem resourceCategoryItem;
        ResourceListItemBean resourceListItemBean = null;
        if (this.f16446a.size() == 0) {
            if (kVar != null) {
                kVar.b(-1, "", null, null);
            }
            s(null, null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        for (int i12 : iArr) {
            List<ResourceCategoryItem> list = this.f16446a.get(i12);
            if (list != null && !list.isEmpty()) {
                arrayList.addAll(list);
            }
        }
        if (arrayList.isEmpty()) {
            if (kVar != null) {
                kVar.b(-1, "", null, null);
            }
            int length = iArr.length;
            while (i11 < length) {
                w(null, null, iArr[i11]);
                i11++;
            }
            return;
        }
        if (i9 <= 0) {
            ResourceListItemBean resourceListItemBean2 = null;
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                int i14 = 0;
                while (true) {
                    if (i14 >= ((ResourceCategoryItem) arrayList.get(i13)).getGifList().size()) {
                        break;
                    } else if (((ResourceCategoryItem) arrayList.get(i13)).getGifList().get(i14).getId() == i10) {
                        ResourceCategoryItem resourceCategoryItem2 = (ResourceCategoryItem) arrayList.get(i13);
                        resourceListItemBean = resourceCategoryItem2;
                        resourceListItemBean2 = resourceCategoryItem2.getGifList().get(i14);
                        break;
                    } else {
                        i14++;
                    }
                }
                if (resourceListItemBean != null && resourceListItemBean2 != null) {
                    break;
                }
            }
            ResourceListItemBean resourceListItemBean3 = resourceListItemBean;
            resourceListItemBean = resourceListItemBean2;
            resourceCategoryItem = resourceListItemBean3;
        } else {
            int i15 = 0;
            while (true) {
                if (i15 >= arrayList.size()) {
                    resourceCategoryItem = null;
                    break;
                } else if (((ResourceCategoryItem) arrayList.get(i15)).getSourctTypeId() == i9) {
                    resourceCategoryItem = (ResourceCategoryItem) arrayList.get(i15);
                    break;
                } else {
                    i15++;
                }
            }
            if (resourceCategoryItem == null) {
                kVar.b(-1, "not found", null, null);
                return;
            }
            List<ResourceListItemBean> gifList = resourceCategoryItem.getGifList();
            while (true) {
                if (i11 >= gifList.size()) {
                    break;
                } else if (i10 == gifList.get(i11).getId()) {
                    resourceListItemBean = gifList.get(i11);
                    break;
                } else {
                    i11++;
                }
            }
        }
        if (resourceListItemBean == null) {
            kVar.b(-1, "", resourceCategoryItem, resourceListItemBean);
            return;
        }
        com.guochao.faceshow.aaspring.manager.h n9 = com.guochao.faceshow.aaspring.manager.h.n(resourceCategoryItem, resourceListItemBean);
        if (kVar != null) {
            n9.g(kVar);
        }
        n9.r();
    }

    public void k(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, int i9, k<File> kVar) {
        com.guochao.faceshow.aaspring.manager.h o10 = com.guochao.faceshow.aaspring.manager.h.o(resourceCategoryItem, resourceListItemBean, i9);
        if (kVar != null) {
            o10.g(kVar);
        }
        o10.r();
    }

    public void l(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, k<File> kVar) {
        k(resourceCategoryItem, resourceListItemBean, resourceCategoryItem.getModuleCode(), kVar);
    }

    @Override // q7.a.InterfaceC0622a
    public void onLanguageChanged(String str, String str2) {
        e();
        s(null, new C0153a());
    }

    public void p(Context context) {
        this.f16448c = context;
        q7.a.e().addLanguageListener(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean q(int i9, int i10, int i11) {
        ResourceCategoryItem resourceCategoryItem;
        List<ResourceCategoryItem> list = this.f16446a.get(i9);
        ResourceListItemBean resourceListItemBean = null;
        if (list == null || list.isEmpty()) {
            w(null, null, i9);
            return false;
        }
        if (i10 <= 0) {
            ResourceListItemBean resourceListItemBean2 = null;
            for (int i12 = 0; i12 < list.size(); i12++) {
                int i13 = 0;
                while (true) {
                    if (i13 >= list.get(i12).getGifList().size()) {
                        break;
                    } else if (list.get(i12).getGifList().get(i13).getId() == i11) {
                        ResourceCategoryItem resourceCategoryItem2 = list.get(i12);
                        resourceListItemBean = resourceCategoryItem2;
                        resourceListItemBean2 = resourceCategoryItem2.getGifList().get(i13);
                        break;
                    } else {
                        i13++;
                    }
                }
                if (resourceListItemBean != null && resourceListItemBean2 != null) {
                    break;
                }
            }
            ResourceListItemBean resourceListItemBean3 = resourceListItemBean;
            resourceListItemBean = resourceListItemBean2;
            resourceCategoryItem = resourceListItemBean3;
        } else {
            int i14 = 0;
            while (true) {
                if (i14 >= list.size()) {
                    resourceCategoryItem = null;
                    break;
                } else if (list.get(i14).getSourctTypeId() == i10) {
                    resourceCategoryItem = list.get(i14);
                    break;
                } else {
                    i14++;
                }
            }
            if (resourceCategoryItem == null) {
                return false;
            }
            List<ResourceListItemBean> gifList = resourceCategoryItem.getGifList();
            int i15 = 0;
            while (true) {
                if (i15 >= gifList.size()) {
                    break;
                } else if (i11 == gifList.get(i15).getId()) {
                    resourceListItemBean = gifList.get(i15);
                    break;
                } else {
                    i15++;
                }
            }
        }
        return (resourceListItemBean == null || com.guochao.faceshow.aaspring.manager.h.n(resourceCategoryItem, resourceListItemBean).h(resourceCategoryItem, resourceListItemBean) == null) ? false : true;
    }

    public boolean r(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean) {
        return com.guochao.faceshow.aaspring.manager.h.n(resourceCategoryItem, resourceListItemBean).h(resourceCategoryItem, resourceListItemBean) != null;
    }

    public void s(LifecycleOwner lifecycleOwner, com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<ResourceCategoryItem>>> cVar) {
        HandlerGetter.runOnUIThread(new b(lifecycleOwner, cVar), 1000L);
        HandlerGetter.runOnUIThread(new c(lifecycleOwner, cVar), 4000L);
        HandlerGetter.runOnUIThread(new d(lifecycleOwner, cVar), 15000L);
        HandlerGetter.runOnUIThread(new e(lifecycleOwner, cVar), 25000L);
    }

    public BagListBean t(int i9) {
        return this.f16447b.get(i9);
    }

    public void u(LifecycleOwner lifecycleOwner, com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<BagListBean>> cVar, int i9) {
        BagListBean bagListBean = this.f16447b.get(i9);
        boolean z10 = true;
        if (bagListBean != null) {
            FaceCastBaseResponse<SparseArray<BagListBean>> faceCastBaseResponse = new FaceCastBaseResponse<>();
            faceCastBaseResponse.setCode(1);
            SparseArray<BagListBean> sparseArray = new SparseArray<>();
            sparseArray.put(i9, bagListBean);
            faceCastBaseResponse.setResult(sparseArray);
            if (cVar != null) {
                cVar.onResponse(sparseArray, faceCastBaseResponse);
            }
        } else {
            z10 = false;
        }
        new GCRequestJava("api/token/trade/bag/list/V2").j(new h(z10, i9, cVar)).d(new g(cVar, z10)).method(GCRequest.Method.GET).request();
    }

    public List<ResourceCategoryItem> v(int i9) {
        return this.f16446a.get(i9);
    }

    public void w(@Nullable LifecycleOwner lifecycleOwner, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<ResourceCategoryItem>>> cVar, int i9) {
        List<ResourceCategoryItem> list = this.f16446a.get(i9);
        boolean z10 = true;
        if (list == null || list.isEmpty()) {
            z10 = false;
        } else {
            FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> faceCastBaseResponse = new FaceCastBaseResponse<>();
            faceCastBaseResponse.setCode(1);
            SparseArray<List<ResourceCategoryItem>> sparseArray = new SparseArray<>();
            sparseArray.put(i9, list);
            faceCastBaseResponse.setResult(sparseArray);
            if (cVar != null) {
                cVar.onResponse(sparseArray, faceCastBaseResponse);
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i9));
        String json = GsonGetter.getGson().toJson(arrayList);
        new GetRequest().Q("tokens/source/newdata").O(this.f16448c).P(lifecycleOwner).K(false).v("language", q7.a.e().c()).v("typeArr", json).M(new f(z10, cVar, i9));
    }
}
