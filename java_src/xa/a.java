package xa;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.mine.model.HobbyResultBean;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    ya.a f59641a;

    /* renamed from: xa.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0687a extends c<HobbyResultBean> {
        C0687a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable HobbyResultBean hobbyResultBean, @NonNull FaceCastBaseResponse<HobbyResultBean> faceCastBaseResponse) {
            a.this.f59641a.j(hobbyResultBean);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<HobbyResultBean> aVar) {
        }
    }

    public a(ya.a aVar) {
        this.f59641a = aVar;
    }

    public void a() {
        this.f59641a.J();
    }

    public void b(Context context, String str) {
        new PostRequest().O(context).Q(Contants.GET_USER_TAG).M(new C0687a());
    }

    public void c(int i9, String str) {
        if (i9 == 1) {
            this.f59641a.e(str);
        } else if (i9 != 2) {
        } else {
            this.f59641a.Q(str);
        }
    }
}
