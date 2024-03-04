package com.snapchat.kit.sdk.core.models;

import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import java.util.Objects;
/* loaded from: classes4.dex */
public class d {
    @SerializedName("error")

    /* renamed from: a  reason: collision with root package name */
    protected String f29507a;
    @SerializedName(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION)

    /* renamed from: b  reason: collision with root package name */
    protected String f29508b;
    @SerializedName("message")

    /* renamed from: c  reason: collision with root package name */
    protected String f29509c;

    public d(String str) {
        this.f29507a = str;
    }

    public final String a() {
        return this.f29507a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof d)) {
            d dVar = (d) obj;
            if (Objects.equals(this.f29507a, dVar.f29507a) && Objects.equals(this.f29508b, dVar.f29508b) && Objects.equals(this.f29509c, dVar.f29509c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f29507a;
        int hashCode = (str == null ? 0 : str.hashCode() * 37) + 17;
        String str2 = this.f29508b;
        int hashCode2 = hashCode + (str2 == null ? 0 : str2.hashCode() * 37);
        String str3 = this.f29509c;
        return hashCode2 + (str3 != null ? str3.hashCode() * 37 : 0);
    }
}
