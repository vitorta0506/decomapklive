package u5;

import com.google.api.gax.retrying.RetrySettings;
import com.google.api.gax.rpc.ApiClientHeaderProvider;
import com.google.api.gax.rpc.StatusCode;
import com.google.api.gax.rpc.f0;
import com.google.api.gax.rpc.g0;
import com.google.api.gax.rpc.i0;
import com.google.api.gax.rpc.j;
import com.google.api.gax.rpc.j0;
import com.google.api.gax.rpc.s;
import com.google.cloud.speech.v1.LongRunningRecognizeMetadata;
import com.google.cloud.speech.v1.LongRunningRecognizeRequest;
import com.google.cloud.speech.v1.LongRunningRecognizeResponse;
import com.google.cloud.speech.v1.RecognizeRequest;
import com.google.cloud.speech.v1.RecognizeResponse;
import com.google.cloud.speech.v1.StreamingRecognizeRequest;
import com.google.cloud.speech.v1.StreamingRecognizeResponse;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.z5;
import com.google.longrunning.Operation;
import java.io.IOException;
import java.util.Collection;
import l5.k;
import l5.l;
import m5.h0;
import m5.k0;
import m5.n;
import m5.n0;
import m5.o0;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public class d extends g0<d> {

    /* renamed from: s  reason: collision with root package name */
    private static final ImmutableList<String> f58332s = ImmutableList.builder().a("https://www.googleapis.com/auth/cloud-platform").j();

    /* renamed from: o  reason: collision with root package name */
    private final j0<RecognizeRequest, RecognizeResponse> f58333o;

    /* renamed from: p  reason: collision with root package name */
    private final j0<LongRunningRecognizeRequest, Operation> f58334p;

    /* renamed from: q  reason: collision with root package name */
    private final s<LongRunningRecognizeRequest, LongRunningRecognizeResponse, LongRunningRecognizeMetadata> f58335q;

    /* renamed from: r  reason: collision with root package name */
    private final f0<StreamingRecognizeRequest, StreamingRecognizeResponse> f58336r;

    /* loaded from: classes2.dex */
    public static class a extends g0.a<d, a> {

        /* renamed from: t  reason: collision with root package name */
        private static final ImmutableMap<String, ImmutableSet<StatusCode.Code>> f58337t;

        /* renamed from: u  reason: collision with root package name */
        private static final ImmutableMap<String, RetrySettings> f58338u;

        /* renamed from: o  reason: collision with root package name */
        private final ImmutableList<j0.a<?, ?>> f58339o;

        /* renamed from: p  reason: collision with root package name */
        private final j0.a<RecognizeRequest, RecognizeResponse> f58340p;

        /* renamed from: q  reason: collision with root package name */
        private final j0.a<LongRunningRecognizeRequest, Operation> f58341q;

        /* renamed from: r  reason: collision with root package name */
        private final s.b<LongRunningRecognizeRequest, LongRunningRecognizeResponse, LongRunningRecognizeMetadata> f58342r;

        /* renamed from: s  reason: collision with root package name */
        private final f0.a<StreamingRecognizeRequest, StreamingRecognizeResponse> f58343s;

        static {
            ImmutableMap.b builder = ImmutableMap.builder();
            builder.h("retry_policy_0_codes", ImmutableSet.copyOf((Collection) z5.j(StatusCode.Code.UNAVAILABLE, StatusCode.Code.DEADLINE_EXCEEDED)));
            builder.h("no_retry_1_codes", ImmutableSet.copyOf((Collection) z5.g()));
            f58337t = builder.a();
            ImmutableMap.b builder2 = ImmutableMap.builder();
            builder2.h("retry_policy_0_params", RetrySettings.newBuilder().c(Duration.ofMillis(100L)).i(1.3d).g(Duration.ofMillis(60000L)).d(Duration.ofMillis(5000000L)).j(1.0d).h(Duration.ofMillis(5000000L)).k(Duration.ofMillis(5000000L)).b());
            builder2.h("no_retry_1_params", RetrySettings.newBuilder().d(Duration.ofMillis(5000000L)).j(1.0d).h(Duration.ofMillis(5000000L)).k(Duration.ofMillis(5000000L)).b());
            f58338u = builder2.a();
        }

        protected a(j jVar) {
            super(jVar);
            j0.a<RecognizeRequest, RecognizeResponse> d10 = j0.d();
            this.f58340p = d10;
            j0.a<LongRunningRecognizeRequest, Operation> d11 = j0.d();
            this.f58341q = d11;
            this.f58342r = s.e();
            this.f58343s = f0.a();
            this.f58339o = ImmutableList.of((j0.a<LongRunningRecognizeRequest, Operation>) d10, d11);
            L(this);
        }

        static /* synthetic */ a I() {
            return K();
        }

        private static a K() {
            a aVar = new a(null);
            aVar.H(d.s());
            aVar.C(d.q().b());
            aVar.E(d.p().a());
            aVar.D(d.t());
            aVar.F(d.u());
            aVar.G(true);
            return L(aVar);
        }

        private static a L(a aVar) {
            j0.a<RecognizeRequest, RecognizeResponse> O = aVar.O();
            ImmutableMap<String, ImmutableSet<StatusCode.Code>> immutableMap = f58337t;
            j0.a<RecognizeRequest, RecognizeResponse> e10 = O.e(immutableMap.get("retry_policy_0_codes"));
            ImmutableMap<String, RetrySettings> immutableMap2 = f58338u;
            e10.d(immutableMap2.get("retry_policy_0_params"));
            aVar.N().e(immutableMap.get("no_retry_1_codes")).d(immutableMap2.get("no_retry_1_params"));
            s.b<LongRunningRecognizeRequest, LongRunningRecognizeResponse, LongRunningRecognizeMetadata> c10 = aVar.M().b(j0.d().e(immutableMap.get("no_retry_1_codes")).d(immutableMap2.get("no_retry_1_params")).c()).e(o0.b(LongRunningRecognizeResponse.class)).c(n0.b(LongRunningRecognizeMetadata.class));
            RetrySettings.a g10 = RetrySettings.newBuilder().c(Duration.ofMillis(5000L)).i(1.5d).g(Duration.ofMillis(45000L));
            Duration duration = Duration.ZERO;
            c10.d(n5.c.a(g10.d(duration).j(1.0d).h(duration).k(Duration.ofMillis(300000L)).b()));
            return aVar;
        }

        @Override // com.google.api.gax.rpc.g0.a
        /* renamed from: J */
        public d o() throws IOException {
            return new d(this);
        }

        public s.b<LongRunningRecognizeRequest, LongRunningRecognizeResponse, LongRunningRecognizeMetadata> M() {
            return this.f58342r;
        }

        public j0.a<LongRunningRecognizeRequest, Operation> N() {
            return this.f58341q;
        }

        public j0.a<RecognizeRequest, RecognizeResponse> O() {
            return this.f58340p;
        }

        public f0.a<StreamingRecognizeRequest, StreamingRecognizeResponse> P() {
            return this.f58343s;
        }
    }

    protected d(a aVar) throws IOException {
        super(aVar);
        this.f58333o = aVar.O().c();
        this.f58334p = aVar.N().c();
        this.f58335q = aVar.M().a();
        this.f58336r = aVar.P().a();
    }

    public static ApiClientHeaderProvider.a p() {
        return ApiClientHeaderProvider.newBuilder().m("gapic", k.c(d.class)).o(n.a(), n.b());
    }

    public static l.a q() {
        return l.f().g(f58332s).h(true);
    }

    public static k0.b r() {
        return k0.L().y(Integer.MAX_VALUE);
    }

    public static i0 s() {
        return r().t();
    }

    public static String t() {
        return "speech.googleapis.com:443";
    }

    public static String u() {
        return "speech.mtls.googleapis.com:443";
    }

    public static a x() {
        return a.I();
    }

    public static a y(j jVar) {
        return new a(jVar);
    }

    public f0<StreamingRecognizeRequest, StreamingRecognizeResponse> A() {
        return this.f58336r;
    }

    public c o() throws IOException {
        if (n().getTransportName().equals(h0.j())) {
            return b.d(this);
        }
        throw new UnsupportedOperationException(String.format("Transport not supported: %s", n().getTransportName()));
    }

    public s<LongRunningRecognizeRequest, LongRunningRecognizeResponse, LongRunningRecognizeMetadata> v() {
        return this.f58335q;
    }

    public j0<LongRunningRecognizeRequest, Operation> w() {
        return this.f58334p;
    }

    public j0<RecognizeRequest, RecognizeResponse> z() {
        return this.f58333o;
    }
}
