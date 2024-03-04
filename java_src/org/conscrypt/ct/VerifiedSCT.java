package org.conscrypt.ct;
/* loaded from: classes7.dex */
public final class VerifiedSCT {

    /* renamed from: a  reason: collision with root package name */
    public final SignedCertificateTimestamp f56324a;

    /* renamed from: b  reason: collision with root package name */
    public final Status f56325b;

    /* loaded from: classes7.dex */
    public enum Status {
        VALID,
        INVALID_SIGNATURE,
        UNKNOWN_LOG,
        INVALID_SCT
    }

    public VerifiedSCT(SignedCertificateTimestamp signedCertificateTimestamp, Status status) {
        this.f56324a = signedCertificateTimestamp;
        this.f56325b = status;
    }
}
