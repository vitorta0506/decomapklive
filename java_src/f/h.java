package f;

import android.graphics.Path;
import com.airbnb.lottie.model.content.Mask;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<j.h, Path>> f39532a;

    /* renamed from: b  reason: collision with root package name */
    private final List<a<Integer, Integer>> f39533b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Mask> f39534c;

    public h(List<Mask> list) {
        this.f39534c = list;
        this.f39532a = new ArrayList(list.size());
        this.f39533b = new ArrayList(list.size());
        for (int i9 = 0; i9 < list.size(); i9++) {
            this.f39532a.add(list.get(i9).b().a());
            this.f39533b.add(list.get(i9).c().a());
        }
    }

    public List<a<j.h, Path>> a() {
        return this.f39532a;
    }

    public List<Mask> b() {
        return this.f39534c;
    }

    public List<a<Integer, Integer>> c() {
        return this.f39533b;
    }
}
