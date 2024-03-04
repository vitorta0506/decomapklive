package okhttp3.internal.ws;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Headers;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cBE\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003JN\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\u000e\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions;", "", "perMessageDeflate", "", "clientMaxWindowBits", "", "clientNoContextTakeover", "serverMaxWindowBits", "serverNoContextTakeover", "unknownValues", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V", "Ljava/lang/Integer;", "component1", "component2", "()Ljava/lang/Integer;", "component3", "component4", "component5", "component6", "copy", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)Lokhttp3/internal/ws/WebSocketExtensions;", "equals", "other", "hashCode", "noContextTakeover", "clientOriginated", "toString", "", "Companion", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class WebSocketExtensions {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    @JvmField
    @Nullable
    public final Integer clientMaxWindowBits;
    @JvmField
    public final boolean clientNoContextTakeover;
    @JvmField
    public final boolean perMessageDeflate;
    @JvmField
    @Nullable
    public final Integer serverMaxWindowBits;
    @JvmField
    public final boolean serverNoContextTakeover;
    @JvmField
    public final boolean unknownValues;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions$Companion;", "", "()V", "HEADER_WEB_SOCKET_EXTENSION", "", "parse", "Lokhttp3/internal/ws/WebSocketExtensions;", "responseHeaders", "Lokhttp3/Headers;", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final WebSocketExtensions parse(@NotNull Headers responseHeaders) throws IOException {
            boolean equals;
            boolean equals2;
            boolean equals3;
            Integer intOrNull;
            boolean equals4;
            boolean equals5;
            Integer intOrNull2;
            boolean equals6;
            Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
            int size = responseHeaders.size();
            int i9 = 0;
            boolean z10 = false;
            Integer num = null;
            boolean z11 = false;
            Integer num2 = null;
            boolean z12 = false;
            boolean z13 = false;
            while (i9 < size) {
                int i10 = i9 + 1;
                equals = StringsKt__StringsJVMKt.equals(responseHeaders.name(i9), WebSocketExtensions.HEADER_WEB_SOCKET_EXTENSION, true);
                if (equals) {
                    String value = responseHeaders.value(i9);
                    int i11 = 0;
                    while (i11 < value.length()) {
                        int delimiterOffset$default = Util.delimiterOffset$default(value, ',', i11, 0, 4, (Object) null);
                        int delimiterOffset = Util.delimiterOffset(value, ';', i11, delimiterOffset$default);
                        String trimSubstring = Util.trimSubstring(value, i11, delimiterOffset);
                        int i12 = delimiterOffset + 1;
                        equals2 = StringsKt__StringsJVMKt.equals(trimSubstring, "permessage-deflate", true);
                        if (equals2) {
                            if (z10) {
                                z13 = true;
                            }
                            i11 = i12;
                            while (i11 < delimiterOffset$default) {
                                int delimiterOffset2 = Util.delimiterOffset(value, ';', i11, delimiterOffset$default);
                                int delimiterOffset3 = Util.delimiterOffset(value, '=', i11, delimiterOffset2);
                                String trimSubstring2 = Util.trimSubstring(value, i11, delimiterOffset3);
                                String removeSurrounding = delimiterOffset3 < delimiterOffset2 ? StringsKt__StringsKt.removeSurrounding(Util.trimSubstring(value, delimiterOffset3 + 1, delimiterOffset2), (CharSequence) "\"") : null;
                                i11 = delimiterOffset2 + 1;
                                equals3 = StringsKt__StringsJVMKt.equals(trimSubstring2, "client_max_window_bits", true);
                                if (equals3) {
                                    if (num != null) {
                                        z13 = true;
                                    }
                                    if (removeSurrounding == null) {
                                        num = null;
                                    } else {
                                        intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(removeSurrounding);
                                        num = intOrNull;
                                    }
                                    if (num == null) {
                                        z13 = true;
                                    }
                                } else {
                                    equals4 = StringsKt__StringsJVMKt.equals(trimSubstring2, "client_no_context_takeover", true);
                                    if (equals4) {
                                        if (z11) {
                                            z13 = true;
                                        }
                                        if (removeSurrounding != null) {
                                            z13 = true;
                                        }
                                        z11 = true;
                                    } else {
                                        equals5 = StringsKt__StringsJVMKt.equals(trimSubstring2, "server_max_window_bits", true);
                                        if (equals5) {
                                            if (num2 != null) {
                                                z13 = true;
                                            }
                                            if (removeSurrounding == null) {
                                                num2 = null;
                                            } else {
                                                intOrNull2 = StringsKt__StringNumberConversionsKt.toIntOrNull(removeSurrounding);
                                                num2 = intOrNull2;
                                            }
                                            if (num2 == null) {
                                                z13 = true;
                                            }
                                        } else {
                                            equals6 = StringsKt__StringsJVMKt.equals(trimSubstring2, "server_no_context_takeover", true);
                                            if (equals6) {
                                                if (z12) {
                                                    z13 = true;
                                                }
                                                if (removeSurrounding != null) {
                                                    z13 = true;
                                                }
                                                z12 = true;
                                            } else {
                                                z13 = true;
                                            }
                                        }
                                    }
                                }
                            }
                            z10 = true;
                        } else {
                            i11 = i12;
                            z13 = true;
                        }
                    }
                }
                i9 = i10;
            }
            return new WebSocketExtensions(z10, num, z11, num2, z12, z13);
        }
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public WebSocketExtensions(boolean z10, @Nullable Integer num, boolean z11, @Nullable Integer num2, boolean z12, boolean z13) {
        this.perMessageDeflate = z10;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z11;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z12;
        this.unknownValues = z13;
    }

    public static /* synthetic */ WebSocketExtensions copy$default(WebSocketExtensions webSocketExtensions, boolean z10, Integer num, boolean z11, Integer num2, boolean z12, boolean z13, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = webSocketExtensions.perMessageDeflate;
        }
        if ((i9 & 2) != 0) {
            num = webSocketExtensions.clientMaxWindowBits;
        }
        Integer num3 = num;
        if ((i9 & 4) != 0) {
            z11 = webSocketExtensions.clientNoContextTakeover;
        }
        boolean z14 = z11;
        if ((i9 & 8) != 0) {
            num2 = webSocketExtensions.serverMaxWindowBits;
        }
        Integer num4 = num2;
        if ((i9 & 16) != 0) {
            z12 = webSocketExtensions.serverNoContextTakeover;
        }
        boolean z15 = z12;
        if ((i9 & 32) != 0) {
            z13 = webSocketExtensions.unknownValues;
        }
        return webSocketExtensions.copy(z10, num3, z14, num4, z15, z13);
    }

    public final boolean component1() {
        return this.perMessageDeflate;
    }

    @Nullable
    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    @Nullable
    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    @NotNull
    public final WebSocketExtensions copy(boolean z10, @Nullable Integer num, boolean z11, @Nullable Integer num2, boolean z12, boolean z13) {
        return new WebSocketExtensions(z10, num, z11, num2, z12, z13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WebSocketExtensions) {
            WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
            return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && Intrinsics.areEqual(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && Intrinsics.areEqual(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    public int hashCode() {
        boolean z10 = this.perMessageDeflate;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i9 = r02 * 31;
        Integer num = this.clientMaxWindowBits;
        int hashCode = (i9 + (num == null ? 0 : num.hashCode())) * 31;
        ?? r22 = this.clientNoContextTakeover;
        int i10 = r22;
        if (r22 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode + i10) * 31;
        Integer num2 = this.serverMaxWindowBits;
        int hashCode2 = (i11 + (num2 != null ? num2.hashCode() : 0)) * 31;
        ?? r23 = this.serverNoContextTakeover;
        int i12 = r23;
        if (r23 != 0) {
            i12 = 1;
        }
        int i13 = (hashCode2 + i12) * 31;
        boolean z11 = this.unknownValues;
        return i13 + (z11 ? 1 : z11 ? 1 : 0);
    }

    public final boolean noContextTakeover(boolean z10) {
        if (z10) {
            return this.clientNoContextTakeover;
        }
        return this.serverNoContextTakeover;
    }

    @NotNull
    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ')';
    }

    public /* synthetic */ WebSocketExtensions(boolean z10, Integer num, boolean z11, Integer num2, boolean z12, boolean z13, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? false : z10, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? false : z11, (i9 & 8) == 0 ? num2 : null, (i9 & 16) != 0 ? false : z12, (i9 & 32) != 0 ? false : z13);
    }
}
