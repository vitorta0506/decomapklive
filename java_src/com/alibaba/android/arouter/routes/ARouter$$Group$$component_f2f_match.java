package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import java.util.Map;
/* loaded from: classes.dex */
public class ARouter$$Group$$component_f2f_match implements IRouteGroup {
    @Override // com.alibaba.android.arouter.facade.template.IRouteGroup
    public void loadInto(Map<String, RouteMeta> map) {
        map.put(RouterPath.ROUTER_F2F_MATCH, RouteMeta.build(RouteType.ACTIVITY, F2fMatchActivity.class, RouterPath.ROUTER_F2F_MATCH, "component_f2f_match", null, -1, Integer.MIN_VALUE));
    }
}
