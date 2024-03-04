package ob;

import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;
/* loaded from: classes4.dex */
final class f extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f55576a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Handler handler) {
        this.f55576a = handler;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            this.f55576a.handleMessage(message);
        } catch (WindowManager.BadTokenException | IllegalStateException e10) {
            e10.printStackTrace();
        }
    }
}
