package com.meizu.cloud.pushsdk.d.b.a;

import com.meizu.cloud.pushsdk.c.c.i;
import com.meizu.cloud.pushsdk.d.b.a;
import com.meizu.cloud.pushsdk.d.b.e;
import com.meizu.cloud.pushsdk.d.b.f;
import com.meizu.cloud.pushsdk.d.b.g;
import com.meizu.cloud.pushsdk.d.d.c;
import com.meizu.cloud.pushsdk.d.d.d;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes4.dex */
public class a extends com.meizu.cloud.pushsdk.d.b.a {

    /* renamed from: h  reason: collision with root package name */
    private final String f28536h;

    /* renamed from: i  reason: collision with root package name */
    private d f28537i;

    /* renamed from: j  reason: collision with root package name */
    private int f28538j;

    public a(a.C0281a c0281a) {
        super(c0281a);
        String simpleName = a.class.getSimpleName();
        this.f28536h = simpleName;
        com.meizu.cloud.pushsdk.d.d.a aVar = new com.meizu.cloud.pushsdk.d.d.a(this.f28517a, this.f28521e);
        this.f28537i = aVar;
        if (aVar.a()) {
            return;
        }
        this.f28537i = new c(this.f28521e);
        com.meizu.cloud.pushsdk.d.f.c.a(simpleName, "init memory store", new Object[0]);
    }

    private LinkedList<g> a(LinkedList<e> linkedList) {
        LinkedList<g> linkedList2 = new LinkedList<>();
        LinkedList linkedList3 = new LinkedList();
        Iterator<e> it = linkedList.iterator();
        while (it.hasNext()) {
            linkedList3.add(b.a(b(it.next().a())));
        }
        com.meizu.cloud.pushsdk.d.f.c.b(this.f28536h, "Request Futures: %s", Integer.valueOf(linkedList3.size()));
        for (int i9 = 0; i9 < linkedList3.size(); i9++) {
            int i10 = -1;
            try {
                i10 = ((Integer) ((Future) linkedList3.get(i9)).get(5L, TimeUnit.SECONDS)).intValue();
            } catch (InterruptedException e10) {
                com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Request Future was interrupted: %s", e10.getMessage());
            } catch (ExecutionException e11) {
                com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Request Future failed: %s", e11.getMessage());
            } catch (TimeoutException e12) {
                com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Request Future had a timeout: %s", e12.getMessage());
            }
            if (linkedList.get(i9).c()) {
                linkedList2.add(new g(true, linkedList.get(i9).b()));
            } else {
                linkedList2.add(new g(a(i10), linkedList.get(i9).b()));
            }
        }
        return linkedList2;
    }

    private Callable<Boolean> a(final Long l10) {
        return new Callable<Boolean>() { // from class: com.meizu.cloud.pushsdk.d.b.a.a.3
            @Override // java.util.concurrent.Callable
            /* renamed from: a */
            public Boolean call() {
                return Boolean.valueOf(a.this.f28537i.a(l10.longValue()));
            }
        };
    }

    private LinkedList<Boolean> b(LinkedList<Long> linkedList) {
        boolean z10;
        LinkedList<Boolean> linkedList2 = new LinkedList<>();
        LinkedList linkedList3 = new LinkedList();
        Iterator<Long> it = linkedList.iterator();
        while (it.hasNext()) {
            linkedList3.add(b.a(a(it.next())));
        }
        com.meizu.cloud.pushsdk.d.f.c.b(this.f28536h, "Removal Futures: %s", Integer.valueOf(linkedList3.size()));
        for (int i9 = 0; i9 < linkedList3.size(); i9++) {
            try {
                z10 = ((Boolean) ((Future) linkedList3.get(i9)).get(5L, TimeUnit.SECONDS)).booleanValue();
            } catch (InterruptedException e10) {
                com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Removal Future was interrupted: %s", e10.getMessage());
                z10 = false;
                linkedList2.add(Boolean.valueOf(z10));
            } catch (ExecutionException e11) {
                com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Removal Future failed: %s", e11.getMessage());
                z10 = false;
                linkedList2.add(Boolean.valueOf(z10));
            } catch (TimeoutException e12) {
                com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Removal Future had a timeout: %s", e12.getMessage());
                z10 = false;
                linkedList2.add(Boolean.valueOf(z10));
            }
            linkedList2.add(Boolean.valueOf(z10));
        }
        return linkedList2;
    }

    private Callable<Integer> b(final i iVar) {
        return new Callable<Integer>() { // from class: com.meizu.cloud.pushsdk.d.b.a.a.2
            @Override // java.util.concurrent.Callable
            /* renamed from: a */
            public Integer call() {
                return Integer.valueOf(a.this.a(iVar));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (com.meizu.cloud.pushsdk.d.f.e.a(this.f28517a)) {
            if (this.f28537i.c() > 0) {
                this.f28538j = 0;
                LinkedList<g> a10 = a(a(this.f28537i.d()));
                com.meizu.cloud.pushsdk.d.f.c.c(this.f28536h, "Processing emitter results.", new Object[0]);
                LinkedList<Long> linkedList = new LinkedList<>();
                Iterator<g> it = a10.iterator();
                int i9 = 0;
                int i10 = 0;
                while (it.hasNext()) {
                    g next = it.next();
                    if (next.a()) {
                        linkedList.addAll(next.b());
                        i9 += next.b().size();
                    } else {
                        i10 += next.b().size();
                        com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Request sending failed but we will retry later.", new Object[0]);
                    }
                }
                b(linkedList);
                com.meizu.cloud.pushsdk.d.f.c.b(this.f28536h, "Success Count: %s", Integer.valueOf(i9));
                com.meizu.cloud.pushsdk.d.f.c.b(this.f28536h, "Failure Count: %s", Integer.valueOf(i10));
                f fVar = this.f28518b;
                if (fVar != null) {
                    if (i10 != 0) {
                        fVar.a(i9, i10);
                    } else {
                        fVar.a(i9);
                    }
                }
                if (i10 > 0 && i9 == 0) {
                    if (com.meizu.cloud.pushsdk.d.f.e.a(this.f28517a)) {
                        com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Ensure collector path is valid: %s", b());
                    }
                    com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Emitter loop stopping: failures.", new Object[0]);
                }
            } else {
                int i11 = this.f28538j;
                if (i11 >= this.f28520d) {
                    com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Emitter loop stopping: empty limit reached.", new Object[0]);
                    this.f28523g.compareAndSet(true, false);
                    f fVar2 = this.f28518b;
                    if (fVar2 != null) {
                        fVar2.a(true);
                        return;
                    }
                    return;
                }
                this.f28538j = i11 + 1;
                String str = this.f28536h;
                com.meizu.cloud.pushsdk.d.f.c.a(str, "Emitter database empty: " + this.f28538j, new Object[0]);
                try {
                    this.f28522f.sleep(this.f28519c);
                } catch (InterruptedException e10) {
                    String str2 = this.f28536h;
                    com.meizu.cloud.pushsdk.d.f.c.a(str2, "Emitter thread sleep interrupted: " + e10.toString(), new Object[0]);
                }
            }
            c();
            return;
        }
        com.meizu.cloud.pushsdk.d.f.c.a(this.f28536h, "Emitter loop stopping: emitter offline.", new Object[0]);
        this.f28523g.compareAndSet(true, false);
    }

    @Override // com.meizu.cloud.pushsdk.d.b.a
    public void a() {
        b.a(new Runnable() { // from class: com.meizu.cloud.pushsdk.d.b.a.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (((com.meizu.cloud.pushsdk.d.b.a) a.this).f28523g.compareAndSet(false, true)) {
                    a.this.c();
                }
            }
        });
    }

    @Override // com.meizu.cloud.pushsdk.d.b.a
    public void a(com.meizu.cloud.pushsdk.d.a.a aVar, boolean z10) {
        this.f28537i.a(aVar);
        String str = this.f28536h;
        com.meizu.cloud.pushsdk.d.f.c.a(str, "isRunning " + this.f28523g + " attemptEmit " + z10, new Object[0]);
        if (!z10) {
            try {
                this.f28522f.sleep(1L);
            } catch (InterruptedException e10) {
                String str2 = this.f28536h;
                com.meizu.cloud.pushsdk.d.f.c.a(str2, "Emitter add thread sleep interrupted: " + e10.toString(), new Object[0]);
            }
        }
        if (this.f28523g.compareAndSet(false, true)) {
            c();
        }
    }
}
