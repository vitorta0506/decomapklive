package androidx.emoji2.text;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Handler f907a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f907a.post(runnable);
    }
}
