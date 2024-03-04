package com.alibaba.android.arouter.core;

import android.content.Context;
import android.net.Uri;
import com.alibaba.android.arouter.exception.HandlerException;
import com.alibaba.android.arouter.exception.NoRouteFoundException;
import com.alibaba.android.arouter.facade.Postcard;
import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.enums.TypeKind;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.ILogger;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import java.lang.reflect.InvocationTargetException;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import q.c;
import q.e;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Context f3893a;

    /* renamed from: b  reason: collision with root package name */
    static ThreadPoolExecutor f3894b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f3895c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.alibaba.android.arouter.core.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0057a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3896a;

        static {
            int[] iArr = new int[RouteType.values().length];
            f3896a = iArr;
            try {
                iArr[RouteType.PROVIDER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3896a[RouteType.FRAGMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static synchronized void a(String str, IRouteGroup iRouteGroup) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        synchronized (a.class) {
            if (b.f3897a.containsKey(str)) {
                b.f3897a.get(str).getConstructor(new Class[0]).newInstance(new Object[0]).loadInto(b.f3898b);
                b.f3897a.remove(str);
            }
            if (iRouteGroup != null) {
                iRouteGroup.loadInto(b.f3898b);
            }
        }
    }

    public static Postcard b(String str) {
        RouteMeta routeMeta = b.f3900d.get(str);
        if (routeMeta == null) {
            return null;
        }
        return new Postcard(routeMeta.getPath(), routeMeta.getGroup());
    }

    public static synchronized void c(Postcard postcard) {
        synchronized (a.class) {
            if (postcard != null) {
                RouteMeta routeMeta = b.f3898b.get(postcard.getPath());
                if (routeMeta == null) {
                    if (b.f3897a.containsKey(postcard.getGroup())) {
                        try {
                            if (o.a.b()) {
                                o.a.f55433c.debug(ILogger.defaultTag, String.format(Locale.getDefault(), "The group [%s] starts loading, trigger by [%s]", postcard.getGroup(), postcard.getPath()));
                            }
                            a(postcard.getGroup(), null);
                            if (o.a.b()) {
                                o.a.f55433c.debug(ILogger.defaultTag, String.format(Locale.getDefault(), "The group [%s] has already been loaded, trigger by [%s]", postcard.getGroup(), postcard.getPath()));
                            }
                            c(postcard);
                        } catch (Exception e10) {
                            throw new HandlerException("ARouter::Fatal exception when loading group meta. [" + e10.getMessage() + "]");
                        }
                    } else {
                        throw new NoRouteFoundException("ARouter::There is no route match the path [" + postcard.getPath() + "], in group [" + postcard.getGroup() + "]");
                    }
                } else {
                    postcard.setDestination(routeMeta.getDestination());
                    postcard.setType(routeMeta.getType());
                    postcard.setPriority(routeMeta.getPriority());
                    postcard.setExtra(routeMeta.getExtra());
                    Uri uri = postcard.getUri();
                    if (uri != null) {
                        Map<String, String> c10 = e.c(uri);
                        Map<String, Integer> paramsType = routeMeta.getParamsType();
                        if (c.b(paramsType)) {
                            for (Map.Entry<String, Integer> entry : paramsType.entrySet()) {
                                f(postcard, entry.getValue(), entry.getKey(), c10.get(entry.getKey()));
                            }
                            postcard.getExtras().putStringArray("wmHzgD4lOj5o4241", (String[]) paramsType.keySet().toArray(new String[0]));
                        }
                        postcard.withString("NTeRQWvye18AkPd6G", uri.toString());
                    }
                    int i9 = C0057a.f3896a[routeMeta.getType().ordinal()];
                    if (i9 == 1) {
                        Class<?> destination = routeMeta.getDestination();
                        IProvider iProvider = b.f3899c.get(destination);
                        if (iProvider == null) {
                            try {
                                iProvider = (IProvider) destination.getConstructor(new Class[0]).newInstance(new Object[0]);
                                iProvider.init(f3893a);
                                b.f3899c.put(destination, iProvider);
                            } catch (Exception e11) {
                                o.a.f55433c.error(ILogger.defaultTag, "Init provider failed!", e11);
                                throw new HandlerException("Init provider failed!");
                            }
                        }
                        postcard.setProvider(iProvider);
                        postcard.greenChannel();
                    } else if (i9 == 2) {
                        postcard.greenChannel();
                    }
                }
            } else {
                throw new NoRouteFoundException("ARouter::No postcard!");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00b4 A[Catch: Exception -> 0x018f, all -> 0x01b0, TryCatch #1 {Exception -> 0x018f, blocks: (B:5:0x0007, B:7:0x0013, B:30:0x011a, B:32:0x0144, B:33:0x014d, B:35:0x0153, B:8:0x001e, B:10:0x0024, B:13:0x002b, B:18:0x0078, B:19:0x00ae, B:21:0x00b4, B:23:0x00c2, B:24:0x00da, B:26:0x00e2, B:27:0x00fa, B:29:0x0102, B:14:0x004b, B:16:0x0062, B:17:0x0075), top: B:45:0x0007, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void d(android.content.Context r8, java.util.concurrent.ThreadPoolExecutor r9) throws com.alibaba.android.arouter.exception.HandlerException {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.android.arouter.core.a.d(android.content.Context, java.util.concurrent.ThreadPoolExecutor):void");
    }

    private static void e() {
        f3895c = false;
    }

    private static void f(Postcard postcard, Integer num, String str, String str2) {
        if (e.b(str) || e.b(str2)) {
            return;
        }
        try {
            if (num != null) {
                if (num.intValue() == TypeKind.BOOLEAN.ordinal()) {
                    postcard.withBoolean(str, Boolean.parseBoolean(str2));
                } else if (num.intValue() == TypeKind.BYTE.ordinal()) {
                    postcard.withByte(str, Byte.parseByte(str2));
                } else if (num.intValue() == TypeKind.SHORT.ordinal()) {
                    postcard.withShort(str, Short.parseShort(str2));
                } else if (num.intValue() == TypeKind.INT.ordinal()) {
                    postcard.withInt(str, Integer.parseInt(str2));
                } else if (num.intValue() == TypeKind.LONG.ordinal()) {
                    postcard.withLong(str, Long.parseLong(str2));
                } else if (num.intValue() == TypeKind.FLOAT.ordinal()) {
                    postcard.withFloat(str, Float.parseFloat(str2));
                } else if (num.intValue() == TypeKind.DOUBLE.ordinal()) {
                    postcard.withDouble(str, Double.parseDouble(str2));
                } else if (num.intValue() == TypeKind.STRING.ordinal()) {
                    postcard.withString(str, str2);
                } else if (num.intValue() != TypeKind.PARCELABLE.ordinal()) {
                    if (num.intValue() == TypeKind.OBJECT.ordinal()) {
                        postcard.withString(str, str2);
                    } else {
                        postcard.withString(str, str2);
                    }
                }
            } else {
                postcard.withString(str, str2);
            }
        } catch (Throwable th2) {
            ILogger iLogger = o.a.f55433c;
            iLogger.warning(ILogger.defaultTag, "LogisticsCenter setValue failed! " + th2.getMessage());
        }
    }
}
