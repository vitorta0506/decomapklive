package com.rd;

import androidx.annotation.Nullable;
import ed.b;
/* loaded from: classes4.dex */
public class a implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private id.a f28993a;

    /* renamed from: b  reason: collision with root package name */
    private dd.a f28994b;

    /* renamed from: c  reason: collision with root package name */
    private InterfaceC0286a f28995c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.rd.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0286a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@Nullable InterfaceC0286a interfaceC0286a) {
        this.f28995c = interfaceC0286a;
        id.a aVar = new id.a();
        this.f28993a = aVar;
        this.f28994b = new dd.a(aVar.b(), this);
    }

    @Override // ed.b.a
    public void a(@Nullable fd.a aVar) {
        this.f28993a.g(aVar);
        InterfaceC0286a interfaceC0286a = this.f28995c;
        if (interfaceC0286a != null) {
            interfaceC0286a.a();
        }
    }

    public dd.a b() {
        return this.f28994b;
    }

    public id.a c() {
        return this.f28993a;
    }

    public kd.a d() {
        return this.f28993a.b();
    }
}
