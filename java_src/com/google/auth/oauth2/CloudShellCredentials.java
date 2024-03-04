package com.google.auth.oauth2;

import com.google.auth.oauth2.GoogleCredentials;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public class CloudShellCredentials extends GoogleCredentials {
    private static final int ACCESS_TOKEN_INDEX = 2;
    protected static final String GET_AUTH_TOKEN_REQUEST = "2\n[]";
    protected static final byte[] GET_AUTH_TOKEN_REQUEST_BYTES = "2\n[]\n".getBytes(com.google.common.base.e.f12356c);
    private static final int READ_TIMEOUT_MS = 5000;
    private static final long serialVersionUID = -2133257318957488451L;
    private final int authPort;

    /* loaded from: classes2.dex */
    public static class b extends GoogleCredentials.a {

        /* renamed from: d  reason: collision with root package name */
        private int f11515d;

        protected b() {
        }

        @Override // com.google.auth.oauth2.GoogleCredentials.a
        /* renamed from: f */
        public CloudShellCredentials d() {
            return new CloudShellCredentials(this.f11515d);
        }

        public b g(int i9) {
            this.f11515d = i9;
            return this;
        }

        protected b(CloudShellCredentials cloudShellCredentials) {
            this.f11515d = cloudShellCredentials.authPort;
        }
    }

    public static CloudShellCredentials create(int i9) {
        return newBuilder().g(i9).d();
    }

    public static b newBuilder() {
        return new b();
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public boolean equals(Object obj) {
        return (obj instanceof CloudShellCredentials) && this.authPort == ((CloudShellCredentials) obj).authPort;
    }

    protected int getAuthPort() {
        return this.authPort;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.authPort));
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public AccessToken refreshAccessToken() throws IOException {
        Socket socket = new Socket("localhost", getAuthPort());
        socket.setSoTimeout(READ_TIMEOUT_MS);
        try {
            socket.getOutputStream().write(GET_AUTH_TOKEN_REQUEST_BYTES);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
            bufferedReader.readLine();
            return new AccessToken(((List) n.f11679f.d(bufferedReader).M(ArrayList.class, Object.class)).get(2).toString(), null);
        } finally {
            socket.close();
        }
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public String toString() {
        return com.google.common.base.j.c(this).b("authPort", this.authPort).toString();
    }

    private CloudShellCredentials(int i9) {
        this.authPort = i9;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public b toBuilder() {
        return new b(this);
    }
}
