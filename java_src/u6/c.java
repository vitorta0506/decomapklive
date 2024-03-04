package u6;

import com.facebook.AuthenticationTokenClaims;
import com.google.api.gax.retrying.RetrySettings;
import com.google.api.gax.rpc.StatusCode;
import com.google.api.gax.rpc.g0;
import com.google.api.gax.rpc.j;
import com.google.api.gax.rpc.j0;
import com.google.api.gax.rpc.v;
import com.google.api.gax.rpc.x;
import com.google.api.gax.rpc.y;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.z5;
import com.google.longrunning.CancelOperationRequest;
import com.google.longrunning.DeleteOperationRequest;
import com.google.longrunning.GetOperationRequest;
import com.google.longrunning.ListOperationsRequest;
import com.google.longrunning.ListOperationsResponse;
import com.google.longrunning.Operation;
import com.google.longrunning.WaitOperationRequest;
import com.google.protobuf.Empty;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import java.io.IOException;
import java.util.Collection;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public class c extends g0<c> {

    /* renamed from: t  reason: collision with root package name */
    private static final x<ListOperationsRequest, ListOperationsResponse, Operation> f58362t = new a();

    /* renamed from: u  reason: collision with root package name */
    private static final y<ListOperationsRequest, ListOperationsResponse, Object> f58363u = new b();

    /* renamed from: o  reason: collision with root package name */
    private final j0<GetOperationRequest, Operation> f58364o;

    /* renamed from: p  reason: collision with root package name */
    private final v<ListOperationsRequest, ListOperationsResponse, Object> f58365p;

    /* renamed from: q  reason: collision with root package name */
    private final j0<CancelOperationRequest, Empty> f58366q;

    /* renamed from: r  reason: collision with root package name */
    private final j0<DeleteOperationRequest, Empty> f58367r;

    /* renamed from: s  reason: collision with root package name */
    private final j0<WaitOperationRequest, Operation> f58368s;

    /* loaded from: classes2.dex */
    static class a implements x<ListOperationsRequest, ListOperationsResponse, Operation> {
        a() {
        }
    }

    /* loaded from: classes2.dex */
    static class b implements y<ListOperationsRequest, ListOperationsResponse, Object> {
        b() {
        }
    }

    /* renamed from: u6.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0657c extends g0.a<c, C0657c> {

        /* renamed from: u  reason: collision with root package name */
        private static final ImmutableMap<String, ImmutableSet<StatusCode.Code>> f58369u;

        /* renamed from: v  reason: collision with root package name */
        private static final ImmutableMap<String, RetrySettings> f58370v;

        /* renamed from: o  reason: collision with root package name */
        private final ImmutableList<j0.a<?, ?>> f58371o;

        /* renamed from: p  reason: collision with root package name */
        private final j0.a<GetOperationRequest, Operation> f58372p;

        /* renamed from: q  reason: collision with root package name */
        private final v.b<ListOperationsRequest, ListOperationsResponse, Object> f58373q;

        /* renamed from: r  reason: collision with root package name */
        private final j0.a<CancelOperationRequest, Empty> f58374r;

        /* renamed from: s  reason: collision with root package name */
        private final j0.a<DeleteOperationRequest, Empty> f58375s;

        /* renamed from: t  reason: collision with root package name */
        private final j0.a<WaitOperationRequest, Operation> f58376t;

        static {
            ImmutableMap.b builder = ImmutableMap.builder();
            builder.h("idempotent", ImmutableSet.copyOf((Collection) z5.j(StatusCode.Code.DEADLINE_EXCEEDED, StatusCode.Code.UNAVAILABLE)));
            builder.h("non_idempotent", ImmutableSet.copyOf((Collection) z5.g()));
            f58369u = builder.a();
            ImmutableMap.b builder2 = ImmutableMap.builder();
            builder2.h(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND, RetrySettings.newBuilder().c(Duration.ofMillis(100L)).i(1.3d).g(Duration.ofMillis(60000L)).d(Duration.ofMillis(90000L)).j(1.0d).h(Duration.ofMillis(90000L)).k(Duration.ofMillis(AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED)).b());
            f58370v = builder2.a();
        }

        protected C0657c(j jVar) {
            super(jVar);
            j0.a<GetOperationRequest, Operation> d10 = j0.d();
            this.f58372p = d10;
            v.b<ListOperationsRequest, ListOperationsResponse, Object> h10 = v.h(c.f58363u);
            this.f58373q = h10;
            j0.a<CancelOperationRequest, Empty> d11 = j0.d();
            this.f58374r = d11;
            j0.a<DeleteOperationRequest, Empty> d12 = j0.d();
            this.f58375s = d12;
            this.f58376t = j0.d();
            this.f58371o = ImmutableList.of((j0.a<DeleteOperationRequest, Empty>) d10, (j0.a<DeleteOperationRequest, Empty>) h10, (j0.a<DeleteOperationRequest, Empty>) d11, d12);
            O(this);
        }

        static /* synthetic */ C0657c I() {
            return L();
        }

        private static C0657c L() {
            return O(new C0657c(null));
        }

        private static C0657c O(C0657c c0657c) {
            j0.a<GetOperationRequest, Operation> N = c0657c.N();
            ImmutableMap<String, ImmutableSet<StatusCode.Code>> immutableMap = f58369u;
            j0.a<GetOperationRequest, Operation> e10 = N.e(immutableMap.get("idempotent"));
            ImmutableMap<String, RetrySettings> immutableMap2 = f58370v;
            e10.d(immutableMap2.get(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND));
            c0657c.P().e(immutableMap.get("idempotent")).d(immutableMap2.get(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND));
            c0657c.K().e(immutableMap.get("idempotent")).d(immutableMap2.get(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND));
            c0657c.M().e(immutableMap.get("idempotent")).d(immutableMap2.get(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND));
            c0657c.Q().e(immutableMap.get("idempotent")).d(immutableMap2.get(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND));
            return c0657c;
        }

        @Override // com.google.api.gax.rpc.g0.a
        /* renamed from: J */
        public c o() throws IOException {
            return new c(this);
        }

        public j0.a<CancelOperationRequest, Empty> K() {
            return this.f58374r;
        }

        public j0.a<DeleteOperationRequest, Empty> M() {
            return this.f58375s;
        }

        public j0.a<GetOperationRequest, Operation> N() {
            return this.f58372p;
        }

        public v.b<ListOperationsRequest, ListOperationsResponse, Object> P() {
            return this.f58373q;
        }

        public j0.a<WaitOperationRequest, Operation> Q() {
            return this.f58376t;
        }
    }

    protected c(C0657c c0657c) throws IOException {
        super(c0657c);
        this.f58364o = c0657c.N().c();
        this.f58365p = c0657c.P().c();
        this.f58366q = c0657c.K().c();
        this.f58367r = c0657c.M().c();
        this.f58368s = c0657c.Q().c();
    }

    public static C0657c t() {
        return C0657c.I();
    }

    public j0<CancelOperationRequest, Empty> p() {
        return this.f58366q;
    }

    public j0<DeleteOperationRequest, Empty> q() {
        return this.f58367r;
    }

    public j0<GetOperationRequest, Operation> r() {
        return this.f58364o;
    }

    public v<ListOperationsRequest, ListOperationsResponse, Object> s() {
        return this.f58365p;
    }

    public j0<WaitOperationRequest, Operation> u() {
        return this.f58368s;
    }
}
