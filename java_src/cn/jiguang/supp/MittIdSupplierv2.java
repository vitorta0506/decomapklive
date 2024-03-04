package cn.jiguang.supp;

import cn.jiguang.aa.a;
import com.bun.supplier.IIdentifierListener;
import com.bun.supplier.IdSupplier;
/* loaded from: classes.dex */
public class MittIdSupplierv2 implements IIdentifierListener {
    private a mittCall;

    public MittIdSupplierv2(a aVar) {
        this.mittCall = aVar;
    }

    public void OnSupport(boolean z10, IdSupplier idSupplier) {
        try {
            try {
                this.mittCall.a(z10, idSupplier);
            } catch (Throwable unused) {
                this.mittCall.f1819a.put("");
            }
        } catch (Throwable unused2) {
        }
    }
}
