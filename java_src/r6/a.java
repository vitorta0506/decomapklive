package r6;

import com.google.firebase.messaging.threads.ThreadPriority;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2.dex */
public interface a {
    ExecutorService a(ThreadFactory threadFactory, ThreadPriority threadPriority);
}
