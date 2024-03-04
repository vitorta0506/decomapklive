package org.apache.http;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes7.dex */
public interface f {
    boolean a();

    c getContentType();

    void writeTo(OutputStream outputStream) throws IOException;
}
