package eh;

import com.guochao.faceshow.utils.Contants;
import eh.j2;
import io.grpc.n0;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
final class m2 extends n0.i {

    /* renamed from: a  reason: collision with root package name */
    final List<a> f38892a;

    /* renamed from: b  reason: collision with root package name */
    private final j2 f38893b;

    /* renamed from: c  reason: collision with root package name */
    private final int f38894c;

    /* loaded from: classes5.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f38895a;

        /* renamed from: b  reason: collision with root package name */
        private final n0.i f38896b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i9, n0.i iVar) {
            com.google.common.base.o.e(i9 >= 0, "weight is negative");
            com.google.common.base.o.t(iVar, "childPicker is null");
            this.f38895a = i9;
            this.f38896b = iVar;
        }

        n0.i a() {
            return this.f38896b;
        }

        int b() {
            return this.f38895a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f38895a == aVar.f38895a && Objects.equals(this.f38896b, aVar.f38896b);
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f38895a), this.f38896b);
        }

        public String toString() {
            return com.google.common.base.j.c(this).b(Contants.Weight, this.f38895a).d("childPicker", this.f38896b).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m2(List<a> list) {
        this(list, j2.a.f38802a);
    }

    @Override // io.grpc.n0.i
    public final n0.e a(n0.f fVar) {
        n0.i iVar;
        int i9 = this.f38894c;
        if (i9 == 0) {
            List<a> list = this.f38892a;
            iVar = list.get(this.f38893b.b(list.size())).a();
        } else {
            int b10 = this.f38893b.b(i9);
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (i10 >= this.f38892a.size()) {
                    iVar = null;
                    break;
                }
                i11 += this.f38892a.get(i10).b();
                if (b10 < i11) {
                    iVar = this.f38892a.get(i10).a();
                    break;
                }
                i10++;
            }
            com.google.common.base.o.t(iVar, "childPicker not found");
        }
        return iVar.a(fVar);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("weightedChildPickers", this.f38892a).b("totalWeight", this.f38894c).toString();
    }

    m2(List<a> list, j2 j2Var) {
        com.google.common.base.o.t(list, "weightedChildPickers in null");
        com.google.common.base.o.e(!list.isEmpty(), "weightedChildPickers is empty");
        this.f38892a = Collections.unmodifiableList(list);
        int i9 = 0;
        for (a aVar : list) {
            i9 += aVar.b();
        }
        this.f38894c = i9;
        this.f38893b = j2Var;
    }
}
