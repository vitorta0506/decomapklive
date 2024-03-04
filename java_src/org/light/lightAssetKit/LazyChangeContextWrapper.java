package org.light.lightAssetKit;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.light.lightAssetKit.components.Component;
/* loaded from: classes7.dex */
class LazyChangeContextWrapper extends BaseContext {
    private final BaseContext context;
    private final Map<Integer, ComponentChangeCommand> componentCommand = new HashMap();
    private final Object lock = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class ComponentChangeCommand {
        Map<String, JsonObject> addComponentCommand = new HashMap();
        Map<String, JsonObject> updateComponentCommand = new HashMap();
        Set<String> removeComponentCommand = new HashSet();
        final Object lock = new Object();

        ComponentChangeCommand() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LazyChangeContextWrapper(BaseContext baseContext) {
        this.context = baseContext;
    }

    private ComponentChangeCommand getComponentCommand(int i9) {
        synchronized (this.lock) {
            if (this.componentCommand.containsKey(Integer.valueOf(i9))) {
                return this.componentCommand.get(Integer.valueOf(i9));
            }
            ComponentChangeCommand componentChangeCommand = new ComponentChangeCommand();
            this.componentCommand.put(Integer.valueOf(i9), componentChangeCommand);
            return componentChangeCommand;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        synchronized (this.lock) {
            this.componentCommand.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void emit() {
        synchronized (this.lock) {
            for (Map.Entry<Integer, ComponentChangeCommand> entry : this.componentCommand.entrySet()) {
                for (JsonObject jsonObject : entry.getValue().addComponentCommand.values()) {
                    this.context.onAddComponent(entry.getKey().intValue(), jsonObject);
                }
                for (JsonObject jsonObject2 : entry.getValue().updateComponentCommand.values()) {
                    this.context.onUpdateComponent(entry.getKey().intValue(), jsonObject2.get("type").getAsString(), jsonObject2);
                }
                for (String str : entry.getValue().removeComponentCommand) {
                    this.context.onRemoveComponent(entry.getKey().intValue(), str);
                }
            }
            this.componentCommand.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onAddComponent(int i9, JsonObject jsonObject) {
        ComponentChangeCommand componentCommand = getComponentCommand(i9);
        String asString = jsonObject.get("type").getAsString();
        synchronized (componentCommand.lock) {
            if (componentCommand.addComponentCommand.containsKey(asString)) {
                componentCommand.addComponentCommand.put(asString, jsonObject);
            } else if (componentCommand.updateComponentCommand.containsKey(asString)) {
            } else {
                if (componentCommand.removeComponentCommand.contains(asString)) {
                    componentCommand.removeComponentCommand.remove(asString);
                    componentCommand.updateComponentCommand.put(asString, jsonObject);
                } else {
                    componentCommand.addComponentCommand.put(asString, jsonObject);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onAddEntity(int i9, int i10, Entity entity) {
        this.context.onAddEntity(i9, i10, entity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onRegisterComponentUpdateMonitor(Component component) {
        this.context.onRegisterComponentUpdateMonitor(component);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onRemoveComponent(int i9, String str) {
        ComponentChangeCommand componentCommand = getComponentCommand(i9);
        synchronized (componentCommand.lock) {
            if (componentCommand.addComponentCommand.containsKey(str)) {
                componentCommand.addComponentCommand.remove(str);
            } else if (componentCommand.updateComponentCommand.containsKey(str)) {
                componentCommand.updateComponentCommand.remove(str);
            } else if (componentCommand.removeComponentCommand.contains(str)) {
            } else {
                componentCommand.removeComponentCommand.add(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onRemoveEntity(int i9) {
        synchronized (this.lock) {
            this.componentCommand.remove(Integer.valueOf(i9));
        }
        this.context.onRemoveEntity(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onUnregisterComponentUpdateMonitor(Component component) {
        this.context.onUnregisterComponentUpdateMonitor(component);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.light.lightAssetKit.BaseContext
    public void onUpdateComponent(int i9, String str, JsonObject jsonObject) {
        ComponentChangeCommand componentCommand = getComponentCommand(i9);
        synchronized (componentCommand.lock) {
            if (componentCommand.addComponentCommand.containsKey(str)) {
                JsonObject jsonObject2 = componentCommand.addComponentCommand.get(str);
                for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
                    jsonObject2.add(entry.getKey(), entry.getValue());
                }
            } else if (componentCommand.updateComponentCommand.containsKey(str)) {
                JsonObject jsonObject3 = componentCommand.updateComponentCommand.get(str);
                for (Map.Entry<String, JsonElement> entry2 : jsonObject.entrySet()) {
                    jsonObject3.add(entry2.getKey(), entry2.getValue());
                }
            } else if (!componentCommand.removeComponentCommand.contains(str)) {
                componentCommand.updateComponentCommand.put(str, jsonObject);
            }
        }
    }
}
