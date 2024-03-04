package com.meizu.cloud.pushsdk.c.e;

import com.meizu.cloud.pushsdk.c.c.g;
import com.meizu.cloud.pushsdk.c.c.j;
import com.meizu.cloud.pushsdk.c.g.f;
import com.meizu.cloud.pushsdk.c.g.l;
import java.io.IOException;
/* loaded from: classes4.dex */
public class b extends j {

    /* renamed from: a  reason: collision with root package name */
    private final j f28464a;

    /* renamed from: b  reason: collision with root package name */
    private com.meizu.cloud.pushsdk.c.g.c f28465b;

    /* renamed from: c  reason: collision with root package name */
    private d f28466c;

    public b(j jVar, com.meizu.cloud.pushsdk.c.d.a aVar) {
        this.f28464a = jVar;
        if (aVar != null) {
            this.f28466c = new d(aVar);
        }
    }

    private l a(l lVar) {
        return new f(lVar) { // from class: com.meizu.cloud.pushsdk.c.e.b.1

            /* renamed from: a  reason: collision with root package name */
            long f28467a = 0;

            /* renamed from: b  reason: collision with root package name */
            long f28468b = 0;

            @Override // com.meizu.cloud.pushsdk.c.g.f, com.meizu.cloud.pushsdk.c.g.l
            public void a(com.meizu.cloud.pushsdk.c.g.b bVar, long j10) throws IOException {
                super.a(bVar, j10);
                if (this.f28468b == 0) {
                    this.f28468b = b.this.b();
                }
                this.f28467a += j10;
                if (b.this.f28466c != null) {
                    b.this.f28466c.obtainMessage(1, new com.meizu.cloud.pushsdk.c.f.a(this.f28467a, this.f28468b)).sendToTarget();
                }
            }
        };
    }

    @Override // com.meizu.cloud.pushsdk.c.c.j
    public g a() {
        return this.f28464a.a();
    }

    @Override // com.meizu.cloud.pushsdk.c.c.j
    public void a(com.meizu.cloud.pushsdk.c.g.c cVar) throws IOException {
        if (this.f28465b == null) {
            this.f28465b = com.meizu.cloud.pushsdk.c.g.g.a(a((l) cVar));
        }
        this.f28464a.a(this.f28465b);
        this.f28465b.flush();
    }

    @Override // com.meizu.cloud.pushsdk.c.c.j
    public long b() throws IOException {
        return this.f28464a.b();
    }
}
