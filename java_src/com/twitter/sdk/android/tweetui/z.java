package com.twitter.sdk.android.tweetui;

import android.os.Handler;
import android.text.TextUtils;
import androidx.collection.LruCache;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterException;
/* loaded from: classes4.dex */
class z {

    /* renamed from: a  reason: collision with root package name */
    private final com.twitter.sdk.android.core.q f35593a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f35594b;

    /* renamed from: c  reason: collision with root package name */
    private final com.twitter.sdk.android.core.k<com.twitter.sdk.android.core.s> f35595c;

    /* renamed from: d  reason: collision with root package name */
    final LruCache<Long, com.twitter.sdk.android.core.models.l> f35596d;

    /* renamed from: e  reason: collision with root package name */
    final LruCache<Long, h> f35597e;

    /* loaded from: classes4.dex */
    class a extends m<com.twitter.sdk.android.core.s> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f35598c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.twitter.sdk.android.core.b f35599d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.twitter.sdk.android.core.b bVar, com.twitter.sdk.android.core.g gVar, long j10, com.twitter.sdk.android.core.b bVar2) {
            super(bVar, gVar);
            this.f35598c = j10;
            this.f35599d = bVar2;
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<com.twitter.sdk.android.core.s> iVar) {
            z.this.f35593a.f(iVar.f35121a).e().create(Long.valueOf(this.f35598c), Boolean.FALSE).enqueue(this.f35599d);
        }
    }

    /* loaded from: classes4.dex */
    class b extends m<com.twitter.sdk.android.core.s> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f35601c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.twitter.sdk.android.core.b f35602d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(com.twitter.sdk.android.core.b bVar, com.twitter.sdk.android.core.g gVar, long j10, com.twitter.sdk.android.core.b bVar2) {
            super(bVar, gVar);
            this.f35601c = j10;
            this.f35602d = bVar2;
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<com.twitter.sdk.android.core.s> iVar) {
            z.this.f35593a.f(iVar.f35121a).e().destroy(Long.valueOf(this.f35601c), Boolean.FALSE).enqueue(this.f35602d);
        }
    }

    /* loaded from: classes4.dex */
    class c extends com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> {

        /* renamed from: a  reason: collision with root package name */
        final com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> f35604a;

        c(com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar) {
            this.f35604a = bVar;
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            this.f35604a.a(twitterException);
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<com.twitter.sdk.android.core.models.l> iVar) {
            com.twitter.sdk.android.core.models.l lVar = iVar.f35121a;
            z.this.j(lVar);
            com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar = this.f35604a;
            if (bVar != null) {
                bVar.b(new com.twitter.sdk.android.core.i<>(lVar, iVar.f35122b));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(Handler handler, com.twitter.sdk.android.core.k<com.twitter.sdk.android.core.s> kVar) {
        this(handler, kVar, com.twitter.sdk.android.core.q.k());
    }

    private void c(final com.twitter.sdk.android.core.models.l lVar, final com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar) {
        if (bVar == null) {
            return;
        }
        this.f35594b.post(new Runnable() { // from class: com.twitter.sdk.android.tweetui.y
            @Override // java.lang.Runnable
            public final void run() {
                z.g(com.twitter.sdk.android.core.b.this, lVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(com.twitter.sdk.android.core.b bVar, com.twitter.sdk.android.core.models.l lVar) {
        bVar.b(new com.twitter.sdk.android.core.i(lVar, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(long j10, com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar) {
        f(new a(bVar, com.twitter.sdk.android.core.l.g(), j10, bVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h e(com.twitter.sdk.android.core.models.l lVar) {
        if (lVar == null) {
            return null;
        }
        h hVar = this.f35597e.get(Long.valueOf(lVar.f35263i));
        if (hVar != null) {
            return hVar;
        }
        h f10 = c0.f(lVar);
        if (f10 != null && !TextUtils.isEmpty(f10.f35442a)) {
            this.f35597e.put(Long.valueOf(lVar.f35263i), f10);
        }
        return f10;
    }

    void f(com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.s> bVar) {
        com.twitter.sdk.android.core.s d10 = this.f35595c.d();
        if (d10 == null) {
            bVar.a(new TwitterAuthException("User authorization required"));
        } else {
            bVar.b(new com.twitter.sdk.android.core.i<>(d10, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(long j10, com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar) {
        com.twitter.sdk.android.core.models.l lVar = this.f35596d.get(Long.valueOf(j10));
        if (lVar != null) {
            c(lVar, bVar);
        } else {
            this.f35593a.e().h().show(Long.valueOf(j10), null, null, null).enqueue(new c(bVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(long j10, com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar) {
        f(new b(bVar, com.twitter.sdk.android.core.l.g(), j10, bVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(com.twitter.sdk.android.core.models.l lVar) {
        this.f35596d.put(Long.valueOf(lVar.f35263i), lVar);
    }

    z(Handler handler, com.twitter.sdk.android.core.k<com.twitter.sdk.android.core.s> kVar, com.twitter.sdk.android.core.q qVar) {
        this.f35593a = qVar;
        this.f35594b = handler;
        this.f35595c = kVar;
        this.f35596d = new LruCache<>(20);
        this.f35597e = new LruCache<>(20);
    }
}
