package com.appsflyer.internal;

import com.guochao.faceshow.aaspring.utils.Language;
import com.meizu.cloud.pushsdk.notification.model.ActVideoSetting;
import com.meizu.cloud.pushsdk.notification.model.AdvertisementOption;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class AFa1wSDK$4 extends HashMap<String, String> {
    public AFa1wSDK$4() {
        put("aa", "ro.arch");
        put("ab", "ro.chipname");
        put("ac", "ro.dalvik.vm.native.bridge");
        put("ad", "persist.sys.nativebridge");
        put("ae", "ro.enable.native.bridge.exec");
        put("af", "dalvik.vm.isa.x86.features");
        put("ag", "dalvik.vm.isa.x86.variant");
        put("ah", "ro.zygote");
        put("ai", "ro.allow.mock.location");
        put("aj", "ro.dalvik.vm.isa.arm");
        put("ak", "dalvik.vm.isa.arm.features");
        put("al", "dalvik.vm.isa.arm.variant");
        put("am", "dalvik.vm.isa.arm64.features");
        put("an", "dalvik.vm.isa.arm64.variant");
        put("ao", "vzw.os.rooted");
        put(AdvertisementOption.AD_PACKAGE, "ro.build.user");
        put("aq", "ro.kernel.qemu");
        put(Language.ARABIC, "ro.hardware");
        put("as", "ro.product.cpu.abi");
        put("at", "ro.product.cpu.abilist");
        put(ActVideoSetting.ACT_URL, "ro.product.cpu.abilist32");
        put("av", "ro.product.cpu.abilist64");
    }
}
