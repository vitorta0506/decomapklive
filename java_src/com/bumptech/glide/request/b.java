package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.RequestCoordinator;
/* loaded from: classes.dex */
public final class b implements RequestCoordinator, e {

    /* renamed from: a  reason: collision with root package name */
    private final Object f4686a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final RequestCoordinator f4687b;

    /* renamed from: c  reason: collision with root package name */
    private volatile e f4688c;

    /* renamed from: d  reason: collision with root package name */
    private volatile e f4689d;
    @GuardedBy("requestLock")

    /* renamed from: e  reason: collision with root package name */
    private RequestCoordinator.RequestState f4690e;
    @GuardedBy("requestLock")

    /* renamed from: f  reason: collision with root package name */
    private RequestCoordinator.RequestState f4691f;

    public b(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f4690e = requestState;
        this.f4691f = requestState;
        this.f4686a = obj;
        this.f4687b = requestCoordinator;
    }

    @GuardedBy("requestLock")
    private boolean k(e eVar) {
        return eVar.equals(this.f4688c) || (this.f4690e == RequestCoordinator.RequestState.FAILED && eVar.equals(this.f4689d));
    }

    @GuardedBy("requestLock")
    private boolean l() {
        RequestCoordinator requestCoordinator = this.f4687b;
        return requestCoordinator == null || requestCoordinator.j(this);
    }

    @GuardedBy("requestLock")
    private boolean m() {
        RequestCoordinator requestCoordinator = this.f4687b;
        return requestCoordinator == null || requestCoordinator.b(this);
    }

    @GuardedBy("requestLock")
    private boolean n() {
        RequestCoordinator requestCoordinator = this.f4687b;
        return requestCoordinator == null || requestCoordinator.c(this);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.e
    public boolean a() {
        boolean z10;
        synchronized (this.f4686a) {
            z10 = this.f4688c.a() || this.f4689d.a();
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean b(e eVar) {
        boolean z10;
        synchronized (this.f4686a) {
            z10 = m() && k(eVar);
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean c(e eVar) {
        boolean z10;
        synchronized (this.f4686a) {
            z10 = n() && k(eVar);
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.e
    public void clear() {
        synchronized (this.f4686a) {
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.f4690e = requestState;
            this.f4688c.clear();
            if (this.f4691f != requestState) {
                this.f4691f = requestState;
                this.f4689d.clear();
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void d(e eVar) {
        synchronized (this.f4686a) {
            if (!eVar.equals(this.f4689d)) {
                this.f4690e = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator.RequestState requestState = this.f4691f;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2) {
                    this.f4691f = requestState2;
                    this.f4689d.i();
                }
                return;
            }
            this.f4691f = RequestCoordinator.RequestState.FAILED;
            RequestCoordinator requestCoordinator = this.f4687b;
            if (requestCoordinator != null) {
                requestCoordinator.d(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean e() {
        boolean z10;
        synchronized (this.f4686a) {
            RequestCoordinator.RequestState requestState = this.f4690e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.CLEARED;
            z10 = requestState == requestState2 && this.f4691f == requestState2;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void f(e eVar) {
        synchronized (this.f4686a) {
            if (eVar.equals(this.f4688c)) {
                this.f4690e = RequestCoordinator.RequestState.SUCCESS;
            } else if (eVar.equals(this.f4689d)) {
                this.f4691f = RequestCoordinator.RequestState.SUCCESS;
            }
            RequestCoordinator requestCoordinator = this.f4687b;
            if (requestCoordinator != null) {
                requestCoordinator.f(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean g() {
        boolean z10;
        synchronized (this.f4686a) {
            RequestCoordinator.RequestState requestState = this.f4690e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.SUCCESS;
            z10 = requestState == requestState2 || this.f4691f == requestState2;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public RequestCoordinator getRoot() {
        RequestCoordinator root;
        synchronized (this.f4686a) {
            RequestCoordinator requestCoordinator = this.f4687b;
            root = requestCoordinator != null ? requestCoordinator.getRoot() : this;
        }
        return root;
    }

    @Override // com.bumptech.glide.request.e
    public boolean h(e eVar) {
        if (eVar instanceof b) {
            b bVar = (b) eVar;
            return this.f4688c.h(bVar.f4688c) && this.f4689d.h(bVar.f4689d);
        }
        return false;
    }

    @Override // com.bumptech.glide.request.e
    public void i() {
        synchronized (this.f4686a) {
            RequestCoordinator.RequestState requestState = this.f4690e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState != requestState2) {
                this.f4690e = requestState2;
                this.f4688c.i();
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean isRunning() {
        boolean z10;
        synchronized (this.f4686a) {
            RequestCoordinator.RequestState requestState = this.f4690e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            z10 = requestState == requestState2 || this.f4691f == requestState2;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean j(e eVar) {
        boolean z10;
        synchronized (this.f4686a) {
            z10 = l() && k(eVar);
        }
        return z10;
    }

    public void o(e eVar, e eVar2) {
        this.f4688c = eVar;
        this.f4689d = eVar2;
    }

    @Override // com.bumptech.glide.request.e
    public void pause() {
        synchronized (this.f4686a) {
            RequestCoordinator.RequestState requestState = this.f4690e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState == requestState2) {
                this.f4690e = RequestCoordinator.RequestState.PAUSED;
                this.f4688c.pause();
            }
            if (this.f4691f == requestState2) {
                this.f4691f = RequestCoordinator.RequestState.PAUSED;
                this.f4689d.pause();
            }
        }
    }
}
