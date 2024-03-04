package com.alibaba.android.arouter.core;

import com.alibaba.android.arouter.base.UniqueKeyTreeMap;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IInterceptor;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    static Map<String, Class<? extends IRouteGroup>> f3897a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    static Map<String, RouteMeta> f3898b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    static Map<Class, IProvider> f3899c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    static Map<String, RouteMeta> f3900d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    static Map<Integer, Class<? extends IInterceptor>> f3901e = new UniqueKeyTreeMap("More than one interceptors use same priority [%s]");

    /* renamed from: f  reason: collision with root package name */
    static List<IInterceptor> f3902f = new ArrayList();
}
