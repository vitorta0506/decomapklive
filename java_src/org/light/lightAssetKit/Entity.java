package org.light.lightAssetKit;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.light.lightAssetKit.components.BasicTransform;
import org.light.lightAssetKit.components.Component;
import org.light.lightAssetKit.components.EntityIdentifier;
import org.light.lightAssetKit.components.ScreenTransform;
/* loaded from: classes7.dex */
public class Entity {
    private static final int COMPONENT_ID_FACTOR = 1000;
    private static final int INVALID_ID = 0;
    private static Gson __gson;
    private List<Entity> children;
    private transient Map<String, Component> componentMap;
    private List<Component> components;
    private transient BaseContext context;

    /* renamed from: id  reason: collision with root package name */
    private int f56432id;
    private transient Entity parent;
    private transient Type type;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.light.lightAssetKit.Entity$10  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class AnonymousClass10 {
        static final /* synthetic */ int[] $SwitchMap$org$light$lightAssetKit$Entity$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$org$light$lightAssetKit$Entity$Type = iArr;
            try {
                iArr[Type.ENTITY_TYPE_2D.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$light$lightAssetKit$Entity$Type[Type.ENTITY_TYPE_3D.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public enum Type {
        ENTITY_TYPE_2D,
        ENTITY_TYPE_3D
    }

    public Entity() {
        this(Type.ENTITY_TYPE_2D);
    }

    private void assignNewIdForChild(Entity entity) {
        final HashSet hashSet = new HashSet();
        getRoot().forEach(new Consumer<Entity>() { // from class: org.light.lightAssetKit.Entity.5
            @Override // org.light.lightAssetKit.Consumer
            public void accept(Entity entity2) {
                hashSet.add(Integer.valueOf(entity2.getId()));
            }
        });
        final ArrayList<Entity> arrayList = new ArrayList();
        entity.forEach(new Consumer<Entity>() { // from class: org.light.lightAssetKit.Entity.6
            @Override // org.light.lightAssetKit.Consumer
            public void accept(Entity entity2) {
                arrayList.add(entity2);
            }
        });
        int i9 = 0;
        for (Entity entity2 : arrayList) {
            do {
                i9++;
            } while (hashSet.contains(Integer.valueOf(i9)));
            entity2.setId(i9);
        }
    }

    private int genNewComponentID() {
        if (this.f56432id == 0) {
            return 0;
        }
        HashSet hashSet = new HashSet();
        for (Component component : this.components) {
            hashSet.add(Integer.valueOf(component.getComponentID()));
        }
        int i9 = this.f56432id * 1000;
        do {
            i9++;
        } while (hashSet.contains(Integer.valueOf(i9)));
        return i9;
    }

    private BaseContext getContext() {
        return getRoot().context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Gson gson() {
        if (__gson == null) {
            __gson = new GsonBuilder().registerTypeHierarchyAdapter(ComponentBase.class, new JsonSerializer<ComponentBase>() { // from class: org.light.lightAssetKit.Entity.2
                @Override // com.google.gson.JsonSerializer
                public JsonElement serialize(ComponentBase componentBase, java.lang.reflect.Type type, JsonSerializationContext jsonSerializationContext) {
                    return componentBase.toJsonObject();
                }
            }).registerTypeHierarchyAdapter(ComponentBase.class, new JsonDeserializer<ComponentBase>() { // from class: org.light.lightAssetKit.Entity.1
                @Override // com.google.gson.JsonDeserializer
                public ComponentBase deserialize(JsonElement jsonElement, java.lang.reflect.Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
                    if (jsonElement instanceof JsonObject) {
                        return ComponentBase.makeFromJson((JsonObject) jsonElement);
                    }
                    throw new JsonParseException("Cannot parse json data: " + jsonElement.toString());
                }
            }).create();
        }
        return __gson;
    }

    private void initAfterSerialize() {
        forEach(new Consumer<Entity>() { // from class: org.light.lightAssetKit.Entity.3
            @Override // org.light.lightAssetKit.Consumer
            public void accept(Entity entity) {
                for (Entity entity2 : entity.children) {
                    entity2.parent = entity;
                }
                entity.componentMap.clear();
                for (Component component : entity.components) {
                    entity.componentMap.put(component.type(), component);
                    component.setPropertyChangeListener(entity);
                    component.setRegisterComponentListener(entity);
                }
                if (entity.hasComponent(ScreenTransform.class)) {
                    entity.type = Type.ENTITY_TYPE_2D;
                } else if (entity.hasComponent(BasicTransform.class)) {
                    entity.type = Type.ENTITY_TYPE_3D;
                }
            }
        });
    }

    private void initEntity() {
        EntityIdentifier entityIdentifier = new EntityIdentifier();
        entityIdentifier.setId(this.f56432id);
        addComponent(entityIdentifier);
        int i9 = AnonymousClass10.$SwitchMap$org$light$lightAssetKit$Entity$Type[this.type.ordinal()];
        if (i9 == 1) {
            addComponent(new ScreenTransform());
        } else if (i9 != 2) {
        } else {
            addComponent(new BasicTransform());
        }
    }

    private boolean isRootEntity() {
        return this.context != null && this.parent == null;
    }

    public static Entity makeFromJson(JsonObject jsonObject) {
        Entity entity = (Entity) gson().fromJson((JsonElement) jsonObject, (Class<Object>) Entity.class);
        entity.initAfterSerialize();
        return entity;
    }

    private void onAddComponent(Component component) throws LightAssetKitInvalidOperation {
        if (component.__propertyChangeListener == null) {
            component.setEntityId(this.f56432id);
            component.setComponentID(genNewComponentID());
            component.setPropertyChangeListener(this);
            if (getContext() != null) {
                getContext().onAddComponent(this.f56432id, component.toJsonObject());
            }
            tryRegisterComponentChange(component);
            component.setRegisterComponentListener(this);
            return;
        }
        throw new LightAssetKitInvalidOperation("Target component has already been another entity's component");
    }

    private void onAddEntity(int i9, Entity entity) {
        if (getId() != 0) {
            assignNewIdForChild(entity);
        }
        if (getContext() != null) {
            getContext().onAddEntity(getId(), i9, entity);
        }
        entity.parent = this;
        entity.forEach(new Consumer<Entity>() { // from class: org.light.lightAssetKit.Entity.7
            @Override // org.light.lightAssetKit.Consumer
            public void accept(Entity entity2) {
                for (Component component : Entity.this.components) {
                    Entity.this.tryRegisterComponentChange(component);
                }
            }
        });
    }

    private void onRemoveComponent(Component component) {
        component.setPropertyChangeListener(null);
        if (getContext() != null) {
            getContext().onRemoveComponent(this.f56432id, component.type());
        }
        unregisterComponentChange(component);
        component.setRegisterComponentListener(null);
    }

    private void onRemoveEntity(Entity entity) {
        if (getContext() != null) {
            entity.removeAllComponentChangeListenerRecursively();
            getContext().onRemoveEntity(entity.f56432id);
        }
        entity.parent = null;
        entity.resetAllIds();
    }

    private void registerComponentChange(Component component) {
        if (getContext() != null) {
            getContext().onRegisterComponentUpdateMonitor(component);
        }
    }

    private void removeAllComponentChangeListenerRecursively() {
        forEach(new Consumer<Entity>() { // from class: org.light.lightAssetKit.Entity.8
            @Override // org.light.lightAssetKit.Consumer
            public void accept(Entity entity) {
                for (Component component : Entity.this.components) {
                    Entity.this.unregisterComponentChange(component);
                }
            }
        });
    }

    private void resetAllIds() {
        forEach(new Consumer<Entity>() { // from class: org.light.lightAssetKit.Entity.9
            @Override // org.light.lightAssetKit.Consumer
            public void accept(Entity entity) {
                entity.setId(0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryRegisterComponentChange(Component component) {
        if (component.__componentUpdateListener != null) {
            registerComponentChange(component);
        } else {
            unregisterComponentChange(component);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterComponentChange(Component component) {
        if (getContext() != null) {
            getContext().onUnregisterComponentUpdateMonitor(component);
        }
    }

    public boolean addChild(Entity entity) throws LightAssetKitInvalidOperation {
        return addChild(-1, entity);
    }

    public boolean addComponent(Component component) {
        if (component == null || this.componentMap.containsKey(component.type())) {
            return false;
        }
        onAddComponent(component);
        this.componentMap.put(component.type(), component);
        this.components.add(component);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bindContext(BaseContext baseContext) {
        this.context = baseContext;
    }

    public boolean contains(Entity entity) {
        while (entity != null) {
            if (entity == this) {
                return true;
            }
            entity = entity.parent;
        }
        return false;
    }

    public void detach() throws LightAssetKitInvalidOperation {
        if (!isRootEntity()) {
            Entity entity = this.parent;
            if (entity != null) {
                entity.removeChild(this);
                return;
            }
            return;
        }
        throw new LightAssetKitInvalidOperation("Cannot detach root entity.");
    }

    public void forEach(Consumer<Entity> consumer) {
        consumer.accept(this);
        for (Entity entity : this.children) {
            entity.forEach(consumer);
        }
    }

    public Entity getChildAtIndex(int i9) {
        if (i9 >= this.children.size() || i9 < 0) {
            return null;
        }
        return this.children.get(i9);
    }

    public List<Entity> getChildren() {
        return Collections.unmodifiableList(this.children);
    }

    public Component getComponent(String str) {
        if (this.componentMap.containsKey(str)) {
            return this.componentMap.get(str);
        }
        return null;
    }

    public Collection<Component> getComponents() {
        return Collections.unmodifiableCollection(this.components);
    }

    public <T extends Component> List<Entity> getEntitiesWithComponent(final Class<T> cls) {
        final ArrayList arrayList = new ArrayList();
        forEach(new Consumer<Entity>() { // from class: org.light.lightAssetKit.Entity.4
            @Override // org.light.lightAssetKit.Consumer
            public void accept(Entity entity) {
                if (entity.getComponent(cls) != null) {
                    arrayList.add(entity);
                }
            }
        });
        return arrayList;
    }

    public int getId() {
        return this.f56432id;
    }

    public int getIndexForChild(Entity entity) {
        return this.children.indexOf(entity);
    }

    public Entity getParent() {
        return this.parent;
    }

    public int getParentId() {
        Entity entity = this.parent;
        if (entity == null) {
            return -1;
        }
        return entity.f56432id;
    }

    public Entity getRoot() {
        Entity entity = this;
        while (true) {
            Entity entity2 = entity.parent;
            if (entity2 == null) {
                return entity;
            }
            entity = entity2;
        }
    }

    public boolean hasComponent(String str) {
        return this.componentMap.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPropertyChange(ComponentBase componentBase, String str, JsonElement jsonElement) {
        if (getContext() != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("type", componentBase.type());
            jsonObject.add(str, jsonElement);
            getContext().onUpdateComponent(this.f56432id, componentBase.type(), jsonObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRegisterComponentChange(ComponentBase componentBase) {
        if (componentBase instanceof Component) {
            tryRegisterComponentChange((Component) componentBase);
        }
    }

    public void removeAllChildren() {
        for (Entity entity : this.children) {
            onRemoveEntity(entity);
        }
        this.children.clear();
    }

    public void removeAllChildrenRecursively() {
        for (Entity entity : this.children) {
            entity.removeAllChildrenRecursively();
        }
        removeAllChildren();
    }

    public boolean removeChild(Entity entity) {
        if (this.children.contains(entity)) {
            onRemoveEntity(entity);
            return this.children.remove(entity);
        }
        return false;
    }

    public boolean removeChildAtIndex(int i9) {
        if (i9 >= this.children.size() || i9 < 0) {
            return false;
        }
        onRemoveEntity(this.children.get(i9));
        this.children.remove(i9);
        return true;
    }

    public boolean removeComponent(Component component) {
        if (component == null || !this.componentMap.containsKey(component.type())) {
            return false;
        }
        onRemoveComponent(component);
        this.componentMap.remove(component.type());
        this.components.remove(component);
        return true;
    }

    public boolean removeTargetEntityRecursively(Entity entity) {
        if (removeChild(entity)) {
            return true;
        }
        for (Entity entity2 : this.children) {
            if (entity2.removeTargetEntityRecursively(entity)) {
                return true;
            }
        }
        return false;
    }

    public void reset() {
        for (Component component : this.components) {
            onRemoveComponent(component);
        }
        this.componentMap.clear();
        this.components.clear();
        initEntity();
    }

    protected void setId(int i9) {
        int i10;
        this.f56432id = i9;
        ((EntityIdentifier) getComponent(EntityIdentifier.class)).setId(i9);
        int i11 = (i9 * 1000) + 1;
        for (Component component : this.components) {
            component.setEntityId(i9);
            if (i9 == 0) {
                i10 = i11;
                i11 = 0;
            } else {
                i10 = i11 + 1;
            }
            component.setComponentID(i11);
            i11 = i10;
        }
    }

    public String toJson() {
        return toJsonObject().toString();
    }

    public JsonObject toJsonObject() {
        return (JsonObject) gson().toJsonTree(this);
    }

    public Entity(Type type) {
        this.f56432id = 0;
        this.children = new ArrayList();
        this.components = new ArrayList();
        this.componentMap = new HashMap();
        this.type = type;
        initEntity();
    }

    public boolean addChild(int i9, Entity entity) throws LightAssetKitInvalidOperation {
        if (entity == null || this.children.contains(entity)) {
            return false;
        }
        if (!entity.isRootEntity()) {
            if (entity.parent == null) {
                if (i9 < 0) {
                    onAddEntity(this.children.size(), entity);
                    this.children.add(entity);
                    return true;
                } else if (i9 <= this.children.size()) {
                    onAddEntity(i9, entity);
                    this.children.add(i9, entity);
                    return true;
                } else {
                    return false;
                }
            }
            throw new LightAssetKitInvalidOperation("Target entity has already been another entity's child");
        }
        throw new LightAssetKitInvalidOperation("Cannot add root entity to another entity");
    }

    public <T extends Component> boolean hasComponent(Class<T> cls) {
        return hasComponent(cls.getSimpleName());
    }

    public static Entity makeFromJson(String str) {
        Entity entity = (Entity) gson().fromJson(str, (Class<Object>) Entity.class);
        entity.initAfterSerialize();
        return entity;
    }

    public <T extends Component> T getComponent(Class<T> cls) {
        T t10 = (T) getComponent(cls.getSimpleName());
        if (t10 == null || !cls.isInstance(t10)) {
            return null;
        }
        return t10;
    }

    public boolean removeComponent(String str) {
        if (this.componentMap.containsKey(str)) {
            Component component = this.componentMap.get(str);
            if (component != null) {
                onRemoveComponent(component);
            }
            this.componentMap.remove(str);
            this.components.remove(component);
            return false;
        }
        return false;
    }

    public <T extends Component> boolean removeComponent(Class<T> cls) {
        return removeComponent(cls.getSimpleName());
    }
}
