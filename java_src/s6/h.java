package s6;

import a6.r;
import android.content.Context;
/* loaded from: classes2.dex */
public class h {

    /* loaded from: classes2.dex */
    public interface a<T> {
        String a(T t10);
    }

    public static a6.d<?> b(String str, String str2) {
        return a6.d.j(f.a(str, str2), f.class);
    }

    public static a6.d<?> c(final String str, final a<Context> aVar) {
        return a6.d.k(f.class).b(r.i(Context.class)).f(new a6.h() { // from class: s6.g
            @Override // a6.h
            public final Object a(a6.e eVar) {
                f d10;
                d10 = h.d(str, aVar, eVar);
                return d10;
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f d(String str, a aVar, a6.e eVar) {
        return f.a(str, aVar.a((Context) eVar.i(Context.class)));
    }
}
