package u5;

import com.google.api.gax.rpc.h;
import com.google.cloud.speech.v1.StreamingRecognizeRequest;
import com.google.cloud.speech.v1.StreamingRecognizeResponse;
/* loaded from: classes2.dex */
public abstract class c implements l5.d {
    public abstract u6.b a();

    public abstract h<StreamingRecognizeRequest, StreamingRecognizeResponse> c();

    @Override // java.lang.AutoCloseable
    public abstract void close();
}
