package io.grpc.netty.shaded.io.netty.handler.codec.http;

import androidx.webkit.internal.AssetHelper;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.share.internal.ShareInternalUtility;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.BrightRemindSetting;
/* loaded from: classes5.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44032a = io.grpc.netty.shaded.io.netty.util.c.g("application/json");

    /* renamed from: b  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44034b = io.grpc.netty.shaded.io.netty.util.c.g("application/x-www-form-urlencoded");

    /* renamed from: c  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44036c = io.grpc.netty.shaded.io.netty.util.c.g("application/octet-stream");

    /* renamed from: d  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44037d = io.grpc.netty.shaded.io.netty.util.c.g("application/xhtml+xml");

    /* renamed from: e  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44038e = io.grpc.netty.shaded.io.netty.util.c.g("application/xml");

    /* renamed from: f  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44039f = io.grpc.netty.shaded.io.netty.util.c.g("application/zstd");

    /* renamed from: g  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44040g = io.grpc.netty.shaded.io.netty.util.c.g("attachment");

    /* renamed from: h  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44041h = io.grpc.netty.shaded.io.netty.util.c.g("base64");

    /* renamed from: i  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44042i = io.grpc.netty.shaded.io.netty.util.c.g("binary");

    /* renamed from: j  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44043j = io.grpc.netty.shaded.io.netty.util.c.g("boundary");

    /* renamed from: k  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44044k = io.grpc.netty.shaded.io.netty.util.c.g("bytes");

    /* renamed from: l  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44045l = io.grpc.netty.shaded.io.netty.util.c.g("charset");

    /* renamed from: m  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44046m = io.grpc.netty.shaded.io.netty.util.c.g("chunked");

    /* renamed from: n  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44047n = io.grpc.netty.shaded.io.netty.util.c.g("close");

    /* renamed from: o  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44048o = io.grpc.netty.shaded.io.netty.util.c.g("compress");

    /* renamed from: p  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44049p = io.grpc.netty.shaded.io.netty.util.c.g("100-continue");

    /* renamed from: q  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44050q = io.grpc.netty.shaded.io.netty.util.c.g("deflate");

    /* renamed from: r  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44051r = io.grpc.netty.shaded.io.netty.util.c.g("x-deflate");

    /* renamed from: s  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44052s = io.grpc.netty.shaded.io.netty.util.c.g(ShareInternalUtility.STAGING_PARAM);

    /* renamed from: t  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44053t = io.grpc.netty.shaded.io.netty.util.c.g("filename");

    /* renamed from: u  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44054u = io.grpc.netty.shaded.io.netty.util.c.g("form-data");

    /* renamed from: v  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44055v = io.grpc.netty.shaded.io.netty.util.c.g("gzip");

    /* renamed from: w  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44056w = io.grpc.netty.shaded.io.netty.util.c.g(BrightRemindSetting.BRIGHT_REMIND);

    /* renamed from: x  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44057x = io.grpc.netty.shaded.io.netty.util.c.g("zstd");

    /* renamed from: y  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44058y = io.grpc.netty.shaded.io.netty.util.c.g("gzip,deflate");

    /* renamed from: z  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44059z = io.grpc.netty.shaded.io.netty.util.c.g("x-gzip");
    public static final io.grpc.netty.shaded.io.netty.util.c A = io.grpc.netty.shaded.io.netty.util.c.g("identity");
    public static final io.grpc.netty.shaded.io.netty.util.c B = io.grpc.netty.shaded.io.netty.util.c.g("keep-alive");
    public static final io.grpc.netty.shaded.io.netty.util.c C = io.grpc.netty.shaded.io.netty.util.c.g("max-age");
    public static final io.grpc.netty.shaded.io.netty.util.c D = io.grpc.netty.shaded.io.netty.util.c.g("max-stale");
    public static final io.grpc.netty.shaded.io.netty.util.c E = io.grpc.netty.shaded.io.netty.util.c.g("min-fresh");
    public static final io.grpc.netty.shaded.io.netty.util.c F = io.grpc.netty.shaded.io.netty.util.c.g("multipart/form-data");
    public static final io.grpc.netty.shaded.io.netty.util.c G = io.grpc.netty.shaded.io.netty.util.c.g("multipart/mixed");
    public static final io.grpc.netty.shaded.io.netty.util.c H = io.grpc.netty.shaded.io.netty.util.c.g("must-revalidate");
    public static final io.grpc.netty.shaded.io.netty.util.c I = io.grpc.netty.shaded.io.netty.util.c.g("name");
    public static final io.grpc.netty.shaded.io.netty.util.c J = io.grpc.netty.shaded.io.netty.util.c.g("no-cache");
    public static final io.grpc.netty.shaded.io.netty.util.c K = io.grpc.netty.shaded.io.netty.util.c.g("no-store");
    public static final io.grpc.netty.shaded.io.netty.util.c L = io.grpc.netty.shaded.io.netty.util.c.g("no-transform");
    public static final io.grpc.netty.shaded.io.netty.util.c M = io.grpc.netty.shaded.io.netty.util.c.g(IntegrityManager.INTEGRITY_TYPE_NONE);
    public static final io.grpc.netty.shaded.io.netty.util.c N = io.grpc.netty.shaded.io.netty.util.c.g("0");
    public static final io.grpc.netty.shaded.io.netty.util.c O = io.grpc.netty.shaded.io.netty.util.c.g("only-if-cached");
    public static final io.grpc.netty.shaded.io.netty.util.c P = io.grpc.netty.shaded.io.netty.util.c.g(PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE);
    public static final io.grpc.netty.shaded.io.netty.util.c Q = io.grpc.netty.shaded.io.netty.util.c.g("proxy-revalidate");
    public static final io.grpc.netty.shaded.io.netty.util.c R = io.grpc.netty.shaded.io.netty.util.c.g("public");
    public static final io.grpc.netty.shaded.io.netty.util.c S = io.grpc.netty.shaded.io.netty.util.c.g("quoted-printable");
    public static final io.grpc.netty.shaded.io.netty.util.c T = io.grpc.netty.shaded.io.netty.util.c.g("s-maxage");
    public static final io.grpc.netty.shaded.io.netty.util.c U = io.grpc.netty.shaded.io.netty.util.c.g("text/css");
    public static final io.grpc.netty.shaded.io.netty.util.c V = io.grpc.netty.shaded.io.netty.util.c.g("text/html");
    public static final io.grpc.netty.shaded.io.netty.util.c W = io.grpc.netty.shaded.io.netty.util.c.g("text/event-stream");
    public static final io.grpc.netty.shaded.io.netty.util.c X = io.grpc.netty.shaded.io.netty.util.c.g(AssetHelper.DEFAULT_MIME_TYPE);
    public static final io.grpc.netty.shaded.io.netty.util.c Y = io.grpc.netty.shaded.io.netty.util.c.g("trailers");
    public static final io.grpc.netty.shaded.io.netty.util.c Z = io.grpc.netty.shaded.io.netty.util.c.g("upgrade");

    /* renamed from: a0  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44033a0 = io.grpc.netty.shaded.io.netty.util.c.g("websocket");

    /* renamed from: b0  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f44035b0 = io.grpc.netty.shaded.io.netty.util.c.g("XMLHttpRequest");
}
