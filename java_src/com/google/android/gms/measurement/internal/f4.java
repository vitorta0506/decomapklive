package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.ee;
import java.util.List;
/* loaded from: classes2.dex */
final class f4 implements ee {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h4 f9402a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f4(h4 h4Var) {
        this.f9402a = h4Var;
    }

    @Override // com.google.android.gms.internal.measurement.ee
    public final void a(int i9, String str, List list, boolean z10, boolean z11) {
        h3 q10;
        int i10 = i9 - 1;
        if (i10 == 0) {
            q10 = this.f9402a.f9432a.b().q();
        } else if (i10 != 1) {
            if (i10 == 3) {
                q10 = this.f9402a.f9432a.b().v();
            } else if (i10 != 4) {
                q10 = this.f9402a.f9432a.b().u();
            } else if (z10) {
                q10 = this.f9402a.f9432a.b().y();
            } else if (!z11) {
                q10 = this.f9402a.f9432a.b().x();
            } else {
                q10 = this.f9402a.f9432a.b().w();
            }
        } else if (z10) {
            q10 = this.f9402a.f9432a.b().t();
        } else if (!z11) {
            q10 = this.f9402a.f9432a.b().s();
        } else {
            q10 = this.f9402a.f9432a.b().r();
        }
        int size = list.size();
        if (size == 1) {
            q10.b(str, list.get(0));
        } else if (size == 2) {
            q10.c(str, list.get(0), list.get(1));
        } else if (size != 3) {
            q10.a(str);
        } else {
            q10.d(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
