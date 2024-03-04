package qd;

import com.google.gson.JsonSyntaxException;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.GsonGetter;
import java.io.IOException;
import java.util.Map;
import okhttp3.Request;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f57181a = "b";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends od.a<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f57182a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ od.b f57183b;

        a(Class cls, od.b bVar) {
            this.f57182a = cls;
            this.f57183b = bVar;
        }

        @Override // od.a
        /* renamed from: b */
        public void a(String str, int i9, String str2) {
            Object obj = str;
            if (this.f57182a != String.class) {
                try {
                    obj = GsonGetter.getGson().fromJson(str, (Class<Object>) this.f57182a);
                } catch (JsonSyntaxException e10) {
                    e10.printStackTrace();
                    obj = null;
                }
            }
            c.b(this.f57183b, obj, i9, str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(boolean r6, okhttp3.Response r7, od.b<java.lang.String> r8) {
        /*
            java.lang.String r0 = ""
            r1 = -1
            r2 = 0
            okhttp3.ResponseBody r3 = r7.body()     // Catch: java.io.IOException -> L4a com.google.gson.JsonSyntaxException -> L4c
            if (r3 == 0) goto L13
            okhttp3.ResponseBody r3 = r7.body()     // Catch: java.io.IOException -> L4a com.google.gson.JsonSyntaxException -> L4c
            java.lang.String r3 = r3.string()     // Catch: java.io.IOException -> L4a com.google.gson.JsonSyntaxException -> L4c
            goto L14
        L13:
            r3 = r0
        L14:
            java.lang.String r4 = qd.b.f57181a     // Catch: java.io.IOException -> L46 com.google.gson.JsonSyntaxException -> L48
            com.guochao.faceshow.aaspring.utils.LogUtils.i(r4, r3)     // Catch: java.io.IOException -> L46 com.google.gson.JsonSyntaxException -> L48
            com.google.gson.Gson r4 = com.guochao.faceshow.utils.GsonGetter.getGson()     // Catch: java.io.IOException -> L46 com.google.gson.JsonSyntaxException -> L48
            java.lang.Class<com.guochao.faceshow.aaspring.beans.BaseRespData> r5 = com.guochao.faceshow.aaspring.beans.BaseRespData.class
            java.lang.Object r4 = r4.fromJson(r3, r5)     // Catch: java.io.IOException -> L46 com.google.gson.JsonSyntaxException -> L48
            com.guochao.faceshow.aaspring.beans.BaseRespData r4 = (com.guochao.faceshow.aaspring.beans.BaseRespData) r4     // Catch: java.io.IOException -> L46 com.google.gson.JsonSyntaxException -> L48
            if (r4 != 0) goto L29
            r2 = r0
            goto L2b
        L29:
            java.lang.String r2 = r4.msg     // Catch: java.io.IOException -> L41 com.google.gson.JsonSyntaxException -> L43
        L2b:
            if (r4 != 0) goto L2f
            r5 = -1
            goto L31
        L2f:
            int r5 = r4.code     // Catch: java.io.IOException -> L41 com.google.gson.JsonSyntaxException -> L43
        L31:
            boolean r7 = r7.isSuccessful()     // Catch: java.io.IOException -> L41 com.google.gson.JsonSyntaxException -> L43
            if (r7 != 0) goto L52
            if (r6 == 0) goto L3d
            qd.c.b(r8, r3, r5, r2)     // Catch: java.io.IOException -> L41 com.google.gson.JsonSyntaxException -> L43
            goto L40
        L3d:
            qd.c.c(r8, r3, r5, r2)     // Catch: java.io.IOException -> L41 com.google.gson.JsonSyntaxException -> L43
        L40:
            return
        L41:
            r7 = move-exception
            goto L44
        L43:
            r7 = move-exception
        L44:
            r2 = r4
            goto L4e
        L46:
            r7 = move-exception
            goto L4e
        L48:
            r7 = move-exception
            goto L4e
        L4a:
            r7 = move-exception
            goto L4d
        L4c:
            r7 = move-exception
        L4d:
            r3 = r0
        L4e:
            r7.printStackTrace()
            r4 = r2
        L52:
            if (r4 != 0) goto L55
            goto L57
        L55:
            java.lang.String r0 = r4.msg
        L57:
            if (r4 != 0) goto L5a
            goto L5c
        L5a:
            int r1 = r4.code
        L5c:
            if (r6 == 0) goto L62
            qd.c.b(r8, r3, r1, r0)
            goto L65
        L62:
            qd.c.c(r8, r3, r1, r0)
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: qd.b.a(boolean, okhttp3.Response, od.b):void");
    }

    public static <R> void b(String str, Map<String, String> map, Map<String, String> map2, Class<R> cls, boolean z10, Object obj, od.b<R> bVar) {
        Request a10 = c.a(str, map, map2, z10, obj, bVar);
        if (a10 == null) {
            return;
        }
        c(a10, cls, bVar);
    }

    private static <R> void c(Request request, Class<R> cls, od.b<R> bVar) {
        d(request, new a(cls, bVar));
    }

    private static void d(Request request, od.b<String> bVar) {
        try {
            a(true, qd.a.b().newCall(request).execute(), bVar);
        } catch (IOException e10) {
            if (e10.toString().contains("closed")) {
                LogUtils.e(f57181a, "curr request is cancel");
                e10.printStackTrace();
                return;
            }
            e10.printStackTrace();
            if (bVar == null) {
                return;
            }
            c.b(bVar, null, -1, c.e(e10));
        }
    }
}
