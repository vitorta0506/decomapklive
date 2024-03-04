package cn.jiguang.z;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.supp.MittIdSupplier;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.supplier.IdSupplier;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedBlockingQueue<String> f2800a = new LinkedBlockingQueue<>(1);

    /* renamed from: b  reason: collision with root package name */
    private Context f2801b;

    public a(Context context) {
        this.f2801b = context;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public String call() {
        try {
            int InitSdk = MdidSdkHelper.InitSdk(this.f2801b, false, new MittIdSupplier(this));
            return (InitSdk == 0 || InitSdk == 1008614) ? this.f2800a.take() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public void a(boolean z10, IdSupplier idSupplier) {
        try {
            try {
                if (idSupplier == null) {
                    this.f2800a.put("");
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
                this.f2800a.put(jSONObject.toString());
            } catch (Throwable unused) {
                this.f2800a.put("");
            }
        } catch (Throwable unused2) {
        }
    }
}
