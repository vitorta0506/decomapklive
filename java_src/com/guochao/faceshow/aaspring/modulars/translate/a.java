package com.guochao.faceshow.aaspring.modulars.translate;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b8.e;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.TranslateResult;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f21865a;

    /* renamed from: com.guochao.faceshow.aaspring.modulars.translate.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0217a extends com.guochao.faceshow.aaspring.base.http.callback.c<TranslateResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f21866a;

        C0217a(c cVar) {
            this.f21866a = cVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable TranslateResult translateResult, @NonNull FaceCastBaseResponse<TranslateResult> faceCastBaseResponse) {
            if (faceCastBaseResponse.getCode() == 1 && translateResult != null && translateResult.getTexts() != null && !translateResult.getTexts().isEmpty()) {
                List<String> texts = translateResult.getTexts();
                c cVar = this.f21866a;
                if (cVar != null) {
                    cVar.onResponse(texts);
                    return;
                }
                return;
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<TranslateResult> aVar) {
            c cVar = this.f21866a;
            if (cVar != null) {
                cVar.onResponse(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<TranslateResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f21868a;

        b(c cVar) {
            this.f21868a = cVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable TranslateResult translateResult, @NonNull FaceCastBaseResponse<TranslateResult> faceCastBaseResponse) {
            if (faceCastBaseResponse.getCode() == 1 && translateResult != null && translateResult.getTexts() != null && !translateResult.getTexts().isEmpty()) {
                List<String> texts = translateResult.getTexts();
                c cVar = this.f21868a;
                if (cVar != null) {
                    cVar.onResponse(texts);
                    return;
                }
                return;
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<TranslateResult> aVar) {
            c cVar = this.f21868a;
            if (cVar != null) {
                cVar.onResponse(null);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onResponse(@Nullable List<String> list);
    }

    private a() {
    }

    public static a a() {
        if (f21865a == null) {
            synchronized (a.class) {
                if (f21865a == null) {
                    f21865a = new a();
                }
            }
        }
        return f21865a;
    }

    public String b() {
        return TextUtils.isEmpty(q7.a.e().g()) ? q7.a.e().c() : q7.a.e().g();
    }

    public boolean c(DynamicBean dynamicBean) {
        if (dynamicBean == null || Objects.equals(e.g().getUserId(), dynamicBean.getUserId()) || TextUtils.isEmpty(dynamicBean.getContent())) {
            return false;
        }
        String b10 = b();
        return b10 == null || !b10.equals(dynamicBean.getTargetLang());
    }

    public boolean d(VideoItem videoItem) {
        if (videoItem == null || e.g().getUserId().equals(videoItem.getUserId())) {
            return false;
        }
        String b10 = b();
        return b10 == null || !b10.equals(videoItem.getTargetLang());
    }

    public boolean e(BaseLiveMessage baseLiveMessage) {
        if (baseLiveMessage == null || Objects.equals(e.g().getUserId(), baseLiveMessage.getFromUserId()) || TextUtils.isEmpty(baseLiveMessage.getContent())) {
            return false;
        }
        String b10 = b();
        return (b10 == null || !b10.equals(baseLiveMessage.getTargetLang())) && !Objects.equals(baseLiveMessage.getContent(), String.format(BaseApplication.getInstance().getString(R.string.user_guide_add_focus_tip), e.g().c().nickName));
    }

    public void f(List<String> list, c cVar) {
        new PostRequest("tokens/translate/translateTexts").v("targetLang", b()).v("texts", GsonGetter.getGson().toJson(list)).M(new C0217a(cVar));
    }

    public void g(List<String> list, String str, c cVar) {
        new PostRequest("tokens/translate/translateTexts").v("targetLang", str).v("texts", GsonGetter.getGson().toJson(list)).M(new b(cVar));
    }
}
