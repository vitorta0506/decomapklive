package com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static Map<String, String> f21554a = new HashMap();

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21555a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ r9.a f21556b;

        a(String str, r9.a aVar) {
            this.f21555a = str;
            this.f21556b = aVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<File> aVar) {
            c.f21554a.remove(this.f21555a);
            this.f21556b.onErrorCallback();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            c.f21554a.remove(this.f21555a);
            if (file.renameTo(new File(file.getAbsolutePath().replace("_temp", "")))) {
                this.f21556b.a();
            } else {
                this.f21556b.onErrorCallback();
            }
        }
    }

    public static void a(String str, String str2, String str3, boolean z10, r9.a aVar) {
        FaceCastHttpClientImpl h10 = FaceCastHttpClientImpl.h(BaseApplication.getInstance());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(FileUtils.RES_PREFIX_STORAGE);
        sb2.append(str3 + "_temp");
        sb2.append(z10 ? "V2.svga" : ".svga");
        h10.a(null, str, sb2.toString(), new a(str3, aVar));
    }
}
