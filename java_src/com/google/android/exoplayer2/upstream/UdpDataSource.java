package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import j3.e;
import j3.l;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
/* loaded from: classes2.dex */
public final class UdpDataSource extends e {

    /* renamed from: e  reason: collision with root package name */
    private final int f6909e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f6910f;

    /* renamed from: g  reason: collision with root package name */
    private final DatagramPacket f6911g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Uri f6912h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private DatagramSocket f6913i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private MulticastSocket f6914j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private InetAddress f6915k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f6916l;

    /* renamed from: m  reason: collision with root package name */
    private int f6917m;

    /* loaded from: classes2.dex */
    public static final class UdpDataSourceException extends DataSourceException {
        public UdpDataSourceException(Throwable th2, int i9) {
            super(th2, i9);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    @Override // j3.i
    public long b(l lVar) throws UdpDataSourceException {
        Uri uri = lVar.f53031a;
        this.f6912h = uri;
        String str = (String) com.google.android.exoplayer2.util.a.e(uri.getHost());
        int port = this.f6912h.getPort();
        p(lVar);
        try {
            this.f6915k = InetAddress.getByName(str);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f6915k, port);
            if (this.f6915k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f6914j = multicastSocket;
                multicastSocket.joinGroup(this.f6915k);
                this.f6913i = this.f6914j;
            } else {
                this.f6913i = new DatagramSocket(inetSocketAddress);
            }
            this.f6913i.setSoTimeout(this.f6909e);
            this.f6916l = true;
            q(lVar);
            return -1L;
        } catch (IOException e10) {
            throw new UdpDataSourceException(e10, 2001);
        } catch (SecurityException e11) {
            throw new UdpDataSourceException(e11, 2006);
        }
    }

    @Override // j3.i
    public void close() {
        this.f6912h = null;
        MulticastSocket multicastSocket = this.f6914j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((InetAddress) com.google.android.exoplayer2.util.a.e(this.f6915k));
            } catch (IOException unused) {
            }
            this.f6914j = null;
        }
        DatagramSocket datagramSocket = this.f6913i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f6913i = null;
        }
        this.f6915k = null;
        this.f6917m = 0;
        if (this.f6916l) {
            this.f6916l = false;
            o();
        }
    }

    @Override // j3.i
    @Nullable
    public Uri getUri() {
        return this.f6912h;
    }

    @Override // j3.f
    public int read(byte[] bArr, int i9, int i10) throws UdpDataSourceException {
        if (i10 == 0) {
            return 0;
        }
        if (this.f6917m == 0) {
            try {
                ((DatagramSocket) com.google.android.exoplayer2.util.a.e(this.f6913i)).receive(this.f6911g);
                int length = this.f6911g.getLength();
                this.f6917m = length;
                n(length);
            } catch (SocketTimeoutException e10) {
                throw new UdpDataSourceException(e10, 2002);
            } catch (IOException e11) {
                throw new UdpDataSourceException(e11, 2001);
            }
        }
        int length2 = this.f6911g.getLength();
        int i11 = this.f6917m;
        int min = Math.min(i11, i10);
        System.arraycopy(this.f6910f, length2 - i11, bArr, i9, min);
        this.f6917m -= min;
        return min;
    }

    public UdpDataSource(int i9) {
        this(i9, 8000);
    }

    public UdpDataSource(int i9, int i10) {
        super(true);
        this.f6909e = i10;
        byte[] bArr = new byte[i9];
        this.f6910f = bArr;
        this.f6911g = new DatagramPacket(bArr, 0, i9);
    }
}
