package p0;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final Set<com.bumptech.glide.request.e> f56701a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private final Set<com.bumptech.glide.request.e> f56702b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private boolean f56703c;

    public boolean a(@Nullable com.bumptech.glide.request.e eVar) {
        boolean z10 = true;
        if (eVar == null) {
            return true;
        }
        boolean remove = this.f56701a.remove(eVar);
        if (!this.f56702b.remove(eVar) && !remove) {
            z10 = false;
        }
        if (z10) {
            eVar.clear();
        }
        return z10;
    }

    public void b() {
        for (com.bumptech.glide.request.e eVar : v0.k.j(this.f56701a)) {
            a(eVar);
        }
        this.f56702b.clear();
    }

    public void c() {
        this.f56703c = true;
        for (com.bumptech.glide.request.e eVar : v0.k.j(this.f56701a)) {
            if (eVar.isRunning() || eVar.g()) {
                eVar.clear();
                this.f56702b.add(eVar);
            }
        }
    }

    public void d() {
        this.f56703c = true;
        for (com.bumptech.glide.request.e eVar : v0.k.j(this.f56701a)) {
            if (eVar.isRunning()) {
                eVar.pause();
                this.f56702b.add(eVar);
            }
        }
    }

    public void e() {
        for (com.bumptech.glide.request.e eVar : v0.k.j(this.f56701a)) {
            if (!eVar.g() && !eVar.e()) {
                eVar.clear();
                if (!this.f56703c) {
                    eVar.i();
                } else {
                    this.f56702b.add(eVar);
                }
            }
        }
    }

    public void f() {
        this.f56703c = false;
        for (com.bumptech.glide.request.e eVar : v0.k.j(this.f56701a)) {
            if (!eVar.g() && !eVar.isRunning()) {
                eVar.i();
            }
        }
        this.f56702b.clear();
    }

    public void g(@NonNull com.bumptech.glide.request.e eVar) {
        this.f56701a.add(eVar);
        if (!this.f56703c) {
            eVar.i();
            return;
        }
        eVar.clear();
        if (Log.isLoggable("RequestTracker", 2)) {
            Log.v("RequestTracker", "Paused, delaying request");
        }
        this.f56702b.add(eVar);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f56701a.size() + ", isPaused=" + this.f56703c + "}";
    }
}
