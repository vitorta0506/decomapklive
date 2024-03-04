package com.guochao.faceshow.aaspring.manager;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.a;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.utils.Md5;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class h implements a.k<File> {

    /* renamed from: g  reason: collision with root package name */
    private static final Map<String, h> f16482g = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private ResourceCategoryItem f16483a;

    /* renamed from: b  reason: collision with root package name */
    private ResourceListItemBean f16484b;

    /* renamed from: c  reason: collision with root package name */
    private List<a.k<File>> f16485c = new CopyOnWriteArrayList();

    /* renamed from: d  reason: collision with root package name */
    private boolean f16486d = false;

    /* renamed from: e  reason: collision with root package name */
    private File f16487e;

    /* renamed from: f  reason: collision with root package name */
    private int f16488f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.d<File> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            h.this.f16486d = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<File> aVar) {
            h.this.b(aVar.a(), aVar.c(), h.this.f16483a, h.this.f16484b);
            h.this.f16486d = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
            h hVar = h.this;
            hVar.a(hVar.f16483a, h.this.f16484b, d10, j11, j10);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((File) obj, (FaceCastBaseResponse<File>) faceCastBaseResponse);
        }

        public void onResponse(File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            h hVar = h.this;
            hVar.c(hVar.f16483a, h.this.f16484b, file);
            h.this.f16486d = false;
        }
    }

    private h(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, int i9) {
        this.f16483a = resourceCategoryItem;
        this.f16484b = resourceListItemBean;
        File file = new File(FilePathProvider.getNXPathV2());
        this.f16487e = file;
        if (!file.exists()) {
            this.f16487e.mkdirs();
        }
        this.f16488f = i9;
    }

    private File i(ResourceCategoryItem resourceCategoryItem) {
        int moduleCode = resourceCategoryItem.getModuleCode();
        String str = moduleCode != 1 ? moduleCode != 2 ? moduleCode != 4 ? moduleCode != 5 ? "parster" : "soundEffect" : "imEmoji" : "effect" : "gift_v2";
        if (this.f16488f == 10002) {
            str = "gift_face_track_v2";
        }
        return new File(this.f16487e, str);
    }

    private File j(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean) {
        String mp4Url;
        File i9 = i(resourceCategoryItem);
        int moduleCode = resourceCategoryItem.getModuleCode();
        if (!i9.exists()) {
            i9.mkdirs();
        }
        if (moduleCode == 1) {
            mp4Url = resourceListItemBean.getMp4Url();
        } else if (moduleCode == 2) {
            mp4Url = resourceListItemBean.getAndroidFileUrlV2();
        } else if (moduleCode != 4 && moduleCode != 5) {
            mp4Url = TextUtils.isEmpty(resourceListItemBean.getPasterImg()) ? resourceListItemBean.getImg() : resourceListItemBean.getPasterImg();
        } else {
            mp4Url = resourceListItemBean.getDownloadUrl();
        }
        if (this.f16488f == 10002) {
            mp4Url = resourceListItemBean.getAndroidFaceEffectUrlV2();
        }
        if (TextUtils.isEmpty(mp4Url)) {
            return new File(i9, resourceListItemBean.getId() + "");
        }
        String valueOf = String.valueOf(resourceListItemBean.getId());
        int i10 = this.f16488f;
        if (i10 > 100 && i10 != 10000 && i10 != 10001 && i10 != 10002) {
            valueOf = valueOf + "_" + this.f16488f;
        }
        return new File(i9, valueOf + mp4Url.substring(mp4Url.lastIndexOf(".")));
    }

    private static String k(int i9, int i10, String str) {
        String str2;
        if (i9 == 1) {
            str2 = "gift_v2";
        } else if (i9 == 2) {
            str2 = "effect";
        } else if (i9 == 5) {
            str2 = "soundEffect";
        } else if (i9 == 10001) {
            str2 = "gift_face_track";
        } else if (i9 != 10002) {
            str2 = "paster";
        } else {
            str2 = "gift_face_track_v2";
        }
        return str2 + "_id_" + i10 + "";
    }

    private static String l(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, int i9) {
        return k(i9, resourceListItemBean.getId(), resourceListItemBean.getName());
    }

    private String m(File file) {
        return Md5.getMd5ByFile(file);
    }

    public static h n(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean) {
        return o(resourceCategoryItem, resourceListItemBean, resourceCategoryItem.getModuleCode());
    }

    public static h o(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, int i9) {
        String l10 = l(resourceCategoryItem, resourceListItemBean, i9);
        Map<String, h> map = f16482g;
        h hVar = map.get(l10);
        if (hVar == null) {
            h hVar2 = new h(resourceCategoryItem, resourceListItemBean, i9);
            map.put(l10, hVar2);
            return hVar2;
        }
        hVar.f16483a = resourceCategoryItem;
        hVar.f16484b = resourceListItemBean;
        hVar.f16488f = i9;
        return hVar;
    }

    @Override // com.guochao.faceshow.aaspring.manager.a.k
    public void a(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, double d10, long j10, long j11) {
        for (a.k<File> kVar : this.f16485c) {
            kVar.a(resourceCategoryItem, resourceListItemBean, d10, j10, j11);
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.a.k
    public void b(int i9, String str, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean) {
        for (a.k<File> kVar : this.f16485c) {
            kVar.b(i9, str, resourceCategoryItem, resourceListItemBean);
        }
    }

    public void g(a.k<File> kVar) {
        File h10 = h(this.f16483a, this.f16484b);
        if (h10 != null) {
            kVar.c(this.f16483a, this.f16484b, h10);
        } else {
            this.f16485c.add(kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File h(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean) {
        String androidFileUrlMd5V2;
        File j10 = j(resourceCategoryItem, resourceListItemBean);
        int i9 = this.f16488f;
        if (i9 == 2) {
            androidFileUrlMd5V2 = resourceListItemBean.getAndroidFileUrlMd5V2();
        } else if (i9 != 10002) {
            androidFileUrlMd5V2 = TextUtils.isEmpty(resourceListItemBean.getMp4Md5()) ? resourceListItemBean.getMd5() : resourceListItemBean.getMp4Md5();
        } else {
            androidFileUrlMd5V2 = resourceListItemBean.getAndroidFaceMd5V2();
        }
        if (TextUtils.isEmpty(androidFileUrlMd5V2)) {
            return null;
        }
        String m10 = m(j10);
        if (!TextUtils.isEmpty(m10) && Objects.equals(androidFileUrlMd5V2, m10)) {
            return j10;
        }
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.manager.a.k
    /* renamed from: p */
    public void c(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, @Nullable File file) {
        for (a.k<File> kVar : this.f16485c) {
            kVar.c(resourceCategoryItem, resourceListItemBean, file);
            q(kVar);
        }
    }

    public void q(a.k<File> kVar) {
        this.f16485c.remove(kVar);
    }

    public void r() {
        String mp4Url;
        if (this.f16486d) {
            return;
        }
        File h10 = h(this.f16483a, this.f16484b);
        if (h10 != null) {
            c(this.f16483a, this.f16484b, h10);
            return;
        }
        this.f16486d = true;
        int i9 = this.f16488f;
        if (i9 == 1) {
            mp4Url = this.f16484b.getMp4Url();
        } else if (i9 == 2) {
            mp4Url = this.f16484b.getAndroidFileUrlV2();
        } else if (i9 == 4 || i9 == 5) {
            mp4Url = this.f16484b.getDownloadUrl();
        } else if (i9 != 10002) {
            mp4Url = TextUtils.isEmpty(this.f16484b.getPasterImg()) ? this.f16484b.getImg() : this.f16484b.getPasterImg();
        } else {
            mp4Url = this.f16484b.getAndroidFaceEffectUrlV2();
        }
        if (TextUtils.isEmpty(mp4Url)) {
            this.f16486d = false;
        } else {
            ResourceDownloadManager.download(mp4Url, j(this.f16483a, this.f16484b).getAbsolutePath(), new a());
        }
    }
}
