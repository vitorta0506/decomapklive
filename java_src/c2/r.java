package c2;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface r {

    /* renamed from: a  reason: collision with root package name */
    public static final r f1550a = new r() { // from class: c2.p
        @Override // c2.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // c2.r
        public final l[] b() {
            return q.b();
        }
    };

    l[] a(Uri uri, Map<String, List<String>> map);

    l[] b();
}
