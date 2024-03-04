package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.IOException;
import okio.Sink;
import qe.g;
import qe.l;
/* loaded from: classes4.dex */
public interface HttpStream {
    public static final int DISCARD_STREAM_TIMEOUT_MILLIS = 100;

    void cancel();

    Sink createRequestBody(Request request, long j10) throws IOException;

    void finishRequest() throws IOException;

    ResponseBody openResponseBody(Response response) throws IOException;

    Response.Builder readResponseHeaders() throws IOException;

    void setHttpEngine(g gVar);

    void writeRequestBody(l lVar) throws IOException;

    void writeRequestHeaders(Request request) throws IOException;
}
