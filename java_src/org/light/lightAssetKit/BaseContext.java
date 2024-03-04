package org.light.lightAssetKit;

import com.google.gson.JsonObject;
import org.light.lightAssetKit.components.Component;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public abstract class BaseContext {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onAddComponent(int i9, JsonObject jsonObject);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onAddEntity(int i9, int i10, Entity entity);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onRegisterComponentUpdateMonitor(Component component);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onRemoveComponent(int i9, String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onRemoveEntity(int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onUnregisterComponentUpdateMonitor(Component component);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onUpdateComponent(int i9, String str, JsonObject jsonObject);
}
