package f;

import android.graphics.Path;
import java.util.List;
/* loaded from: classes.dex */
public class m extends a<j.h, Path> {

    /* renamed from: i  reason: collision with root package name */
    private final j.h f39543i;

    /* renamed from: j  reason: collision with root package name */
    private final Path f39544j;

    public m(List<n.a<j.h>> list) {
        super(list);
        this.f39543i = new j.h();
        this.f39544j = new Path();
    }

    @Override // f.a
    /* renamed from: p */
    public Path i(n.a<j.h> aVar, float f10) {
        this.f39543i.c(aVar.f55176b, aVar.f55177c, f10);
        m.g.i(this.f39543i, this.f39544j);
        return this.f39544j;
    }
}
