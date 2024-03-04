package e;

import android.graphics.Path;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes.dex */
public class l implements m, j {

    /* renamed from: d  reason: collision with root package name */
    private final String f38249d;

    /* renamed from: f  reason: collision with root package name */
    private final MergePaths f38251f;

    /* renamed from: a  reason: collision with root package name */
    private final Path f38246a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final Path f38247b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final Path f38248c = new Path();

    /* renamed from: e  reason: collision with root package name */
    private final List<m> f38250e = new ArrayList();

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f38252a;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            f38252a = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38252a[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38252a[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38252a[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38252a[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public l(MergePaths mergePaths) {
        this.f38249d = mergePaths.c();
        this.f38251f = mergePaths;
    }

    private void a() {
        for (int i9 = 0; i9 < this.f38250e.size(); i9++) {
            this.f38248c.addPath(this.f38250e.get(i9).getPath());
        }
    }

    private void c(Path.Op op) {
        this.f38247b.reset();
        this.f38246a.reset();
        for (int size = this.f38250e.size() - 1; size >= 1; size--) {
            m mVar = this.f38250e.get(size);
            if (mVar instanceof d) {
                d dVar = (d) mVar;
                List<m> i9 = dVar.i();
                for (int size2 = i9.size() - 1; size2 >= 0; size2--) {
                    Path path = i9.get(size2).getPath();
                    path.transform(dVar.j());
                    this.f38247b.addPath(path);
                }
            } else {
                this.f38247b.addPath(mVar.getPath());
            }
        }
        m mVar2 = this.f38250e.get(0);
        if (mVar2 instanceof d) {
            d dVar2 = (d) mVar2;
            List<m> i10 = dVar2.i();
            for (int i11 = 0; i11 < i10.size(); i11++) {
                Path path2 = i10.get(i11).getPath();
                path2.transform(dVar2.j());
                this.f38246a.addPath(path2);
            }
        } else {
            this.f38246a.set(mVar2.getPath());
        }
        this.f38248c.op(this.f38246a, this.f38247b, op);
    }

    @Override // e.c
    public void b(List<c> list, List<c> list2) {
        for (int i9 = 0; i9 < this.f38250e.size(); i9++) {
            this.f38250e.get(i9).b(list, list2);
        }
    }

    @Override // e.j
    public void f(ListIterator<c> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            c previous = listIterator.previous();
            if (previous instanceof m) {
                this.f38250e.add((m) previous);
                listIterator.remove();
            }
        }
    }

    @Override // e.m
    public Path getPath() {
        this.f38248c.reset();
        if (this.f38251f.d()) {
            return this.f38248c;
        }
        int i9 = a.f38252a[this.f38251f.b().ordinal()];
        if (i9 == 1) {
            a();
        } else if (i9 == 2) {
            c(Path.Op.UNION);
        } else if (i9 == 3) {
            c(Path.Op.REVERSE_DIFFERENCE);
        } else if (i9 == 4) {
            c(Path.Op.INTERSECT);
        } else if (i9 == 5) {
            c(Path.Op.XOR);
        }
        return this.f38248c;
    }
}
