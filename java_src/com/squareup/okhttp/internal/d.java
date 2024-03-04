package com.squareup.okhttp.internal;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.ConnectionSpec;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.OkHttpClient;
import java.net.MalformedURLException;
import java.net.UnknownHostException;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import qe.o;
/* loaded from: classes4.dex */
public abstract class d {
    public static d instance;
    public static final Logger logger = Logger.getLogger(OkHttpClient.class.getName());

    public static void initializeInstanceForTests() {
        new OkHttpClient();
    }

    public abstract void addLenient(Headers.Builder builder, String str);

    public abstract void addLenient(Headers.Builder builder, String str, String str2);

    public abstract void apply(ConnectionSpec connectionSpec, SSLSocket sSLSocket, boolean z10);

    public abstract o callEngineGetStreamAllocation(Call call);

    public abstract void callEnqueue(Call call, Callback callback, boolean z10);

    public abstract boolean connectionBecameIdle(ConnectionPool connectionPool, re.a aVar);

    public abstract re.a get(ConnectionPool connectionPool, Address address, o oVar);

    public abstract HttpUrl getHttpUrlChecked(String str) throws MalformedURLException, UnknownHostException;

    public abstract InternalCache internalCache(OkHttpClient okHttpClient);

    public abstract void put(ConnectionPool connectionPool, re.a aVar);

    public abstract h routeDatabase(ConnectionPool connectionPool);

    public abstract void setCache(OkHttpClient okHttpClient, InternalCache internalCache);
}
