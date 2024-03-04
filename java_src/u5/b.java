package u5;

import com.google.api.gax.rpc.h;
import com.google.api.gax.rpc.j;
import com.google.api.gax.rpc.k0;
import com.google.api.gax.rpc.t;
import com.google.cloud.speech.v1.LongRunningRecognizeMetadata;
import com.google.cloud.speech.v1.LongRunningRecognizeRequest;
import com.google.cloud.speech.v1.LongRunningRecognizeResponse;
import com.google.cloud.speech.v1.RecognizeRequest;
import com.google.cloud.speech.v1.RecognizeResponse;
import com.google.cloud.speech.v1.StreamingRecognizeRequest;
import com.google.cloud.speech.v1.StreamingRecognizeResponse;
import com.google.longrunning.Operation;
import io.grpc.MethodDescriptor;
import java.io.IOException;
import l5.e;
import m5.g0;
import m5.q;
/* loaded from: classes2.dex */
public class b extends c {

    /* renamed from: h  reason: collision with root package name */
    private static final MethodDescriptor<RecognizeRequest, RecognizeResponse> f58322h;

    /* renamed from: i  reason: collision with root package name */
    private static final MethodDescriptor<LongRunningRecognizeRequest, Operation> f58323i;

    /* renamed from: j  reason: collision with root package name */
    private static final MethodDescriptor<StreamingRecognizeRequest, StreamingRecognizeResponse> f58324j;

    /* renamed from: a  reason: collision with root package name */
    private final k0<RecognizeRequest, RecognizeResponse> f58325a;

    /* renamed from: b  reason: collision with root package name */
    private final k0<LongRunningRecognizeRequest, Operation> f58326b;

    /* renamed from: c  reason: collision with root package name */
    private final t<LongRunningRecognizeRequest, LongRunningRecognizeResponse, LongRunningRecognizeMetadata> f58327c;

    /* renamed from: d  reason: collision with root package name */
    private final h<StreamingRecognizeRequest, StreamingRecognizeResponse> f58328d;

    /* renamed from: e  reason: collision with root package name */
    private final l5.d f58329e;

    /* renamed from: f  reason: collision with root package name */
    private final u6.a f58330f;

    /* renamed from: g  reason: collision with root package name */
    private final g0 f58331g;

    static {
        MethodDescriptor.b h10 = MethodDescriptor.h();
        MethodDescriptor.MethodType methodType = MethodDescriptor.MethodType.UNARY;
        f58322h = h10.g(methodType).b("google.cloud.speech.v1.Speech/Recognize").c(zg.a.a(RecognizeRequest.getDefaultInstance())).d(zg.a.a(RecognizeResponse.getDefaultInstance())).a();
        f58323i = MethodDescriptor.h().g(methodType).b("google.cloud.speech.v1.Speech/LongRunningRecognize").c(zg.a.a(LongRunningRecognizeRequest.getDefaultInstance())).d(zg.a.a(Operation.getDefaultInstance())).a();
        f58324j = MethodDescriptor.h().g(MethodDescriptor.MethodType.BIDI_STREAMING).b("google.cloud.speech.v1.Speech/StreamingRecognize").c(zg.a.a(StreamingRecognizeRequest.getDefaultInstance())).d(zg.a.a(StreamingRecognizeResponse.getDefaultInstance())).a();
    }

    protected b(d dVar, j jVar) throws IOException {
        this(dVar, jVar, new a());
    }

    public static final b d(d dVar) throws IOException {
        return new b(dVar, j.a(dVar));
    }

    @Override // u5.c
    public h<StreamingRecognizeRequest, StreamingRecognizeResponse> c() {
        return this.f58328d;
    }

    @Override // u5.c, java.lang.AutoCloseable
    public final void close() {
        try {
            this.f58329e.close();
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException("Failed to close resource", e11);
        }
    }

    @Override // u5.c
    /* renamed from: e */
    public u6.a a() {
        return this.f58330f;
    }

    @Override // l5.d
    public boolean isShutdown() {
        return this.f58329e.isShutdown();
    }

    @Override // l5.d
    public void shutdown() {
        this.f58329e.shutdown();
    }

    protected b(d dVar, j jVar, g0 g0Var) throws IOException {
        this.f58331g = g0Var;
        u6.a a10 = u6.a.a(jVar, g0Var);
        this.f58330f = a10;
        q d10 = q.c().e(f58322h).d();
        q d11 = q.c().e(f58323i).d();
        q d12 = q.c().e(f58324j).d();
        this.f58325a = g0Var.c(d10, dVar.z(), jVar);
        this.f58326b = g0Var.c(d11, dVar.w(), jVar);
        this.f58327c = g0Var.a(d11, dVar.v(), jVar, a10);
        this.f58328d = g0Var.b(d12, dVar.A(), jVar);
        this.f58329e = new e(jVar.b());
    }
}
