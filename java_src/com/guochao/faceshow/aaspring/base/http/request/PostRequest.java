package com.guochao.faceshow.aaspring.base.http.request;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.lifecycle.LifecycleOwner;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.File;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes3.dex */
public class PostRequest extends BaseFaceCastRequest<PostRequest> {
    private Map<String, List<File>> B;
    private boolean C;

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* loaded from: classes3.dex */
    class a<E> extends l7.a<FaceCastBaseResponse<E>, E> {
        a(com.guochao.faceshow.aaspring.base.http.callback.b bVar) {
            super(bVar);
        }
    }

    public PostRequest() {
        this(null);
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
            D(RemoteMessageConst.MessageBody.PARAM, this.f16254g.toString());
        }
        if (!this.f16251d.containsKey("unixTime")) {
            D("unixTime", String.valueOf(System.currentTimeMillis()));
        }
        FaceCastHttpClientImpl h10 = FaceCastHttpClientImpl.h(h());
        Map<String, String> n9 = n();
        boolean z10 = (!this.C && this.f16252e.isEmpty() && this.f16256i == null) ? false : true;
        if (this.f16255h) {
            if (z10) {
                return h10.n(this, this.f16268u);
            }
            return h10.m(l(), o(), n9, this.B, a10, this.f16268u);
        } else if (z10) {
            return h10.n(this, cVar);
        } else {
            return h10.m(l(), o(), n9, this.B, a10, cVar);
        }
    }

    public PostRequest R(String str, File file) {
        List<File> list = this.B.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.B.put(str, list);
        }
        list.add(file);
        return this;
    }

    public PostRequest S(String str, List<File> list) {
        List<File> list2 = this.B.get(str);
        if (list2 == null) {
            list2 = new ArrayList<>();
            this.B.put(str, list2);
        }
        list2.addAll(list);
        return this;
    }

    public Map<String, List<File>> T() {
        return this.B;
    }

    @Override // com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest, com.guochao.faceshow.aaspring.base.utils.a
    public void cancel() {
        super.cancel();
        if (this.f16255h) {
            BaseFaceCastRequest.f16247z.removeCallbacks(this.f16267t);
        }
    }

    public PostRequest(String str) {
        this(null, null, str);
    }

    public PostRequest(Context context, LifecycleOwner lifecycleOwner, String str) {
        super(context, lifecycleOwner, str);
        this.B = new HashMap();
        this.C = false;
    }
}
