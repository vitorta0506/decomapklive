package com.google.android.play.core.review;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import d5.o;
/* loaded from: classes2.dex */
public final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    private final i f10633a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f10634b = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(i iVar) {
        this.f10633a = iVar;
    }

    @Override // com.google.android.play.core.review.a
    @NonNull
    public final d5.d<ReviewInfo> a() {
        return this.f10633a.b();
    }

    @Override // com.google.android.play.core.review.a
    @NonNull
    public final d5.d<Void> b(@NonNull Activity activity, @NonNull ReviewInfo reviewInfo) {
        if (reviewInfo.b()) {
            return d5.f.c(null);
        }
        Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", reviewInfo.a());
        intent.putExtra("window_flags", activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        o oVar = new o();
        intent.putExtra("result_receiver", new zzc(this, this.f10634b, oVar));
        activity.startActivity(intent);
        return oVar.a();
    }
}
