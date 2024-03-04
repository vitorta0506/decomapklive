package com.guochao.faceshow.aaspring.base.http.request;

import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.MapUtils;
import com.guochao.faceshow.utils.GsonGetter;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.lang.reflect.Type;
import java.util.Map;
@Deprecated
/* loaded from: classes3.dex */
public class GetRequest extends BaseFaceCastRequest<GetRequest> {

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* loaded from: classes3.dex */
    class a<E> extends l7.a<FaceCastBaseResponse<E>, E> {
        a(com.guochao.faceshow.aaspring.base.http.callback.b bVar) {
            super(bVar);
        }
    }

    public GetRequest(String str) {
        this.f16257j = str;
    }

    @Override // com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest
    <E> com.guochao.faceshow.aaspring.base.utils.a H(@Nullable c<E> cVar) {
        this.f16262o = cVar;
        Type a10 = new a(cVar).a();
        if (cVar != null) {
            cVar.setRequest(this);
            cVar.setRetryCount(r());
        }
        BaseFaceCastRequest baseFaceCastRequest = this.f16263p;
        if (baseFaceCastRequest != null) {
            baseFaceCastRequest.cancel();
        }
        if (this.f16254g.length() > 0) {
            if (BaseFaceCastRequest.J(x6.a.f59625a + this.f16257j)) {
                D("XX", R());
            } else {
                D(RemoteMessageConst.MessageBody.PARAM, R());
            }
        }
        FaceCastHttpClientImpl h10 = FaceCastHttpClientImpl.h(h());
        Map<String, String> n9 = n();
        if (this.f16255h) {
            return h10.f(l(), o(), n9, a10, this.f16268u);
        }
        return h10.f(l(), o(), n9, a10, cVar);
    }

    protected String R() {
        if (BaseFaceCastRequest.J(x6.a.f59625a + this.f16257j)) {
            return e();
        }
        return GsonGetter.getGson().toJson(MapUtils.toMap(this.f16254g));
    }

    public GetRequest() {
    }
}
