package com.google.android.play.core.review;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.play.core.internal.a1;
import com.google.android.play.core.internal.n;
import com.google.android.play.core.internal.s;
import d5.o;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10642c = new com.google.android.play.core.internal.g("ReviewService");
    @Nullable
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    s f10643a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10644b;

    public i(Context context) {
        this.f10644b = context.getPackageName();
        if (a1.b(context)) {
            this.f10643a = new s(context, f10642c, "com.google.android.finsky.inappreviewservice.InAppReviewService", new Intent("com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE").setPackage("com.android.vending"), new n() { // from class: com.google.android.play.core.review.e
                @Override // com.google.android.play.core.internal.n
                public final Object a(IBinder iBinder) {
                    return com.google.android.play.core.internal.c.f(iBinder);
                }
            }, null);
        }
    }

    public final d5.d b() {
        com.google.android.play.core.internal.g gVar = f10642c;
        gVar.d("requestInAppReview (%s)", this.f10644b);
        if (this.f10643a == null) {
            gVar.b("Play Store app is either not installed or not the official version", new Object[0]);
            return d5.f.b(new ReviewException(-1));
        }
        o oVar = new o();
        this.f10643a.q(new f(this, oVar, oVar), oVar);
        return oVar.a();
    }
}
