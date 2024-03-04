package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class o9 extends n {

    /* renamed from: b  reason: collision with root package name */
    private final c f8238b;

    public o9(c cVar) {
        this.f8238b = cVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.measurement.n, com.google.android.gms.internal.measurement.q
    public final q u(String str, t4 t4Var, List list) {
        char c10;
        switch (str.hashCode()) {
            case 21624207:
                if (str.equals("getEventName")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 == 0) {
            u5.h("getEventName", 0, list);
            return new u(this.f8238b.b().d());
        } else if (c10 == 1) {
            u5.h("getParamValue", 1, list);
            return v6.b(this.f8238b.b().c(t4Var.b((q) list.get(0)).d()));
        } else if (c10 == 2) {
            u5.h("getParams", 0, list);
            Map e10 = this.f8238b.b().e();
            n nVar = new n();
            for (String str2 : e10.keySet()) {
                nVar.n(str2, v6.b(e10.get(str2)));
            }
            return nVar;
        } else if (c10 == 3) {
            u5.h("getTimestamp", 0, list);
            return new i(Double.valueOf(this.f8238b.b().a()));
        } else if (c10 != 4) {
            if (c10 != 5) {
                return super.u(str, t4Var, list);
            }
            u5.h("setParamValue", 2, list);
            String d10 = t4Var.b((q) list.get(0)).d();
            q b10 = t4Var.b((q) list.get(1));
            this.f8238b.b().g(d10, u5.f(b10));
            return b10;
        } else {
            u5.h("setEventName", 1, list);
            q b11 = t4Var.b((q) list.get(0));
            if (!q.U.equals(b11) && !q.V.equals(b11)) {
                this.f8238b.b().f(b11.d());
                return new u(b11.d());
            }
            throw new IllegalArgumentException("Illegal event name");
        }
    }
}
