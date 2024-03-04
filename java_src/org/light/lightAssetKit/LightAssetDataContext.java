package org.light.lightAssetKit;

import android.os.RemoteException;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.light.Controller;
import org.light.ILightSDKServiceInterface;
import org.light.LightAsset;
import org.light.callback.ComponentUpdateCallback;
import org.light.callback.WillReadSampleCallback;
import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.components.Camera;
import org.light.lightAssetKit.components.Component;
import org.light.service.InstanceId;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class LightAssetDataContext extends BaseContext implements ComponentUpdateCallback, WillReadSampleCallback {
    private static final String TAG = "LightAssetDataContext";
    protected static ILightSDKServiceInterface lightSDKServiceInterface;
    protected Controller controller;
    protected LazyChangeContextWrapper lazyChangeContextWrapper;
    protected Entity rootEntity;
    protected LightAssetDataType type;
    protected long nativeHandle = 0;
    protected int instanceId = 0;
    protected final Map<Integer, ComponentBase> componentUpdateListenerMap = new HashMap();
    protected JsonObject inputSources = new JsonObject();
    protected JsonObject addInputSources = new JsonObject();
    protected JsonObject properties = new JsonObject();

    public LightAssetDataContext() {
        if (lightSDKServiceInterface == null) {
            this.lazyChangeContextWrapper = new LazyChangeContextWrapper(this);
        }
    }

    private void doAddInputSource() {
        if (this.controller == null || this.addInputSources.entrySet().isEmpty()) {
            return;
        }
        this.controller.updateResource(this.addInputSources.toString());
        this.addInputSources = new JsonObject();
    }

    public static LightAssetDataContext make(LightAsset lightAsset) {
        return make(lightAsset, LightAssetDataType.Json);
    }

    private native Boolean nativeAddLightAsset(LightAsset lightAsset, int i9);

    private native boolean nativeComponentSupportDynamicallyUpdate(String str);

    private native String nativeExportEntityTreeJsonString();

    private native String nativeExportInputSourcesJsonString();

    private native LightAsset nativeExportLightAsset();

    private native String nativeExportPropertiesJsonString();

    private static native LightAssetDataContext nativeMake(LightAsset lightAsset, int i9);

    private native void nativeReplaceEntityTreeJsonString(String str);

    private native void nativeReplaceInputSourcesJsonString(String str);

    private native void nativeReplacePropertiesJsonString(String str);

    private void setInputSources(JsonObject jsonObject) {
        this.inputSources = jsonObject;
    }

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    private void setProperties(JsonObject jsonObject) {
        this.properties = jsonObject;
    }

    private void setRootEntity(Entity entity) {
        LazyChangeContextWrapper lazyChangeContextWrapper = this.lazyChangeContextWrapper;
        if (lazyChangeContextWrapper == null) {
            entity.bindContext(this);
        } else {
            entity.bindContext(lazyChangeContextWrapper);
        }
        this.rootEntity = entity;
    }

    public Boolean addLightAsset(LightAsset lightAsset) {
        return addLightAsset(lightAsset, LightAssetDataMergeType.Back);
    }

    @Override // org.light.callback.WillReadSampleCallback
    public void beforeReadSample() {
        LazyChangeContextWrapper lazyChangeContextWrapper = this.lazyChangeContextWrapper;
        if (lazyChangeContextWrapper != null) {
            lazyChangeContextWrapper.emit();
        }
    }

    public void bindController(Controller controller) {
        this.controller = controller;
        if (controller == null) {
            return;
        }
        controller.setWillReadSampleCallback(this);
        controller.setComponentUpdateCallback(this);
        for (Integer num : this.componentUpdateListenerMap.keySet()) {
            controller.addComponentUpdateMonitor(num.intValue());
        }
        doAddInputSource();
    }

    public void callNativeReplaceEntityTreeJsonString(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightAssetDataContextReplaceEntityTreeJsonString(this.instanceId, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeReplaceEntityTreeJsonString(str);
    }

    public void callNativeReplaceInputSourcesJsonString(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightAssetDataContextReplaceInputSourcesJsonString(this.instanceId, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeReplaceInputSourcesJsonString(str);
    }

    public void callNativeReplacePropertiesJsonString(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightAssetDataContextReplacePropertiesJsonString(this.instanceId, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeReplacePropertiesJsonString(str);
    }

    public boolean componentSupportDynamicallyUpdate(Class<Component> cls) {
        return nativeComponentSupportDynamicallyUpdate(cls.getSimpleName());
    }

    public LightAsset doExportLightAsset() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            LightAsset lightAsset = null;
            try {
                InstanceId lightAssetDataContextExportLightAsset = iLightSDKServiceInterface.lightAssetDataContextExportLightAsset(this.instanceId);
                if (lightAssetDataContextExportLightAsset != null) {
                    LightAsset lightAsset2 = new LightAsset();
                    try {
                        lightAsset2.setInstanceId(lightAssetDataContextExportLightAsset.f56459id);
                        return lightAsset2;
                    } catch (RemoteException e10) {
                        e = e10;
                        lightAsset = lightAsset2;
                        LightLogUtil.e(TAG, "RemoteException:\n" + e);
                        return lightAsset;
                    }
                }
                return null;
            } catch (RemoteException e11) {
                e = e11;
            }
        } else {
            return nativeExportLightAsset();
        }
    }

    public String exportEntityTreeJsonString() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetDataContextExportEntityTreeJsonString(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeExportEntityTreeJsonString();
    }

    public String exportInputSourcesJsonString() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetDataContextExportInputSourcesJsonString(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeExportInputSourcesJsonString();
    }

    public LightAsset exportLightAsset() {
        if (this.type == LightAssetDataType.EntityTree) {
            LazyChangeContextWrapper lazyChangeContextWrapper = this.lazyChangeContextWrapper;
            if (lazyChangeContextWrapper != null) {
                lazyChangeContextWrapper.clear();
            }
            Entity entity = this.rootEntity;
            if (entity != null) {
                callNativeReplaceEntityTreeJsonString(entity.toJson());
            }
            this.addInputSources = new JsonObject();
            JsonObject jsonObject = this.inputSources;
            if (jsonObject != null) {
                callNativeReplaceInputSourcesJsonString(jsonObject.toString());
            }
            JsonObject jsonObject2 = this.properties;
            if (jsonObject2 != null) {
                callNativeReplacePropertiesJsonString(jsonObject2.toString());
            }
        }
        return doExportLightAsset();
    }

    public String exportPropertiesJsonString() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetDataContextExportPropertiesJsonString(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeExportPropertiesJsonString();
    }

    public Entity getFirstCameraEntity() {
        List<Entity> entitiesWithComponent;
        Entity entity = this.rootEntity;
        if (entity == null || (entitiesWithComponent = entity.getEntitiesWithComponent(Camera.class)) == null || entitiesWithComponent.isEmpty()) {
            return null;
        }
        return entitiesWithComponent.get(0);
    }

    public JsonObject getInputSources() {
        return this.inputSources;
    }

    public int getInstanceId() {
        return this.instanceId;
    }

    public JsonObject getProperties() {
        return this.properties;
    }

    public Entity getRootEntity() {
        return this.rootEntity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onAddComponent(int i9, JsonObject jsonObject) {
        Controller controller = this.controller;
        if (controller == null) {
            return;
        }
        controller.addComponent(i9, jsonObject.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onAddEntity(int i9, int i10, Entity entity) {
        Controller controller = this.controller;
        if (controller == null) {
            return;
        }
        controller.addEntity(i9, i10, entity.toJson());
    }

    @Override // org.light.callback.ComponentUpdateCallback
    public void onComponentUpdated(String str) {
        ComponentBase.ComponentUpdateListener componentUpdateListener;
        for (ComponentBase componentBase : (List) Entity.gson().fromJson(str, new TypeToken<List<ComponentBase>>() { // from class: org.light.lightAssetKit.LightAssetDataContext.1
        }.getType())) {
            if (componentBase instanceof Component) {
                Component component = (Component) componentBase;
                if (this.componentUpdateListenerMap.containsKey(Integer.valueOf(component.getComponentID())) && (componentUpdateListener = this.componentUpdateListenerMap.get(Integer.valueOf(component.getComponentID())).__componentUpdateListener) != null) {
                    componentUpdateListener.onComponentUpdate(component);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onRegisterComponentUpdateMonitor(Component component) {
        if (component == null) {
            return;
        }
        this.componentUpdateListenerMap.put(Integer.valueOf(component.getComponentID()), component);
        Controller controller = this.controller;
        if (controller != null) {
            controller.addComponentUpdateMonitor(component.getComponentID());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onRemoveComponent(int i9, String str) {
        Controller controller = this.controller;
        if (controller == null) {
            return;
        }
        controller.removeComponent(i9, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onRemoveEntity(int i9) {
        Controller controller = this.controller;
        if (controller == null) {
            return;
        }
        controller.removeEntity(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onUnregisterComponentUpdateMonitor(Component component) {
        if (component == null || !this.componentUpdateListenerMap.containsKey(Integer.valueOf(component.getComponentID()))) {
            return;
        }
        this.componentUpdateListenerMap.remove(Integer.valueOf(component.getComponentID()));
        Controller controller = this.controller;
        if (controller != null) {
            controller.removeComponentUpdateMonitor(component.getComponentID());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onUpdateComponent(int i9, String str, JsonObject jsonObject) {
        Controller controller = this.controller;
        if (controller == null) {
            return;
        }
        controller.updateComponent(i9, jsonObject.toString());
    }

    public void setInstanceId(int i9) {
        this.instanceId = i9;
    }

    public void updateInputSource(String str, JsonElement jsonElement) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (jsonElement == null) {
            this.addInputSources.remove(str);
            this.inputSources.remove(str);
        } else if (this.inputSources.has(str)) {
            this.inputSources.add(str, jsonElement);
        } else {
            this.addInputSources.add(str, jsonElement);
            this.inputSources.add(str, jsonElement);
            doAddInputSource();
        }
    }

    public void updateProperty(String str, JsonElement jsonElement) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (jsonElement == null) {
            this.properties.remove(str);
        } else {
            this.properties.add(str, jsonElement);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.light.lightAssetKit.LightAssetDataContext make(org.light.LightAsset r3, org.light.lightAssetKit.LightAssetDataType r4) {
        /*
            org.light.ILightSDKServiceInterface r0 = org.light.lightAssetKit.LightAssetDataContext.lightSDKServiceInterface
            if (r0 == 0) goto L3e
            r1 = 0
            if (r3 != 0) goto L9
            r3 = 0
            goto Ld
        L9:
            int r3 = r3.getInstanceId()     // Catch: android.os.RemoteException -> L26
        Ld:
            int r2 = r4.ordinal()     // Catch: android.os.RemoteException -> L26
            org.light.service.InstanceId r3 = r0.lightAssetDataContextMake(r3, r2)     // Catch: android.os.RemoteException -> L26
            if (r3 == 0) goto L46
            org.light.lightAssetKit.LightAssetDataContext r0 = new org.light.lightAssetKit.LightAssetDataContext     // Catch: android.os.RemoteException -> L26
            r0.<init>()     // Catch: android.os.RemoteException -> L26
            int r3 = r3.f56459id     // Catch: android.os.RemoteException -> L23
            r0.setInstanceId(r3)     // Catch: android.os.RemoteException -> L23
            r1 = r0
            goto L46
        L23:
            r3 = move-exception
            r1 = r0
            goto L27
        L26:
            r3 = move-exception
        L27:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "RemoteException:\n"
            r0.append(r2)
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            java.lang.String r0 = "LightAssetDataContext"
            org.light.utils.LightLogUtil.e(r0, r3)
            goto L46
        L3e:
            int r0 = r4.ordinal()
            org.light.lightAssetKit.LightAssetDataContext r1 = nativeMake(r3, r0)
        L46:
            if (r1 == 0) goto L95
            org.light.lightAssetKit.LightAssetDataType r3 = org.light.lightAssetKit.LightAssetDataType.EntityTree
            if (r4 != r3) goto L93
            java.lang.String r3 = r1.exportEntityTreeJsonString()
            if (r3 == 0) goto L5f
            boolean r0 = r3.isEmpty()
            if (r0 != 0) goto L5f
            org.light.lightAssetKit.Entity r3 = org.light.lightAssetKit.Entity.makeFromJson(r3)
            r1.setRootEntity(r3)
        L5f:
            java.lang.String r3 = r1.exportInputSourcesJsonString()
            if (r3 == 0) goto L79
            boolean r0 = r3.isEmpty()
            if (r0 != 0) goto L79
            com.google.gson.JsonParser r0 = new com.google.gson.JsonParser
            r0.<init>()
            com.google.gson.JsonElement r3 = r0.parse(r3)
            com.google.gson.JsonObject r3 = (com.google.gson.JsonObject) r3
            r1.setInputSources(r3)
        L79:
            java.lang.String r3 = r1.exportPropertiesJsonString()
            if (r3 == 0) goto L93
            boolean r0 = r3.isEmpty()
            if (r0 != 0) goto L93
            com.google.gson.JsonParser r0 = new com.google.gson.JsonParser
            r0.<init>()
            com.google.gson.JsonElement r3 = r0.parse(r3)
            com.google.gson.JsonObject r3 = (com.google.gson.JsonObject) r3
            r1.setProperties(r3)
        L93:
            r1.type = r4
        L95:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.lightAssetKit.LightAssetDataContext.make(org.light.LightAsset, org.light.lightAssetKit.LightAssetDataType):org.light.lightAssetKit.LightAssetDataContext");
    }

    public Boolean addLightAsset(LightAsset lightAsset, LightAssetDataMergeType lightAssetDataMergeType) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return Boolean.valueOf(iLightSDKServiceInterface.lightAssetDataContextAddLightAsset(this.instanceId, lightAsset == null ? 0 : lightAsset.getInstanceId(), lightAssetDataMergeType.ordinal()));
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return Boolean.FALSE;
            }
        }
        return nativeAddLightAsset(lightAsset, lightAssetDataMergeType.ordinal());
    }
}
