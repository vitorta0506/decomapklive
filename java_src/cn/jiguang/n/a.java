package cn.jiguang.n;

import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import cn.jiguang.s.e;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.List;
import kotlin.UByte;
/* loaded from: classes.dex */
public class a {

    /* renamed from: cn.jiguang.n.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0041a {

        /* renamed from: a  reason: collision with root package name */
        HandlerThread f2651a;

        /* renamed from: b  reason: collision with root package name */
        Handler f2652b;

        /* renamed from: c  reason: collision with root package name */
        private int f2653c;

        /* renamed from: d  reason: collision with root package name */
        private String f2654d;

        C0041a(String str, int i9) {
            this.f2653c = i9;
            this.f2654d = str;
            HandlerThread handlerThread = new HandlerThread("jg_ptm_thread");
            this.f2651a = handlerThread;
            handlerThread.start();
            this.f2652b = new Handler(this.f2651a.getLooper(), new Handler.Callback() { // from class: cn.jiguang.n.a.a.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    Thread thread;
                    if (message == null || message.what != 1 || (thread = (Thread) message.obj) == null) {
                        return false;
                    }
                    thread.interrupt();
                    return false;
                }
            });
        }

        private void b(byte[] bArr, int i9, int i10) {
            byte[] bArr2 = {bArr[0], bArr[1], bArr[2], 0};
            Thread currentThread = Thread.currentThread();
            while (i9 < i10) {
                bArr2[3] = (byte) i9;
                if (bArr2[3] != bArr[3]) {
                    String b10 = a.b(bArr2);
                    if (!b10.equalsIgnoreCase(this.f2654d)) {
                        this.f2652b.removeCallbacksAndMessages(null);
                        Message obtainMessage = this.f2652b.obtainMessage(1);
                        obtainMessage.obj = currentThread;
                        Bundle bundle = new Bundle();
                        bundle.putString("ip", b10);
                        obtainMessage.setData(bundle);
                        this.f2652b.sendMessageDelayed(obtainMessage, this.f2653c);
                        e.a(new String[]{"ping -c 1 -w 1 " + b10}, 0);
                    }
                }
                i9++;
            }
        }

        void a(byte[] bArr, int i9, int i10) {
            b(bArr, i9, i10);
            this.f2651a.quit();
        }
    }

    public static String a(int i9) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(i9 & 255);
        stringBuffer.append(JwtParser.SEPARATOR_CHAR);
        stringBuffer.append((i9 >> 8) & 255);
        stringBuffer.append(JwtParser.SEPARATOR_CHAR);
        stringBuffer.append((i9 >> 16) & 255);
        stringBuffer.append(JwtParser.SEPARATOR_CHAR);
        stringBuffer.append((i9 >> 24) & 255);
        return stringBuffer.toString();
    }

    public static List<cn.jiguang.m.a> a(String str) {
        cn.jiguang.m.a b10;
        List<String> a10 = e.a(new String[]{"cat /proc/net/arp"}, 1);
        if (a10 == null || a10.isEmpty()) {
            cn.jiguang.al.a.d("JArpHelper", "execute command failed");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : a10) {
            if (!TextUtils.isEmpty(str2) && (b10 = b(str2)) != null && b10.f2649c.equals("0x2") && !str.equals(b10.f2647a) && !b10.f2650d.equals("00:00:00:00:00:00")) {
                arrayList.add(b10);
            }
        }
        return arrayList;
    }

    public static void a(String str, byte[] bArr) {
        new C0041a(str, 300).a(bArr, 0, 255);
    }

    public static byte[] a(long j10) {
        return new byte[]{(byte) (j10 & 255), (byte) ((j10 >> 8) & 255), (byte) ((j10 >> 16) & 255), (byte) ((j10 >> 24) & 255)};
    }

    private static cn.jiguang.m.a b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        byte[] bytes = str.getBytes();
        cn.jiguang.m.a aVar = new cn.jiguang.m.a();
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i9 >= bytes.length - 1) {
                break;
            }
            i9++;
            if (bytes[i9] == 32) {
                int i12 = i9 - i10;
                if (i12 > 1) {
                    String str2 = new String(bytes, i10, i12);
                    if (i11 != 0) {
                        if (i11 != 1) {
                            if (i11 != 2) {
                                if (i11 == 3) {
                                    aVar.f2650d = str2;
                                    break;
                                }
                            } else {
                                aVar.f2649c = str2;
                            }
                        } else {
                            aVar.f2648b = str2;
                        }
                    } else {
                        aVar.f2647a = str2;
                    }
                    i11++;
                }
                i10 = i9 + 1;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(bArr[0] & UByte.MAX_VALUE);
        stringBuffer.append(JwtParser.SEPARATOR_CHAR);
        stringBuffer.append(bArr[1] & UByte.MAX_VALUE);
        stringBuffer.append(JwtParser.SEPARATOR_CHAR);
        stringBuffer.append(bArr[2] & UByte.MAX_VALUE);
        stringBuffer.append(JwtParser.SEPARATOR_CHAR);
        stringBuffer.append(bArr[3] & UByte.MAX_VALUE);
        return stringBuffer.toString();
    }
}
