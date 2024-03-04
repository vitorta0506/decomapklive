package com.google.protobuf;

import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class x2 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteString f15341a;

        a(ByteString byteString) {
            this.f15341a = byteString;
        }

        @Override // com.google.protobuf.x2.c
        public byte a(int i9) {
            return this.f15341a.byteAt(i9);
        }

        @Override // com.google.protobuf.x2.c
        public int size() {
            return this.f15341a.size();
        }
    }

    /* loaded from: classes3.dex */
    static class b implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ byte[] f15342a;

        b(byte[] bArr) {
            this.f15342a = bArr;
        }

        @Override // com.google.protobuf.x2.c
        public byte a(int i9) {
            return this.f15342a[i9];
        }

        @Override // com.google.protobuf.x2.c
        public int size() {
            return this.f15342a.length;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface c {
        byte a(int i9);

        int size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(ByteString byteString) {
        return b(new a(byteString));
    }

    static String b(c cVar) {
        StringBuilder sb2 = new StringBuilder(cVar.size());
        for (int i9 = 0; i9 < cVar.size(); i9++) {
            byte a10 = cVar.a(i9);
            if (a10 == 34) {
                sb2.append("\\\"");
            } else if (a10 == 39) {
                sb2.append("\\'");
            } else if (a10 != 92) {
                switch (a10) {
                    case 7:
                        sb2.append("\\a");
                        continue;
                    case 8:
                        sb2.append("\\b");
                        continue;
                    case 9:
                        sb2.append("\\t");
                        continue;
                    case 10:
                        sb2.append("\\n");
                        continue;
                    case 11:
                        sb2.append("\\v");
                        continue;
                    case 12:
                        sb2.append("\\f");
                        continue;
                    case 13:
                        sb2.append("\\r");
                        continue;
                    default:
                        if (a10 >= 32 && a10 <= 126) {
                            sb2.append((char) a10);
                            continue;
                        } else {
                            sb2.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb2.append((char) (((a10 >>> 6) & 3) + 48));
                            sb2.append((char) (((a10 >>> 3) & 7) + 48));
                            sb2.append((char) ((a10 & 7) + 48));
                            break;
                        }
                        break;
                }
            } else {
                sb2.append("\\\\");
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(byte[] bArr) {
        return b(new b(bArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(String str) {
        return str.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(String str) {
        return a(ByteString.copyFromUtf8(str));
    }
}
