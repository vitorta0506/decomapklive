package a5;

import java.io.File;
import java.io.IOException;
/* loaded from: classes2.dex */
final class g implements l {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f613a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(h hVar) {
        this.f613a = hVar;
    }

    @Override // a5.l
    public final void a(m mVar, File file, boolean z10) throws IOException {
        this.f613a.f615b.add(file);
        if (z10) {
            return;
        }
        this.f613a.f616c.set(false);
    }
}
