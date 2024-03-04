package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.RequestCoordinator;
/* loaded from: classes.dex */
public class k implements RequestCoordinator, e {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final RequestCoordinator f4736a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f4737b;

    /* renamed from: c  reason: collision with root package name */
    private volatile e f4738c;

    /* renamed from: d  reason: collision with root package name */
    private volatile e f4739d;
    @GuardedBy("requestLock")

    /* renamed from: e  reason: collision with root package name */
    private RequestCoordinator.RequestState f4740e;
    @GuardedBy("requestLock")

    /* renamed from: f  reason: collision with root package name */
    private RequestCoordinator.RequestState f4741f;
    @GuardedBy("requestLock")

    /* renamed from: g  reason: collision with root package name */
    private boolean f4742g;

    public k(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f4740e = requestState;
        this.f4741f = requestState;
        this.f4737b = obj;
        this.f4736a = requestCoordinator;
    }

    @GuardedBy("requestLock")
    private boolean k() {
        RequestCoordinator requestCoordinator = this.f4736a;
        return requestCoordinator == null || requestCoordinator.j(this);
    }

    @GuardedBy("requestLock")
    private boolean l() {
        RequestCoordinator requestCoordinator = this.f4736a;
        return requestCoordinator == null || requestCoordinator.b(this);
    }

    @GuardedBy("requestLock")
    private boolean m() {
        RequestCoordinator requestCoordinator = this.f4736a;
        return requestCoordinator == null || requestCoordinator.c(this);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.e
    public boolean a() {
        boolean z10;
        synchronized (this.f4737b) {
            z10 = this.f4739d.a() || this.f4738c.a();
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean b(e eVar) {
        boolean z10;
        synchronized (this.f4737b) {
            z10 = l() && eVar.equals(this.f4738c) && !a();
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean c(e eVar) {
        boolean z10;
        synchronized (this.f4737b) {
            z10 = m() && (eVar.equals(this.f4738c) || this.f4740e != RequestCoordinator.RequestState.SUCCESS);
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.e
    public void clear() {
        synchronized (this.f4737b) {
            this.f4742g = false;
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.f4740e = requestState;
            this.f4741f = requestState;
            this.f4739d.clear();
            this.f4738c.clear();
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void d(e eVar) {
        synchronized (this.f4737b) {
            if (!eVar.equals(this.f4738c)) {
                this.f4741f = RequestCoordinator.RequestState.FAILED;
                return;
            }
            this.f4740e = RequestCoordinator.RequestState.FAILED;
            RequestCoordinator requestCoordinator = this.f4736a;
            if (requestCoordinator != null) {
                requestCoordinator.d(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean e() {
        boolean z10;
        synchronized (this.f4737b) {
            z10 = this.f4740e == RequestCoordinator.RequestState.CLEARED;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void f(e eVar) {
        synchronized (this.f4737b) {
            if (eVar.equals(this.f4739d)) {
                this.f4741f = RequestCoordinator.RequestState.SUCCESS;
                return;
            }
            this.f4740e = RequestCoordinator.RequestState.SUCCESS;
            RequestCoordinator requestCoordinator = this.f4736a;
            if (requestCoordinator != null) {
                requestCoordinator.f(this);
            }
            if (!this.f4741f.isComplete()) {
                this.f4739d.clear();
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean g() {
        boolean z10;
        synchronized (this.f4737b) {
            z10 = this.f4740e == RequestCoordinator.RequestState.SUCCESS;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public RequestCoordinator getRoot() {
        RequestCoordinator root;
        synchronized (this.f4737b) {
            RequestCoordinator requestCoordinator = this.f4736a;
            root = requestCoordinator != null ? requestCoordinator.getRoot() : this;
        }
        return root;
    }

    @Override // com.bumptech.glide.request.e
    public boolean h(e eVar) {
        if (eVar instanceof k) {
            k kVar = (k) eVar;
            if (this.f4738c == null) {
                if (kVar.f4738c != null) {
                    return false;
                }
            } else if (!this.f4738c.h(kVar.f4738c)) {
                return false;
            }
            if (this.f4739d == null) {
                if (kVar.f4739d != null) {
                    return false;
                }
            } else if (!this.f4739d.h(kVar.f4739d)) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.request.e
    public void i() {
        synchronized (this.f4737b) {
            this.f4742g = true;
            if (this.f4740e != RequestCoordinator.RequestState.SUCCESS) {
                RequestCoordinator.RequestState requestState = this.f4741f;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2) {
                    this.f4741f = requestState2;
                    this.f4739d.i();
                }
            }
            if (this.f4742g) {
                RequestCoordinator.RequestState requestState3 = this.f4740e;
                RequestCoordinator.RequestState requestState4 = RequestCoordinator.RequestState.RUNNING;
                if (requestState3 != requestState4) {
                    this.f4740e = requestState4;
                    this.f4738c.i();
                }
            }
            this.f4742g = false;
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean isRunning() {
        boolean z10;
        synchronized (this.f4737b) {
            z10 = this.f4740e == RequestCoordinator.RequestState.RUNNING;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean j(e eVar) {
        boolean z10;
        synchronized (this.f4737b) {
            z10 = k() && eVar.equals(this.f4738c) && this.f4740e != RequestCoordinator.RequestState.PAUSED;
        }
        return z10;
    }

    public void n(e eVar, e eVar2) {
        this.f4738c = eVar;
        this.f4739d = eVar2;
    }

    @Override // com.bumptech.glide.request.e
    public void pause() {
        synchronized (this.f4737b) {
            if (!this.f4741f.isComplete()) {
                this.f4741f = RequestCoordinator.RequestState.PAUSED;
                this.f4739d.pause();
            }
            if (!this.f4740e.isComplete()) {
                this.f4740e = RequestCoordinator.RequestState.PAUSED;
                this.f4738c.pause();
            }
        }
    }
}
