package io.grpc.netty.shaded.io.netty.channel;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.UByte;
/* loaded from: classes5.dex */
public final class DefaultChannelId implements ChannelId {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final byte[] MACHINE_ID;
    private static final int PROCESS_ID;
    private static final int PROCESS_ID_LEN = 4;
    private static final int RANDOM_LEN = 4;
    private static final int SEQUENCE_LEN = 4;
    private static final int TIMESTAMP_LEN = 8;
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b logger = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(DefaultChannelId.class);
    private static final AtomicInteger nextSequence = new AtomicInteger();
    private static final long serialVersionUID = 3884076183504074063L;
    private final byte[] data;
    private final int hashCode;
    private transient String longValue;
    private transient String shortValue;

    static {
        int i9;
        String b10 = io.grpc.netty.shaded.io.netty.util.internal.c0.b("io.grpc.netty.shaded.io.netty.processId");
        int i10 = -1;
        if (b10 != null) {
            try {
                i9 = Integer.parseInt(b10);
            } catch (NumberFormatException unused) {
                i9 = -1;
            }
            if (i9 < 0) {
                logger.warn("-Dio.netty.processId: {} (malformed)", b10);
            } else {
                io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = logger;
                if (bVar.isDebugEnabled()) {
                    bVar.debug("-Dio.netty.processId: {} (user-set)", Integer.valueOf(i9));
                }
                i10 = i9;
            }
        }
        if (i10 < 0) {
            i10 = defaultProcessId();
            io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar2 = logger;
            if (bVar2.isDebugEnabled()) {
                bVar2.debug("-Dio.netty.processId: {} (auto-detected)", Integer.valueOf(i10));
            }
        }
        PROCESS_ID = i10;
        byte[] bArr = null;
        String b11 = io.grpc.netty.shaded.io.netty.util.internal.c0.b("io.grpc.netty.shaded.io.netty.machineId");
        if (b11 != null) {
            try {
                bArr = io.grpc.netty.shaded.io.netty.util.internal.n.f(b11);
            } catch (Exception e10) {
                logger.warn("-Dio.netty.machineId: {} (malformed)", b11, e10);
            }
            if (bArr != null) {
                logger.debug("-Dio.netty.machineId: {} (user-set)", b11);
            }
        }
        if (bArr == null) {
            bArr = io.grpc.netty.shaded.io.netty.util.internal.n.d();
            io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar3 = logger;
            if (bVar3.isDebugEnabled()) {
                bVar3.debug("-Dio.netty.machineId: {} (auto-detected)", io.grpc.netty.shaded.io.netty.util.internal.n.e(bArr));
            }
        }
        MACHINE_ID = bArr;
    }

    private DefaultChannelId() {
        byte[] bArr = MACHINE_ID;
        byte[] bArr2 = new byte[bArr.length + 4 + 4 + 8 + 4];
        this.data = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        writeInt(writeLong(writeInt(writeInt(bArr.length + 0, PROCESS_ID), nextSequence.getAndIncrement()), Long.reverse(System.nanoTime()) ^ System.currentTimeMillis()), io.grpc.netty.shaded.io.netty.util.internal.t.Q0().nextInt());
        this.hashCode = Arrays.hashCode(bArr2);
    }

    private int appendHexDumpField(StringBuilder sb2, int i9, int i10) {
        sb2.append(kg.n.x(this.data, i9, i10));
        sb2.append('-');
        return i9 + i10;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|2|3|(2:5|6)|7|(1:9)|10|11|(2:13|14)(1:16)) */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006f, code lost:
        r0 = -1;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int defaultProcessId() {
        /*
            r0 = 1
            r1 = 0
            java.lang.Class<io.grpc.netty.shaded.io.netty.channel.DefaultChannelId> r2 = io.grpc.netty.shaded.io.netty.channel.DefaultChannelId.class
            java.lang.ClassLoader r2 = io.grpc.netty.shaded.io.netty.util.internal.t.D(r2)     // Catch: java.lang.Throwable -> L31
            java.lang.String r3 = "java.lang.management.ManagementFactory"
            java.lang.Class r3 = java.lang.Class.forName(r3, r0, r2)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r4 = "java.lang.management.RuntimeMXBean"
            java.lang.Class r4 = java.lang.Class.forName(r4, r0, r2)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r5 = "getRuntimeMXBean"
            java.lang.Class<?>[] r6 = io.grpc.netty.shaded.io.netty.util.internal.h.f45068e     // Catch: java.lang.Throwable -> L2f
            java.lang.reflect.Method r3 = r3.getMethod(r5, r6)     // Catch: java.lang.Throwable -> L2f
            java.lang.Object[] r5 = io.grpc.netty.shaded.io.netty.util.internal.h.f45067d     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r3 = r3.invoke(r1, r5)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r7 = "getName"
            java.lang.reflect.Method r4 = r4.getMethod(r7, r6)     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r3 = r4.invoke(r3, r5)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L2f
            goto L5d
        L2f:
            r3 = move-exception
            goto L33
        L31:
            r3 = move-exception
            r2 = r1
        L33:
            io.grpc.netty.shaded.io.netty.util.internal.logging.b r4 = io.grpc.netty.shaded.io.netty.channel.DefaultChannelId.logger
            java.lang.String r5 = "Could not invoke ManagementFactory.getRuntimeMXBean().getName(); Android?"
            r4.debug(r5, r3)
            java.lang.String r3 = "android.os.Process"
            java.lang.Class r0 = java.lang.Class.forName(r3, r0, r2)     // Catch: java.lang.Throwable -> L53
            java.lang.String r2 = "myPid"
            java.lang.Class<?>[] r3 = io.grpc.netty.shaded.io.netty.util.internal.h.f45068e     // Catch: java.lang.Throwable -> L53
            java.lang.reflect.Method r0 = r0.getMethod(r2, r3)     // Catch: java.lang.Throwable -> L53
            java.lang.Object[] r2 = io.grpc.netty.shaded.io.netty.util.internal.h.f45067d     // Catch: java.lang.Throwable -> L53
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Throwable -> L53
            java.lang.String r3 = r0.toString()     // Catch: java.lang.Throwable -> L53
            goto L5d
        L53:
            r0 = move-exception
            io.grpc.netty.shaded.io.netty.util.internal.logging.b r1 = io.grpc.netty.shaded.io.netty.channel.DefaultChannelId.logger
            java.lang.String r2 = "Could not invoke Process.myPid(); not Android?"
            r1.debug(r2, r0)
            java.lang.String r3 = ""
        L5d:
            r0 = 64
            int r0 = r3.indexOf(r0)
            if (r0 < 0) goto L6a
            r1 = 0
            java.lang.String r3 = r3.substring(r1, r0)
        L6a:
            int r0 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.NumberFormatException -> L6f
            goto L70
        L6f:
            r0 = -1
        L70:
            if (r0 >= 0) goto L85
            java.util.Random r0 = io.grpc.netty.shaded.io.netty.util.internal.t.Q0()
            int r0 = r0.nextInt()
            io.grpc.netty.shaded.io.netty.util.internal.logging.b r1 = io.grpc.netty.shaded.io.netty.channel.DefaultChannelId.logger
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            java.lang.String r4 = "Failed to find the current process ID from '{}'; using a random value: {}"
            r1.warn(r4, r3, r2)
        L85:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.channel.DefaultChannelId.defaultProcessId():int");
    }

    public static DefaultChannelId newInstance() {
        return new DefaultChannelId();
    }

    private String newLongValue() {
        StringBuilder sb2 = new StringBuilder((this.data.length * 2) + 5);
        appendHexDumpField(sb2, appendHexDumpField(sb2, appendHexDumpField(sb2, appendHexDumpField(sb2, appendHexDumpField(sb2, 0, MACHINE_ID.length), 4), 4), 8), 4);
        return sb2.substring(0, sb2.length() - 1);
    }

    private int writeInt(int i9, int i10) {
        byte[] bArr = this.data;
        int i11 = i9 + 1;
        bArr[i9] = (byte) (i10 >>> 24);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i10 >>> 16);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (i10 >>> 8);
        int i14 = i13 + 1;
        bArr[i13] = (byte) i10;
        return i14;
    }

    private int writeLong(int i9, long j10) {
        byte[] bArr = this.data;
        int i10 = i9 + 1;
        bArr[i9] = (byte) (j10 >>> 56);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (j10 >>> 48);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (j10 >>> 40);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (j10 >>> 32);
        int i14 = i13 + 1;
        bArr[i13] = (byte) (j10 >>> 24);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (j10 >>> 16);
        int i16 = i15 + 1;
        bArr[i15] = (byte) (j10 >>> 8);
        int i17 = i16 + 1;
        bArr[i16] = (byte) j10;
        return i17;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.ChannelId
    public String asLongText() {
        String str = this.longValue;
        if (str == null) {
            String newLongValue = newLongValue();
            this.longValue = newLongValue;
            return newLongValue;
        }
        return str;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.ChannelId
    public String asShortText() {
        String str = this.shortValue;
        if (str == null) {
            byte[] bArr = this.data;
            String x10 = kg.n.x(bArr, bArr.length - 4, 4);
            this.shortValue = x10;
            return x10;
        }
        return str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DefaultChannelId) {
            DefaultChannelId defaultChannelId = (DefaultChannelId) obj;
            return this.hashCode == defaultChannelId.hashCode && Arrays.equals(this.data, defaultChannelId.data);
        }
        return false;
    }

    public int hashCode() {
        return this.hashCode;
    }

    public String toString() {
        return asShortText();
    }

    @Override // java.lang.Comparable
    public int compareTo(ChannelId channelId) {
        if (this == channelId) {
            return 0;
        }
        if (channelId instanceof DefaultChannelId) {
            byte[] bArr = ((DefaultChannelId) channelId).data;
            int length = this.data.length;
            int length2 = bArr.length;
            int min = Math.min(length, length2);
            for (int i9 = 0; i9 < min; i9++) {
                byte b10 = this.data[i9];
                byte b11 = bArr[i9];
                if (b10 != b11) {
                    return (b10 & UByte.MAX_VALUE) - (b11 & UByte.MAX_VALUE);
                }
            }
            return length - length2;
        }
        return asLongText().compareTo(channelId.asLongText());
    }
}
