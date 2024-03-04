package retrofit2.converter.wire;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import retrofit2.Converter;
/* loaded from: classes7.dex */
final class WireRequestBodyConverter<T extends Message<T, ?>> implements Converter<T, RequestBody> {
    private static final MediaType MEDIA_TYPE = MediaType.get("application/x-protobuf");
    private final ProtoAdapter<T> adapter;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WireRequestBodyConverter(ProtoAdapter<T> protoAdapter) {
        this.adapter = protoAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // retrofit2.Converter
    public /* bridge */ /* synthetic */ RequestBody convert(Object obj) throws IOException {
        return convert((WireRequestBodyConverter<T>) ((Message) obj));
    }

    public RequestBody convert(T t10) throws IOException {
        Buffer buffer = new Buffer();
        this.adapter.encode((BufferedSink) buffer, (Buffer) t10);
        return RequestBody.create(MEDIA_TYPE, buffer.snapshot());
    }
}
