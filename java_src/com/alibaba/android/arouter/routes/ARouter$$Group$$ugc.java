package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.modulars.login.activity.AreaSelectActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.ChooseLanguageActivity;
import java.util.Map;
/* loaded from: classes.dex */
public class ARouter$$Group$$ugc implements IRouteGroup {
    @Override // com.alibaba.android.arouter.facade.template.IRouteGroup
    public void loadInto(Map<String, RouteMeta> map) {
        RouteType routeType = RouteType.ACTIVITY;
        map.put(RouterPath.ROUTER_CHOOSE_COUNTRY_ACTIVITY, RouteMeta.build(routeType, AreaSelectActivity.class, "/ugc/areaselectactivity", "ugc", null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_CHOOSE_LANGUAGE_ACTIVITY, RouteMeta.build(routeType, ChooseLanguageActivity.class, "/ugc/chooselanguageactivity", "ugc", null, -1, Integer.MIN_VALUE));
    }
}
