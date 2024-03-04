package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import java.util.Map;
/* loaded from: classes.dex */
public class ARouter$$Group$$component_mvp implements IRouteGroup {
    @Override // com.alibaba.android.arouter.facade.template.IRouteGroup
    public void loadInto(Map<String, RouteMeta> map) {
        map.put(RouterPath.ROUTER_MVP, RouteMeta.build(RouteType.ACTIVITY, MVPActivity.class, RouterPath.ROUTER_MVP, "component_mvp", null, -1, Integer.MIN_VALUE));
    }
}
