package io.grpc.alts.internal;
/* loaded from: classes5.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    final AltsContext f41898a;

    public j(HandshakerResult handshakerResult) {
        this.f41898a = AltsContext.newBuilder().m0(handshakerResult.getApplicationProtocol()).s0(handshakerResult.getRecordProtocol()).t0(SecurityLevel.INTEGRITY_AND_PRIVACY).r0(handshakerResult.getPeerIdentity().getServiceAccount()).o0(handshakerResult.getLocalIdentity().getServiceAccount()).q0(handshakerResult.getPeerRpcVersions()).l0(handshakerResult.getPeerIdentity().getAttributesMap()).build();
    }

    public RpcProtocolVersions a() {
        return this.f41898a.getPeerRpcVersions();
    }
}
