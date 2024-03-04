package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.utils.Constants;
/* loaded from: classes4.dex */
public class s extends j<TwitterAuthToken> {
    @SerializedName("user_name")

    /* renamed from: c  reason: collision with root package name */
    private final String f35342c;

    /* loaded from: classes4.dex */
    static class a implements we.d<s> {

        /* renamed from: a  reason: collision with root package name */
        private final Gson f35343a = new Gson();

        @Override // we.d
        /* renamed from: b */
        public s a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                return (s) this.f35343a.fromJson(str, (Class<Object>) s.class);
            } catch (Exception e10) {
                l.g().d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, e10.getMessage());
                return null;
            }
        }

        @Override // we.d
        /* renamed from: c */
        public String serialize(s sVar) {
            if (sVar == null || sVar.a() == null) {
                return "";
            }
            try {
                return this.f35343a.toJson(sVar);
            } catch (Exception e10) {
                l.g().d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, e10.getMessage());
                return "";
            }
        }
    }

    public s(TwitterAuthToken twitterAuthToken, long j10, String str) {
        super(twitterAuthToken, j10);
        this.f35342c = str;
    }

    public long c() {
        return b();
    }

    @Override // com.twitter.sdk.android.core.j
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && super.equals(obj)) {
            String str = this.f35342c;
            String str2 = ((s) obj).f35342c;
            return str != null ? str.equals(str2) : str2 == null;
        }
        return false;
    }

    @Override // com.twitter.sdk.android.core.j
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.f35342c;
        return hashCode + (str != null ? str.hashCode() : 0);
    }
}
