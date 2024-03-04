package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.alibaba.android.arouter.facade.template.IRouteRoot;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Map;
/* loaded from: classes.dex */
public class ARouter$$Root$$app implements IRouteRoot {
    @Override // com.alibaba.android.arouter.facade.template.IRouteRoot
    public void loadInto(Map<String, Class<? extends IRouteGroup>> map) {
        map.put(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, ARouter$$Group$$app.class);
        map.put("ugc", ARouter$$Group$$ugc.class);
    }
}
