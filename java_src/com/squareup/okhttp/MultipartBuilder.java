package com.squareup.okhttp;

import com.squareup.okhttp.internal.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import kotlin.text.Typography;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class MultipartBuilder {
    private final ByteString boundary;
    private final List<RequestBody> partBodies;
    private final List<Headers> partHeaders;
    private MediaType type;
    public static final MediaType MIXED = MediaType.parse("multipart/mixed");
    public static final MediaType ALTERNATIVE = MediaType.parse("multipart/alternative");
    public static final MediaType DIGEST = MediaType.parse("multipart/digest");
    public static final MediaType PARALLEL = MediaType.parse("multipart/parallel");
    public static final MediaType FORM = MediaType.parse("multipart/form-data");
    private static final byte[] COLONSPACE = {58, 32};
    private static final byte[] CRLF = {13, 10};
    private static final byte[] DASHDASH = {45, 45};

    /* loaded from: classes4.dex */
    private static final class MultipartRequestBody extends RequestBody {
        private final ByteString boundary;
        private long contentLength = -1;
        private final MediaType contentType;
        private final List<RequestBody> partBodies;
        private final List<Headers> partHeaders;

        public MultipartRequestBody(MediaType mediaType, ByteString byteString, List<Headers> list, List<RequestBody> list2) {
            Objects.requireNonNull(mediaType, "type == null");
            this.boundary = byteString;
            this.contentType = MediaType.parse(mediaType + "; boundary=" + byteString.utf8());
            this.partHeaders = i.j(list);
            this.partBodies = i.j(list2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private long writeOrCountBytes(BufferedSink bufferedSink, boolean z10) throws IOException {
            Buffer buffer;
            if (z10) {
                bufferedSink = new Buffer();
                buffer = bufferedSink;
            } else {
                buffer = 0;
            }
            int size = this.partHeaders.size();
            long j10 = 0;
            for (int i9 = 0; i9 < size; i9++) {
                Headers headers = this.partHeaders.get(i9);
                RequestBody requestBody = this.partBodies.get(i9);
                bufferedSink.write(MultipartBuilder.DASHDASH);
                bufferedSink.write(this.boundary);
                bufferedSink.write(MultipartBuilder.CRLF);
                if (headers != null) {
                    int size2 = headers.size();
                    for (int i10 = 0; i10 < size2; i10++) {
                        bufferedSink.writeUtf8(headers.name(i10)).write(MultipartBuilder.COLONSPACE).writeUtf8(headers.value(i10)).write(MultipartBuilder.CRLF);
                    }
                }
                MediaType contentType = requestBody.contentType();
                if (contentType != null) {
                    bufferedSink.writeUtf8("Content-Type: ").writeUtf8(contentType.toString()).write(MultipartBuilder.CRLF);
                }
                long contentLength = requestBody.contentLength();
                if (contentLength != -1) {
                    bufferedSink.writeUtf8("Content-Length: ").writeDecimalLong(contentLength).write(MultipartBuilder.CRLF);
                } else if (z10) {
                    buffer.clear();
                    return -1L;
                }
                bufferedSink.write(MultipartBuilder.CRLF);
                if (z10) {
                    j10 += contentLength;
                } else {
                    this.partBodies.get(i9).writeTo(bufferedSink);
                }
                bufferedSink.write(MultipartBuilder.CRLF);
            }
            bufferedSink.write(MultipartBuilder.DASHDASH);
            bufferedSink.write(this.boundary);
            bufferedSink.write(MultipartBuilder.DASHDASH);
            bufferedSink.write(MultipartBuilder.CRLF);
            if (z10) {
                long size3 = j10 + buffer.size();
                buffer.clear();
                return size3;
            }
            return j10;
        }

        @Override // com.squareup.okhttp.RequestBody
        public long contentLength() throws IOException {
            long j10 = this.contentLength;
            if (j10 != -1) {
                return j10;
            }
            long writeOrCountBytes = writeOrCountBytes(null, true);
            this.contentLength = writeOrCountBytes;
            return writeOrCountBytes;
        }

        @Override // com.squareup.okhttp.RequestBody
        public MediaType contentType() {
            return this.contentType;
        }

        @Override // com.squareup.okhttp.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            writeOrCountBytes(bufferedSink, false);
        }
    }

    public MultipartBuilder() {
        this(UUID.randomUUID().toString());
    }

    private static StringBuilder appendQuotedString(StringBuilder sb2, String str) {
        sb2.append(Typography.quote);
        int length = str.length();
        for (int i9 = 0; i9 < length; i9++) {
            char charAt = str.charAt(i9);
            if (charAt == '\n') {
                sb2.append("%0A");
            } else if (charAt == '\r') {
                sb2.append("%0D");
            } else if (charAt != '\"') {
                sb2.append(charAt);
            } else {
                sb2.append("%22");
            }
        }
        sb2.append(Typography.quote);
        return sb2;
    }

    public MultipartBuilder addFormDataPart(String str, String str2) {
        return addFormDataPart(str, null, RequestBody.create((MediaType) null, str2));
    }

    public MultipartBuilder addPart(RequestBody requestBody) {
        return addPart(null, requestBody);
    }

    public RequestBody build() {
        if (!this.partHeaders.isEmpty()) {
            return new MultipartRequestBody(this.type, this.boundary, this.partHeaders, this.partBodies);
        }
        throw new IllegalStateException("Multipart body must have at least one part.");
    }

    public MultipartBuilder type(MediaType mediaType) {
        Objects.requireNonNull(mediaType, "type == null");
        if (mediaType.type().equals("multipart")) {
            this.type = mediaType;
            return this;
        }
        throw new IllegalArgumentException("multipart != " + mediaType);
    }

    public MultipartBuilder(String str) {
        this.type = MIXED;
        this.partHeaders = new ArrayList();
        this.partBodies = new ArrayList();
        this.boundary = ByteString.encodeUtf8(str);
    }

    public MultipartBuilder addFormDataPart(String str, String str2, RequestBody requestBody) {
        Objects.requireNonNull(str, "name == null");
        StringBuilder sb2 = new StringBuilder("form-data; name=");
        appendQuotedString(sb2, str);
        if (str2 != null) {
            sb2.append("; filename=");
            appendQuotedString(sb2, str2);
        }
        return addPart(Headers.of("Content-Disposition", sb2.toString()), requestBody);
    }

    public MultipartBuilder addPart(Headers headers, RequestBody requestBody) {
        Objects.requireNonNull(requestBody, "body == null");
        if (headers != null && headers.get("Content-Type") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Type");
        }
        if (headers != null && headers.get("Content-Length") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }
        this.partHeaders.add(headers);
        this.partBodies.add(requestBody);
        return this;
    }
}
