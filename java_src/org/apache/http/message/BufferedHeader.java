package org.apache.http.message;

import java.io.Serializable;
import org.apache.http.ParseException;
import org.apache.http.b;
import org.apache.http.d;
import org.apache.http.util.CharArrayBuffer;
import si.c;
import si.g;
import vi.a;
/* loaded from: classes7.dex */
public class BufferedHeader implements b, Cloneable, Serializable {
    private static final long serialVersionUID = -2768352615787625448L;
    private final CharArrayBuffer buffer;
    private final String name;
    private final int valuePos;

    public BufferedHeader(CharArrayBuffer charArrayBuffer) throws ParseException {
        a.g(charArrayBuffer, "Char array buffer");
        int indexOf = charArrayBuffer.indexOf(58);
        if (indexOf != -1) {
            String substringTrimmed = charArrayBuffer.substringTrimmed(0, indexOf);
            if (!substringTrimmed.isEmpty()) {
                this.buffer = charArrayBuffer;
                this.name = substringTrimmed;
                this.valuePos = indexOf + 1;
                return;
            }
            throw new ParseException("Invalid header: " + charArrayBuffer.toString());
        }
        throw new ParseException("Invalid header: " + charArrayBuffer.toString());
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // org.apache.http.b
    public CharArrayBuffer getBuffer() {
        return this.buffer;
    }

    @Override // org.apache.http.c
    public d[] getElements() throws ParseException {
        g gVar = new g(0, this.buffer.length());
        gVar.d(this.valuePos);
        return c.f57927c.a(this.buffer, gVar);
    }

    @Override // org.apache.http.k
    public String getName() {
        return this.name;
    }

    @Override // org.apache.http.k
    public String getValue() {
        CharArrayBuffer charArrayBuffer = this.buffer;
        return charArrayBuffer.substringTrimmed(this.valuePos, charArrayBuffer.length());
    }

    @Override // org.apache.http.b
    public int getValuePos() {
        return this.valuePos;
    }

    public String toString() {
        return this.buffer.toString();
    }
}
