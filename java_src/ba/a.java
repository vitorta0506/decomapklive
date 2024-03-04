package ba;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.MediaLocalData;
import com.guochao.faceshow.aaspring.beans.PublishUgcBean;
import com.guochao.faceshow.aaspring.beans.UploadUgcImageResponse;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UriUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.huawei.hms.push.constant.RemoteMessageConst;
import io.reactivex.k;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: f  reason: collision with root package name */
    private static a f1203f;

    /* renamed from: b  reason: collision with root package name */
    private List<PublishUgcBean> f1205b;

    /* renamed from: d  reason: collision with root package name */
    private int f1207d;

    /* renamed from: a  reason: collision with root package name */
    private String f1204a = "PublishUgc";

    /* renamed from: c  reason: collision with root package name */
    private CopyOnWriteArrayList<e> f1206c = new CopyOnWriteArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private final Set<Integer> f1208e = new HashSet();

    /* renamed from: ba.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0013a extends TypeToken<List<PublishUgcBean>> {
        C0013a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.d<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f1210a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PublishUgcBean f1211b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f1212c;

        b(String str, PublishUgcBean publishUgcBean, int i9) {
            this.f1210a = str;
            this.f1211b = publishUgcBean;
            this.f1212c = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            a.c(a.this);
            if (a.this.f1207d >= 3) {
                this.f1211b.setPublishStatus(3);
                if (a.this.f1206c.isEmpty()) {
                    return;
                }
                a.this.o(this.f1211b);
                return;
            }
            a.this.B(this.f1211b, this.f1212c);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((String) obj, (FaceCastBaseResponse<String>) faceCastBaseResponse);
        }

        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            try {
                UploadUgcImageResponse uploadUgcImageResponse = (UploadUgcImageResponse) GsonGetter.getGson().fromJson(str, (Class<Object>) UploadUgcImageResponse.class);
                if (uploadUgcImageResponse != null && uploadUgcImageResponse.getCode() == 1 && uploadUgcImageResponse.getResult() != null) {
                    a.this.n(this.f1210a);
                    a.this.f1207d = 0;
                    if (a.this.f1205b != null) {
                        List<MediaLocalData> imgList = this.f1211b.getImgList();
                        imgList.get(this.f1212c).setFileUrl(uploadUgcImageResponse.getResult().getUrl());
                        imgList.get(this.f1212c).setFileSmallUrl(uploadUgcImageResponse.getResult().getSmallImgUrl());
                        com.guochao.faceshow.aaspring.manager.b.f("publish_dynamic", a.this.f1204a, a.this.f1205b);
                        if (this.f1212c < imgList.size() - 1) {
                            a.this.B(this.f1211b, this.f1212c + 1);
                        } else {
                            a.this.A(this.f1211b);
                        }
                    }
                } else {
                    onFailure(null);
                }
            } catch (Exception unused) {
                onFailure(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends SimpleObserver<PublishUgcBean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(PublishUgcBean publishUgcBean) {
            super.onNext(publishUgcBean);
            a.this.x(publishUgcBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<DynamicBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PublishUgcBean f1215a;

        d(PublishUgcBean publishUgcBean) {
            this.f1215a = publishUgcBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(DynamicBean dynamicBean, @NonNull FaceCastBaseResponse<DynamicBean> faceCastBaseResponse) {
            a.this.u(dynamicBean, this.f1215a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<DynamicBean> aVar) {
            a.this.f1208e.remove(Integer.valueOf(this.f1215a.getUuid()));
            this.f1215a.setPublishStatus(3);
            if (!a.this.f1206c.isEmpty()) {
                a.this.o(this.f1215a);
            }
            if (aVar == null) {
                return;
            }
            if (aVar.a() == 30002) {
                ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.ugc_rubbish_limit);
            }
            if (aVar.a() == 1010) {
                ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(R.string.minganci_ugc));
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void onPublishResponse(PublishUgcBean publishUgcBean);
    }

    private a() {
        if (this.f1205b == null) {
            List<PublishUgcBean> list = (List) com.guochao.faceshow.aaspring.manager.b.a("publish_dynamic", this.f1204a, new C0013a().getType());
            this.f1205b = list;
            if (list == null) {
                this.f1205b = new ArrayList();
            }
            for (int i9 = 0; i9 < this.f1205b.size(); i9++) {
                this.f1205b.get(i9).setPublishStatus(3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(PublishUgcBean publishUgcBean) {
        if (publishUgcBean.getImgList() != null && !publishUgcBean.getImgList().isEmpty()) {
            x(publishUgcBean);
        } else {
            k.just(publishUgcBean).delay(2000L, TimeUnit.MILLISECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(PublishUgcBean publishUgcBean, int i9) {
        String thumb = publishUgcBean.getImgList().get(i9).getThumb();
        if (!TextUtils.isEmpty(thumb) && thumb.startsWith("http")) {
            if (i9 < publishUgcBean.getImgList().size() - 1) {
                B(publishUgcBean, i9 + 1);
                return;
            } else {
                A(publishUgcBean);
                return;
            }
        }
        q(thumb, new b(thumb, publishUgcBean, i9));
    }

    static /* synthetic */ int c(a aVar) {
        int i9 = aVar.f1207d;
        aVar.f1207d = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(PublishUgcBean publishUgcBean) {
        int i9 = -1;
        for (int i10 = 0; i10 < this.f1205b.size(); i10++) {
            PublishUgcBean publishUgcBean2 = this.f1205b.get(i10);
            if (publishUgcBean != null && publishUgcBean.getUuid() == publishUgcBean2.getUuid()) {
                publishUgcBean2.setPublishStatus(publishUgcBean.getPublishStatus());
            }
            if (this.f1205b.get(i10).getPublishStatus() == 2) {
                i9 = i10;
            }
        }
        if (i9 >= 0) {
            this.f1205b.remove(i9);
        }
        com.guochao.faceshow.aaspring.manager.b.f("publish_dynamic", this.f1204a, this.f1205b);
        Iterator<e> it = this.f1206c.iterator();
        while (it.hasNext()) {
            it.next().onPublishResponse(publishUgcBean);
        }
    }

    public static void p(Context context, Uri uri, com.guochao.faceshow.aaspring.base.http.callback.d<String> dVar) {
        new PostRequest(f7.b.f39645j0).R("imgFile", UriUtils.uriToFile(context, uri)).B(Contants.CURRENT_COUNTRY_FLAG, 2).M(dVar);
    }

    public static void q(String str, com.guochao.faceshow.aaspring.base.http.callback.d<String> dVar) {
        new PostRequest(f7.b.f39645j0).R("imgFile", new File(str)).B(Contants.CURRENT_COUNTRY_FLAG, 2).M(dVar);
    }

    public static a r() {
        if (f1203f == null) {
            synchronized (a.class) {
                if (f1203f == null) {
                    f1203f = new a();
                }
            }
        }
        return f1203f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(DynamicBean dynamicBean, PublishUgcBean publishUgcBean) {
        if (dynamicBean != null) {
            publishUgcBean.setFriendId(dynamicBean.getFriendId());
            publishUgcBean.setPublishStatus(2);
            if (this.f1206c.isEmpty()) {
                return;
            }
            o(publishUgcBean);
            return;
        }
        publishUgcBean.setPublishStatus(3);
        if (this.f1206c.isEmpty()) {
            return;
        }
        o(publishUgcBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(PublishUgcBean publishUgcBean) {
        if (this.f1208e.contains(Integer.valueOf(publishUgcBean.getUuid()))) {
            return;
        }
        this.f1208e.add(Integer.valueOf(publishUgcBean.getUuid()));
        HashMap hashMap = new HashMap();
        hashMap.put(RemoteMessageConst.MessageBody.PARAM, GsonGetter.getGson().toJson(publishUgcBean));
        new PostRequest("tokens/friend/create_v2").E(hashMap).M(new d(publishUgcBean));
    }

    public boolean m(PublishUgcBean publishUgcBean) {
        List<PublishUgcBean> list = this.f1205b;
        if (list != null) {
            for (PublishUgcBean publishUgcBean2 : list) {
                if (publishUgcBean2 != null && publishUgcBean2.getUuid() == publishUgcBean.getUuid()) {
                    boolean remove = this.f1205b.remove(publishUgcBean2);
                    com.guochao.faceshow.aaspring.manager.b.f("publish_dynamic", this.f1204a, this.f1205b);
                    return remove;
                }
            }
            return false;
        }
        return false;
    }

    public void n(String str) {
        File file = new File(str);
        File parentFile = file.getParentFile();
        if (file.exists()) {
            file.delete();
        }
        if (parentFile == null || !parentFile.exists()) {
            return;
        }
        parentFile.delete();
        File parentFile2 = parentFile.getParentFile();
        if (parentFile2 == null || !parentFile2.exists()) {
            return;
        }
        if (parentFile2.listFiles() == null || parentFile2.listFiles().length == 0) {
            parentFile2.delete();
        }
    }

    public void registerOnPublishListener(e eVar) {
        this.f1206c.add(eVar);
    }

    public List<PublishUgcBean> s() {
        if (this.f1205b == null) {
            this.f1205b = new ArrayList();
        }
        return this.f1205b;
    }

    public List<PublishUgcBean> t(aa.b<PublishUgcBean> bVar) {
        List<PublishUgcBean> s10 = s();
        ArrayList arrayList = new ArrayList();
        if (s10 != null) {
            for (int i9 = 0; i9 < s10.size(); i9++) {
                if (bVar.accept(s10.get(i9))) {
                    arrayList.add(s10.get(i9));
                }
            }
        }
        return arrayList;
    }

    public void unregisterOnPublishListener(e eVar) {
        this.f1206c.remove(eVar);
    }

    public void v(PublishUgcBean publishUgcBean) {
        publishUgcBean.setPublishStatus(1);
        z(publishUgcBean);
        if (publishUgcBean.getImgList() != null && !publishUgcBean.getImgList().isEmpty()) {
            B(publishUgcBean, 0);
        } else {
            A(publishUgcBean);
        }
    }

    public void w(PublishUgcBean publishUgcBean) {
        PublishUgcBean publishUgcBean2;
        int i9 = 0;
        while (true) {
            if (i9 >= this.f1205b.size()) {
                publishUgcBean2 = null;
                break;
            } else if (this.f1205b.get(i9).getUuid() == publishUgcBean.getUuid()) {
                this.f1205b.set(i9, publishUgcBean);
                publishUgcBean2 = publishUgcBean;
                break;
            } else {
                i9++;
            }
        }
        if (publishUgcBean2 != null) {
            publishUgcBean2.setPublishStatus(1);
            publishUgcBean2.setHasRetryTimes(publishUgcBean.getHasRetryTimes() + 1);
            if (publishUgcBean.getImgList() != null && !publishUgcBean.getImgList().isEmpty()) {
                B(publishUgcBean2, 0);
            } else {
                A(publishUgcBean2);
            }
        }
    }

    public void y() {
        this.f1205b = null;
        f1203f = null;
    }

    public void z(PublishUgcBean publishUgcBean) {
        if (this.f1205b == null) {
            this.f1205b = new ArrayList();
        }
        if (!this.f1205b.contains(publishUgcBean)) {
            this.f1205b.add(0, publishUgcBean);
        }
        com.guochao.faceshow.aaspring.manager.b.f("publish_dynamic", this.f1204a, this.f1205b);
    }
}
