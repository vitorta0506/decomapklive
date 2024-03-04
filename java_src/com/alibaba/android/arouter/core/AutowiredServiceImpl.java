package com.alibaba.android.arouter.core;

import android.content.Context;
import android.util.LruCache;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.alibaba.android.arouter.facade.service.AutowiredService;
import com.alibaba.android.arouter.facade.template.ISyringe;
import java.util.ArrayList;
import java.util.List;
@Route(path = "/arouter/service/autowired")
/* loaded from: classes.dex */
public class AutowiredServiceImpl implements AutowiredService {

    /* renamed from: a  reason: collision with root package name */
    private LruCache<String, ISyringe> f3881a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f3882b;

    private void a(Object obj, Class<?> cls) {
        if (cls == null) {
            cls = obj.getClass();
        }
        ISyringe b10 = b(cls);
        if (b10 != null) {
            b10.inject(obj);
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass == null || superclass.getName().startsWith("android")) {
            return;
        }
        a(obj, superclass);
    }

    private ISyringe b(Class<?> cls) {
        String name = cls.getName();
        try {
            if (this.f3882b.contains(name)) {
                return null;
            }
            ISyringe iSyringe = this.f3881a.get(name);
            if (iSyringe == null) {
                iSyringe = (ISyringe) Class.forName(cls.getName() + "$$ARouter$$Autowired").getConstructor(new Class[0]).newInstance(new Object[0]);
            }
            this.f3881a.put(name, iSyringe);
            return iSyringe;
        } catch (Exception unused) {
            this.f3882b.add(name);
            return null;
        }
    }

    @Override // com.alibaba.android.arouter.facade.service.AutowiredService
    public void autowire(Object obj) {
        a(obj, null);
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(Context context) {
        this.f3881a = new LruCache<>(50);
        this.f3882b = new ArrayList();
    }
}
