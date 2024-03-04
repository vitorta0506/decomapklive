package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.guild.activity.MyLiveActivity;
import java.util.Map;
/* loaded from: classes.dex */
public class ARouter$$Group$$guild implements IRouteGroup {
    @Override // com.alibaba.android.arouter.facade.template.IRouteGroup
    public void loadInto(Map<String, RouteMeta> map) {
        map.put(RouterPath.ROUTER_GUILD_MY_LIVE_ACTIVITY, RouteMeta.build(RouteType.ACTIVITY, MyLiveActivity.class, "/guild/myliveactivity", "guild", null, -1, Integer.MIN_VALUE));
    }
}
