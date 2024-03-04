package f;

import java.util.List;
/* loaded from: classes.dex */
public class e extends g<j.d> {

    /* renamed from: i  reason: collision with root package name */
    private final j.d f39531i;

    public e(List<n.a<j.d>> list) {
        super(list);
        j.d dVar = list.get(0).f55176b;
        int c10 = dVar != null ? dVar.c() : 0;
        this.f39531i = new j.d(new float[c10], new int[c10]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // f.a
    /* renamed from: p */
    public j.d i(n.a<j.d> aVar, float f10) {
        this.f39531i.d(aVar.f55176b, aVar.f55177c, f10);
        return this.f39531i;
    }
}
