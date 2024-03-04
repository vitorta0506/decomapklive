package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
/* loaded from: classes4.dex */
public class d extends j<GuestAuthToken> {

    /* loaded from: classes4.dex */
    public static class a implements we.d<d> {

        /* renamed from: a  reason: collision with root package name */
        private final Gson f35108a = new GsonBuilder().registerTypeAdapter(GuestAuthToken.class, new AuthTokenAdapter()).create();

        @Override // we.d
        /* renamed from: b */
        public d a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                return (d) this.f35108a.fromJson(str, (Class<Object>) d.class);
            } catch (Exception e10) {
                g g10 = l.g();
                g10.d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Failed to deserialize session " + e10.getMessage());
                return null;
            }
        }

        @Override // we.d
        /* renamed from: c */
        public String serialize(d dVar) {
            if (dVar == null || dVar.a() == null) {
                return "";
            }
            try {
                return this.f35108a.toJson(dVar);
            } catch (Exception e10) {
                g g10 = l.g();
                g10.d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Failed to serialize session " + e10.getMessage());
                return "";
            }
        }
    }

    public d(GuestAuthToken guestAuthToken) {
        super(guestAuthToken, 0L);
    }
}
