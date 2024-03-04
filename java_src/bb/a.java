package bb;

import android.graphics.drawable.Drawable;
import androidx.annotation.MainThread;
import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.utils.HandlerGetter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Random;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: i  reason: collision with root package name */
    private static a f1217i;

    /* renamed from: b  reason: collision with root package name */
    private PromotionData.ResultItem f1219b;

    /* renamed from: c  reason: collision with root package name */
    private PromotionData.ResultItem f1220c;

    /* renamed from: a  reason: collision with root package name */
    private Random f1218a = new Random();

    /* renamed from: f  reason: collision with root package name */
    private boolean f1223f = false;

    /* renamed from: g  reason: collision with root package name */
    private List<od.a<PromotionData.ResultItem>> f1224g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private List<od.a<PromotionData.ResultItem>> f1225h = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private LinkedHashMap<String, Drawable> f1221d = new LinkedHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private LinkedHashMap<String, Drawable> f1222e = new LinkedHashMap<>();

    /* renamed from: bb.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class RunnableC0014a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ od.a f1226a;

        RunnableC0014a(od.a aVar) {
            this.f1226a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f1225h.add(this.f1226a);
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PromotionData.ResultItem f1228a;

        b(PromotionData.ResultItem resultItem) {
            this.f1228a = resultItem;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f1225h.size() > 0) {
                for (int i9 = 0; i9 < a.this.f1225h.size(); i9++) {
                    if (a.this.f1225h.get(i9) != null) {
                        ((od.a) a.this.f1225h.get(i9)).a(this.f1228a, 1, "");
                    }
                }
                a.this.f1225h.clear();
            }
        }
    }

    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PromotionData.ResultItem f1230a;

        c(PromotionData.ResultItem resultItem) {
            this.f1230a = resultItem;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f1224g.size() > 0) {
                for (int i9 = 0; i9 < a.this.f1224g.size(); i9++) {
                    if (a.this.f1224g.get(i9) != null) {
                        ((od.a) a.this.f1224g.get(i9)).a(this.f1230a, 1, "");
                    }
                }
                a.this.f1224g.clear();
            }
        }
    }

    private a() {
    }

    public static a e() {
        if (f1217i == null) {
            f1217i = new a();
        }
        return f1217i;
    }

    public void c(String str, Drawable drawable) {
        if (this.f1222e.containsKey(str)) {
            return;
        }
        this.f1222e.put(str, drawable);
    }

    public void d(String str, Drawable drawable) {
        if (this.f1221d.containsKey(str)) {
            return;
        }
        this.f1221d.put(str, drawable);
    }

    public Drawable f() {
        LinkedHashMap<String, Drawable> linkedHashMap = this.f1222e;
        if (linkedHashMap == null || linkedHashMap.size() <= 0) {
            return null;
        }
        String[] strArr = (String[]) this.f1222e.keySet().toArray(new String[0]);
        return this.f1222e.get(strArr[this.f1218a.nextInt(strArr.length)]);
    }

    public PromotionData.ResultItem g() {
        return this.f1219b;
    }

    public boolean h() {
        return this.f1223f;
    }

    public void i() {
        this.f1224g.clear();
        this.f1225h.clear();
        this.f1222e.clear();
        this.f1221d.clear();
    }

    public void j(boolean z10) {
        this.f1223f = z10;
    }

    public void k(PromotionData.ResultItem resultItem) {
        this.f1220c = resultItem;
        HandlerGetter.getMainHandler().post(new c(resultItem));
    }

    public void l(od.a<PromotionData.ResultItem> aVar) {
        HandlerGetter.getMainHandler().post(new RunnableC0014a(aVar));
    }

    @MainThread
    public void m(PromotionData.ResultItem resultItem) {
        this.f1219b = resultItem;
        HandlerGetter.getMainHandler().post(new b(resultItem));
    }
}
