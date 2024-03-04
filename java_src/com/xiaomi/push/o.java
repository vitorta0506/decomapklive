package com.xiaomi.push;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5.dex */
class o extends i {

    /* renamed from: o  reason: collision with root package name */
    i f37006o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ i f37007p;

    /* renamed from: q  reason: collision with root package name */
    final /* synthetic */ m f37008q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(m mVar, String str, i iVar) {
        super(str);
        this.f37008q = mVar;
        this.f37007p = iVar;
        this.f37006o = iVar;
        this.f36898d = this.f36898d;
        if (iVar != null) {
            this.f36902h = iVar.f36902h;
        }
    }

    @Override // com.xiaomi.push.i
    public synchronized ArrayList<String> e(boolean z10) {
        ArrayList<String> arrayList;
        arrayList = new ArrayList<>();
        i iVar = this.f37006o;
        if (iVar != null) {
            arrayList.addAll(iVar.e(true));
        }
        Map<String, i> map = m.f36966i;
        synchronized (map) {
            i iVar2 = map.get(this.f36898d);
            if (iVar2 != null) {
                Iterator<String> it = iVar2.e(true).iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (arrayList.indexOf(next) == -1) {
                        arrayList.add(next);
                    }
                }
                arrayList.remove(this.f36898d);
                arrayList.add(this.f36898d);
            }
        }
        return arrayList;
    }

    @Override // com.xiaomi.push.i
    public synchronized void n(String str, h hVar) {
        i iVar = this.f37006o;
        if (iVar != null) {
            iVar.n(str, hVar);
        }
    }

    @Override // com.xiaomi.push.i
    public boolean u() {
        return false;
    }
}
