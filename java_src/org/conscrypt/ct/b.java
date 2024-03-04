package org.conscrypt.ct;

import java.util.ArrayList;
import org.conscrypt.ct.VerifiedSCT;
/* loaded from: classes7.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<VerifiedSCT> f56326a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<VerifiedSCT> f56327b = new ArrayList<>();

    public void a(VerifiedSCT verifiedSCT) {
        if (verifiedSCT.f56325b == VerifiedSCT.Status.VALID) {
            this.f56326a.add(verifiedSCT);
        } else {
            this.f56327b.add(verifiedSCT);
        }
    }
}
