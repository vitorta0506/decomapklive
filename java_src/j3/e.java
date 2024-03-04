package j3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class e implements i {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f53017a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<b0> f53018b = new ArrayList<>(1);

    /* renamed from: c  reason: collision with root package name */
    private int f53019c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private l f53020d;

    /* JADX INFO: Access modifiers changed from: protected */
    public e(boolean z10) {
        this.f53017a = z10;
    }

    @Override // j3.i
    public final void c(b0 b0Var) {
        com.google.android.exoplayer2.util.a.e(b0Var);
        if (this.f53018b.contains(b0Var)) {
            return;
        }
        this.f53018b.add(b0Var);
        this.f53019c++;
    }

    @Override // j3.i
    public /* synthetic */ Map e() {
        return h.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void n(int i9) {
        l lVar = (l) l0.j(this.f53020d);
        for (int i10 = 0; i10 < this.f53019c; i10++) {
            this.f53018b.get(i10).e(this, lVar, this.f53017a, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void o() {
        l lVar = (l) l0.j(this.f53020d);
        for (int i9 = 0; i9 < this.f53019c; i9++) {
            this.f53018b.get(i9).a(this, lVar, this.f53017a);
        }
        this.f53020d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void p(l lVar) {
        for (int i9 = 0; i9 < this.f53019c; i9++) {
            this.f53018b.get(i9).d(this, lVar, this.f53017a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void q(l lVar) {
        this.f53020d = lVar;
        for (int i9 = 0; i9 < this.f53019c; i9++) {
            this.f53018b.get(i9).b(this, lVar, this.f53017a);
        }
    }
}
