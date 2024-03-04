package bb;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.utils.Ahttp;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private String f1232a;

    /* renamed from: b  reason: collision with root package name */
    private String f1233b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ od.a f1234a;

        a(od.a aVar) {
            this.f1234a = aVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            PromotionData promotionData;
            PromotionData.ResultItem resultItem;
            if (TextUtils.isEmpty(str) || (promotionData = (PromotionData) GsonGetter.getGson().fromJson(str, (Class<Object>) PromotionData.class)) == null) {
                return;
            }
            PromotionData.PromotionResult promotionResult = promotionData.result;
            if (promotionResult != null && promotionResult.getLive() != null) {
                for (PromotionData.ResultItem resultItem2 : promotionData.result.getLive()) {
                    int i9 = resultItem2.f26120id;
                    if (i.u().s().getBlackShow() == 0 && (i9 == 79 || i9 == 68 || i9 == 71 || i9 == 72)) {
                        promotionData.result.getLive().remove(resultItem2);
                        break;
                    }
                }
            }
            c8.b.k().x(promotionData);
            bb.a.e().j(false);
            if (Ahttp.isNetError(promotionData.msg)) {
                return;
            }
            PromotionData.ResultItem resultItem3 = null;
            if (b.this.f(promotionData)) {
                resultItem = promotionData.result.getLive().get(0);
                resultItem.requestTime = System.currentTimeMillis();
                b.this.i(promotionData.result.getLive(), true, b.this.f1232a);
            } else {
                FileUtil.deleteFile(b.this.f1232a);
                resultItem = null;
            }
            if (b.this.g(promotionData)) {
                resultItem3 = promotionData.result.video.get(0);
                resultItem3.requestTime = System.currentTimeMillis();
                b bVar = b.this;
                bVar.i(promotionData.result.video, false, bVar.f1233b);
            } else {
                FileUtil.deleteFile(b.this.f1233b);
            }
            bb.a.e().k(resultItem);
            bb.a.e().m(resultItem3);
            od.a aVar = this.f1234a;
            if (aVar != null) {
                aVar.a(promotionData.result, promotionData.code, promotionData.msg);
            }
        }
    }

    /* renamed from: bb.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0015b extends od.a<PromotionData.PromotionResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ od.a f1236a;

        C0015b(od.a aVar) {
            this.f1236a = aVar;
        }

        @Override // od.a
        /* renamed from: b */
        public void a(PromotionData.PromotionResult promotionResult, int i9, String str) {
            od.a aVar = this.f1236a;
            if (aVar != null) {
                try {
                    aVar.a(promotionResult.video.get(0), i9, str);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements od.b<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f1238a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f1239b;

        c(boolean z10, String str) {
            this.f1238a = z10;
            this.f1239b = str;
        }

        @Override // od.b
        /* renamed from: a */
        public void onResponse(Drawable drawable) {
            if (this.f1238a) {
                bb.a.e().c(this.f1239b, drawable);
            } else {
                bb.a.e().d(this.f1239b, drawable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f(PromotionData promotionData) {
        PromotionData.PromotionResult promotionResult;
        PromotionData.ResultItem resultItem;
        if (promotionData == null || (promotionResult = promotionData.result) == null || promotionResult.getLive() == null || promotionData.result.getLive().size() == 0 || (resultItem = promotionData.result.getLive().get(0)) == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        return currentTimeMillis > resultItem.startTime && currentTimeMillis < resultItem.endTime;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(PromotionData promotionData) {
        PromotionData.PromotionResult promotionResult;
        List<PromotionData.ResultItem> list;
        PromotionData.ResultItem resultItem;
        if (promotionData == null || (promotionResult = promotionData.result) == null || (list = promotionResult.video) == null || list.size() == 0 || (resultItem = promotionData.result.video.get(0)) == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        return currentTimeMillis > resultItem.startTime && currentTimeMillis < resultItem.endTime;
    }

    private boolean h(PromotionData.ResultItem resultItem) {
        return resultItem == null || resultItem.requestTime <= 0 || System.currentTimeMillis() - resultItem.requestTime > 5000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(List<PromotionData.ResultItem> list, boolean z10, String str) {
        List<String> list2;
        if (list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            PromotionData.ResultItem resultItem = list.get(i9);
            if (resultItem != null && (list2 = resultItem.likImg) != null && !list2.isEmpty()) {
                arrayList2.add(resultItem);
            }
        }
        if (arrayList2.size() > 0) {
            PromotionData.ResultItem resultItem2 = (PromotionData.ResultItem) arrayList2.get(0);
            for (int i10 = 1; i10 < arrayList2.size(); i10++) {
                PromotionData.ResultItem resultItem3 = (PromotionData.ResultItem) arrayList2.get(i10);
                if (resultItem3.startTime > resultItem2.startTime) {
                    resultItem2 = resultItem3;
                }
            }
            if (resultItem2 != null) {
                arrayList.addAll(resultItem2.likImg);
            }
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            String str2 = (String) arrayList.get(i11);
            if (!od.c.j(str, str2)) {
                od.c.d(str2, str2, str, new c(z10, str2));
            } else if (z10) {
                bb.a.e().c(str2, od.c.h(str, str2, 36));
            } else {
                bb.a.e().d(str2, od.c.g(str, str2));
            }
        }
    }

    private void k(od.a<PromotionData.PromotionResult> aVar) {
        if (bb.a.e().h()) {
            return;
        }
        this.f1232a = FilePathProvider.getPrivateRootPathV2("liveLikeImage");
        this.f1233b = FilePathProvider.getPrivateRootPathV2("videoLikeImage");
        bb.a.e().j(true);
        new PostRequest().Q("api/appactivity/findAllActivity").M(new a(aVar));
    }

    public void j() {
        k(null);
    }

    public void l(od.a<PromotionData.ResultItem> aVar) {
        if (!h(bb.a.e().g())) {
            if (aVar != null) {
                aVar.a(bb.a.e().g(), 1, "");
            }
        } else if (bb.a.e().h() && aVar != null) {
            bb.a.e().l(aVar);
        } else {
            k(new C0015b(aVar));
        }
    }
}
