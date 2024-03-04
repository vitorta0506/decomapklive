package cn.jiguang.supp;

import cn.jiguang.z.a;
import com.bun.miitmdid.core.IIdentifierListener;
import com.bun.miitmdid.supplier.IdSupplier;
/* loaded from: classes.dex */
public class MittIdSupplier implements IIdentifierListener {
    private a mittCall;

    public MittIdSupplier(a aVar) {
        this.mittCall = aVar;
    }

    public void OnSupport(boolean z10, IdSupplier idSupplier) {
        try {
            try {
                this.mittCall.a(z10, idSupplier);
            } catch (Throwable unused) {
                this.mittCall.f2800a.put("");
            }
        } catch (Throwable unused2) {
        }
    }
}
