package a5;

import java.io.IOException;
import java.util.Set;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class i implements k {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Set f618a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ t f619b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ n f620c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(n nVar, Set set, t tVar) {
        this.f620c = nVar;
        this.f618a = set;
        this.f619b = tVar;
    }

    @Override // a5.k
    public final void a(ZipFile zipFile, Set set) throws IOException {
        this.f618a.addAll(n.a(this.f620c, set, this.f619b, zipFile));
    }
}
