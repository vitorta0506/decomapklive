package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import v0.k;
/* loaded from: classes.dex */
class a implements p0.e {

    /* renamed from: a  reason: collision with root package name */
    private final Set<p0.f> f4647a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private boolean f4648b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f4649c;

    @Override // p0.e
    public void a(@NonNull p0.f fVar) {
        this.f4647a.add(fVar);
        if (this.f4649c) {
            fVar.onDestroy();
        } else if (this.f4648b) {
            fVar.onStart();
        } else {
            fVar.onStop();
        }
    }

    @Override // p0.e
    public void b(@NonNull p0.f fVar) {
        this.f4647a.remove(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f4649c = true;
        for (p0.f fVar : k.j(this.f4647a)) {
            fVar.onDestroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.f4648b = true;
        for (p0.f fVar : k.j(this.f4647a)) {
            fVar.onStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f4648b = false;
        for (p0.f fVar : k.j(this.f4647a)) {
            fVar.onStop();
        }
    }
}
