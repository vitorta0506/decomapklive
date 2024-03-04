package cn.jiguang.aa;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.supp.MittIdSupplierv2;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.supplier.IdSupplier;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedBlockingQueue<String> f1819a = new LinkedBlockingQueue<>(1);

    /* renamed from: b  reason: collision with root package name */
    private Context f1820b;

    public a(Context context) {
        this.f1820b = context;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public String call() {
        try {
            int InitSdk = MdidSdkHelper.InitSdk(this.f1820b, false, new MittIdSupplierv2(this));
            return (InitSdk == 0 || InitSdk == 1008614) ? this.f1819a.take() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public void a(boolean z10, IdSupplier idSupplier) {
        try {
            try {
                if (idSupplier == null) {
                    this.f1819a.put("");
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                String oaid = idSupplier.getOAID();
                String vaid = idSupplier.getVAID();
                String aaid = idSupplier.getAAID();
                if (!TextUtils.isEmpty(oaid)) {
                    jSONObject.put("oaid", oaid);
                }
                if (!TextUtils.isEmpty(vaid)) {
                    jSONObject.put("vaid", vaid);
                }
                if (!TextUtils.isEmpty(aaid)) {
                    jSONObject.put("aaid", aaid);
                }
                this.f1819a.put(jSONObject.toString());
            } catch (Throwable unused) {
                this.f1819a.put("");
            }
        } catch (Throwable unused2) {
        }
    }
}
