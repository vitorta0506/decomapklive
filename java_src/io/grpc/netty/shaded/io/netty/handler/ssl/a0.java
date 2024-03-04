package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.nio.ByteBuffer;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSession;
/* loaded from: classes5.dex */
class a0 extends SSLEngine implements a {

    /* renamed from: a  reason: collision with root package name */
    private final SSLEngine f44494a;

    /* renamed from: b  reason: collision with root package name */
    private volatile String f44495b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(SSLEngine sSLEngine) {
        this.f44494a = sSLEngine;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a
    public String a() {
        return this.f44495b;
    }

    public SSLEngine b() {
        return this.f44494a;
    }

    @Override // javax.net.ssl.SSLEngine
    public void beginHandshake() throws SSLException {
        this.f44494a.beginHandshake();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        this.f44495b = str;
    }

    @Override // javax.net.ssl.SSLEngine
    public void closeInbound() throws SSLException {
        this.f44494a.closeInbound();
    }

    @Override // javax.net.ssl.SSLEngine
    public void closeOutbound() {
        this.f44494a.closeOutbound();
    }

    @Override // javax.net.ssl.SSLEngine
    public Runnable getDelegatedTask() {
        return this.f44494a.getDelegatedTask();
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getEnableSessionCreation() {
        return this.f44494a.getEnableSessionCreation();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getEnabledCipherSuites() {
        return this.f44494a.getEnabledCipherSuites();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getEnabledProtocols() {
        return this.f44494a.getEnabledProtocols();
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLSession getHandshakeSession() {
        return this.f44494a.getHandshakeSession();
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult.HandshakeStatus getHandshakeStatus() {
        return this.f44494a.getHandshakeStatus();
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getNeedClientAuth() {
        return this.f44494a.getNeedClientAuth();
    }

    @Override // javax.net.ssl.SSLEngine
    public String getPeerHost() {
        return this.f44494a.getPeerHost();
    }

    @Override // javax.net.ssl.SSLEngine
    public int getPeerPort() {
        return this.f44494a.getPeerPort();
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLParameters getSSLParameters() {
        return this.f44494a.getSSLParameters();
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLSession getSession() {
        return this.f44494a.getSession();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getSupportedCipherSuites() {
        return this.f44494a.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getSupportedProtocols() {
        return this.f44494a.getSupportedProtocols();
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getUseClientMode() {
        return this.f44494a.getUseClientMode();
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getWantClientAuth() {
        return this.f44494a.getWantClientAuth();
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean isInboundDone() {
        return this.f44494a.isInboundDone();
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean isOutboundDone() {
        return this.f44494a.isOutboundDone();
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnableSessionCreation(boolean z10) {
        this.f44494a.setEnableSessionCreation(z10);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnabledCipherSuites(String[] strArr) {
        this.f44494a.setEnabledCipherSuites(strArr);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnabledProtocols(String[] strArr) {
        this.f44494a.setEnabledProtocols(strArr);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setNeedClientAuth(boolean z10) {
        this.f44494a.setNeedClientAuth(z10);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setSSLParameters(SSLParameters sSLParameters) {
        this.f44494a.setSSLParameters(sSLParameters);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setUseClientMode(boolean z10) {
        this.f44494a.setUseClientMode(z10);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setWantClientAuth(boolean z10) {
        this.f44494a.setWantClientAuth(z10);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        return this.f44494a.unwrap(byteBuffer, byteBuffer2);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        return this.f44494a.wrap(byteBuffer, byteBuffer2);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr) throws SSLException {
        return this.f44494a.unwrap(byteBuffer, byteBufferArr);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer[] byteBufferArr, ByteBuffer byteBuffer) throws SSLException {
        return this.f44494a.wrap(byteBufferArr, byteBuffer);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr, int i9, int i10) throws SSLException {
        return this.f44494a.unwrap(byteBuffer, byteBufferArr, i9, i10);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer[] byteBufferArr, int i9, int i10, ByteBuffer byteBuffer) throws SSLException {
        return this.f44494a.wrap(byteBufferArr, i9, i10, byteBuffer);
    }
}
