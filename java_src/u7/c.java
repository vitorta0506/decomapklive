package u7;

import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.beans.GooglePlayPurchaseResult;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class c extends u7.a {

    /* renamed from: b  reason: collision with root package name */
    private static c f58381b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends TypeToken<CopyOnWriteArrayList<GooglePlayPurchaseResult>> {
        a() {
        }
    }

    /* loaded from: classes3.dex */
    class b extends TypeToken<CopyOnWriteArrayList<GooglePlayPurchaseResult>> {
        b() {
        }
    }

    public static c c() {
        if (f58381b == null) {
            synchronized (c.class) {
                if (f58381b == null) {
                    f58381b = new c();
                }
            }
        }
        return f58381b;
    }

    public List<GooglePlayPurchaseResult> d() {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) com.guochao.faceshow.aaspring.manager.b.a("googlePlay", d.f17928u, new b().getType());
        return copyOnWriteArrayList == null ? new CopyOnWriteArrayList() : copyOnWriteArrayList;
    }

    public List<GooglePlayPurchaseResult> e(String str) {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) com.guochao.faceshow.aaspring.manager.b.a("googlePlay", d.f17928u, new a().getType());
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            GooglePlayPurchaseResult googlePlayPurchaseResult = (GooglePlayPurchaseResult) it.next();
            if (str.equalsIgnoreCase(googlePlayPurchaseResult.getUserId()) && !arrayList.contains(googlePlayPurchaseResult.getSigntureData())) {
                arrayList2.add(googlePlayPurchaseResult);
                arrayList.add(googlePlayPurchaseResult.getSigntureData());
            }
        }
        com.guochao.faceshow.aaspring.manager.b.f("googlePlay", d.f17928u, arrayList2);
        return arrayList2;
    }
}
