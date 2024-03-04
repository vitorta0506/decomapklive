package u7;

import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.beans.GooglePlayPurchaseResult;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    u7.b f58377a = u7.b.a(BaseApplication.getInstance());

    /* renamed from: u7.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0658a extends TypeToken<CopyOnWriteArrayList<GooglePlayPurchaseResult>> {
        C0658a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends TypeToken<CopyOnWriteArrayList<GooglePlayPurchaseResult>> {
        b() {
        }
    }

    public void a(String str, String str2, String str3) {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) com.guochao.faceshow.aaspring.manager.b.a("googlePlay", d.f17928u, new b().getType());
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            GooglePlayPurchaseResult googlePlayPurchaseResult = (GooglePlayPurchaseResult) it.next();
            if (!str.equalsIgnoreCase(googlePlayPurchaseResult.getUserId()) || !str2.equalsIgnoreCase(googlePlayPurchaseResult.getSignture()) || !str3.equalsIgnoreCase(googlePlayPurchaseResult.getSigntureData())) {
                arrayList.add(googlePlayPurchaseResult);
            }
        }
        com.guochao.faceshow.aaspring.manager.b.f("googlePlay", d.f17928u, arrayList);
    }

    @Deprecated
    public void b(GooglePlayPurchaseResult googlePlayPurchaseResult, String str, String str2, String str3, long j10) {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) com.guochao.faceshow.aaspring.manager.b.a("googlePlay", d.f17928u, new C0658a().getType());
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            GooglePlayPurchaseResult googlePlayPurchaseResult2 = (GooglePlayPurchaseResult) it.next();
            if (str != null && str.equalsIgnoreCase(googlePlayPurchaseResult2.getUserId()) && str2 != null && str2.equalsIgnoreCase(googlePlayPurchaseResult2.getSignture()) && str3 != null && str3.equalsIgnoreCase(googlePlayPurchaseResult2.getSigntureData())) {
                return;
            }
        }
        GooglePlayPurchaseResult googlePlayPurchaseResult3 = new GooglePlayPurchaseResult();
        googlePlayPurchaseResult3.setSignture(str2);
        googlePlayPurchaseResult3.setSigntureData(str3);
        googlePlayPurchaseResult3.setUserId(str);
        googlePlayPurchaseResult3.setTimeStamp(j10);
        if (googlePlayPurchaseResult != null) {
            googlePlayPurchaseResult3.setScene(googlePlayPurchaseResult.getScene());
        }
        copyOnWriteArrayList.add(googlePlayPurchaseResult3);
        com.guochao.faceshow.aaspring.manager.b.f("googlePlay", d.f17928u, copyOnWriteArrayList);
    }
}
