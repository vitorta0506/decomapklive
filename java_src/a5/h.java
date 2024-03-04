package a5;

import java.io.IOException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h implements k {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t f614a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Set f615b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f616c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ n f617d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(n nVar, t tVar, Set set, AtomicBoolean atomicBoolean) {
        this.f617d = nVar;
        this.f614a = tVar;
        this.f615b = set;
        this.f616c = atomicBoolean;
    }

    @Override // a5.k
    public final void a(ZipFile zipFile, Set set) throws IOException {
        this.f617d.f(this.f614a, set, new g(this));
    }
}
