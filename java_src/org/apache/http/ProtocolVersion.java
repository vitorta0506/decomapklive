package org.apache.http;

import com.tencent.bugly.BuglyStrategy;
import io.jsonwebtoken.JwtParser;
import java.io.Serializable;
import org.light.utils.IOUtils;
/* loaded from: classes7.dex */
public class ProtocolVersion implements Serializable, Cloneable {
    private static final long serialVersionUID = 8950662842175091068L;
    protected final int major;
    protected final int minor;
    protected final String protocol;

    public ProtocolVersion(String str, int i9, int i10) {
        this.protocol = (String) vi.a.g(str, "Protocol name");
        this.major = vi.a.f(i9, "Protocol major version");
        this.minor = vi.a.f(i10, "Protocol minor version");
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public int compareToVersion(ProtocolVersion protocolVersion) {
        vi.a.g(protocolVersion, "Protocol version");
        vi.a.b(this.protocol.equals(protocolVersion.protocol), "Versions for different protocols cannot be compared: %s %s", this, protocolVersion);
        int major = getMajor() - protocolVersion.getMajor();
        return major == 0 ? getMinor() - protocolVersion.getMinor() : major;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProtocolVersion) {
            ProtocolVersion protocolVersion = (ProtocolVersion) obj;
            return this.protocol.equals(protocolVersion.protocol) && this.major == protocolVersion.major && this.minor == protocolVersion.minor;
        }
        return false;
    }

    public ProtocolVersion forVersion(int i9, int i10) {
        return (i9 == this.major && i10 == this.minor) ? this : new ProtocolVersion(this.protocol, i9, i10);
    }

    public final int getMajor() {
        return this.major;
    }

    public final int getMinor() {
        return this.minor;
    }

    public final String getProtocol() {
        return this.protocol;
    }

    public final boolean greaterEquals(ProtocolVersion protocolVersion) {
        return isComparable(protocolVersion) && compareToVersion(protocolVersion) >= 0;
    }

    public final int hashCode() {
        return (this.protocol.hashCode() ^ (this.major * BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH)) ^ this.minor;
    }

    public boolean isComparable(ProtocolVersion protocolVersion) {
        return protocolVersion != null && this.protocol.equals(protocolVersion.protocol);
    }

    public final boolean lessEquals(ProtocolVersion protocolVersion) {
        return isComparable(protocolVersion) && compareToVersion(protocolVersion) <= 0;
    }

    public String toString() {
        return this.protocol + IOUtils.DIR_SEPARATOR_UNIX + Integer.toString(this.major) + JwtParser.SEPARATOR_CHAR + Integer.toString(this.minor);
    }
}
