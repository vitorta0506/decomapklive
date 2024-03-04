package org.light.lightAssetKit;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.JsonSyntaxException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Map;
import org.light.lightAssetKit.components.Component;
/* loaded from: classes7.dex */
public abstract class ComponentBase {
    private static Gson __gson;
    private transient Object __extraInfo = null;
    protected transient Entity __propertyChangeListener = null;
    protected transient ComponentUpdateListener __componentUpdateListener = null;
    protected transient Entity __registerComponentListener = null;

    /* loaded from: classes7.dex */
    public interface ComponentUpdateListener {
        void onComponentUpdate(ComponentBase componentBase);
    }

    protected static Gson gson() {
        if (__gson == null) {
            __gson = new GsonBuilder().registerTypeHierarchyAdapter(Enum.class, new JsonSerializer<Enum<?>>() { // from class: org.light.lightAssetKit.ComponentBase.2
                @Override // com.google.gson.JsonSerializer
                public JsonElement serialize(Enum<?> r32, Type type, JsonSerializationContext jsonSerializationContext) {
                    if (type instanceof Class) {
                        Class cls = (Class) type;
                        try {
                            try {
                                String str = (String) cls.getField("name").get(r32);
                                if (str != null && !str.isEmpty()) {
                                    return new JsonPrimitive(str);
                                }
                                throw new NoSuchFieldException("");
                            } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException unused) {
                            }
                        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException unused2) {
                            return new JsonPrimitive(Integer.valueOf(cls.getField("value").getInt(r32)));
                        }
                    }
                    return null;
                }
            }).registerTypeHierarchyAdapter(Enum.class, new JsonDeserializer<Enum<?>>() { // from class: org.light.lightAssetKit.ComponentBase.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.gson.JsonDeserializer
                public Enum<?> deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
                    if (type instanceof Class) {
                        Class cls = (Class) type;
                        if (jsonElement.isJsonPrimitive()) {
                            JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                            Enum<?>[] enumArr = (Enum[]) cls.getEnumConstants();
                            try {
                                int i9 = 0;
                                if (asJsonPrimitive.isNumber()) {
                                    Field field = cls.getField("value");
                                    int asInt = asJsonPrimitive.getAsInt();
                                    int length = enumArr.length;
                                    while (i9 < length) {
                                        Enum<?> r32 = enumArr[i9];
                                        if (field.getInt(r32) == asInt) {
                                            return r32;
                                        }
                                        i9++;
                                    }
                                } else if (asJsonPrimitive.isString()) {
                                    String asString = asJsonPrimitive.getAsString();
                                    int length2 = enumArr.length;
                                    while (i9 < length2) {
                                        Enum<?> r12 = enumArr[i9];
                                        if (r12.toString().equalsIgnoreCase(asString)) {
                                            return r12;
                                        }
                                        i9++;
                                    }
                                }
                            } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException e10) {
                                throw new JsonParseException(e10);
                            }
                        }
                        throw new JsonParseException("Cannot parse json data: " + jsonElement.toString());
                    }
                    throw new JsonParseException("Wrong type! Cannot parse json data: " + jsonElement.toString());
                }
            }).create();
        }
        return __gson;
    }

    public static ComponentBase makeFromJson(JsonObject jsonObject) throws JsonSyntaxException {
        try {
            try {
                try {
                    String asString = jsonObject.get("type").getAsString();
                    return (ComponentBase) gson().fromJson((JsonElement) jsonObject, (Class<Object>) Class.forName("org.light.lightAssetKit.components." + asString).asSubclass(ComponentBase.class));
                } catch (ClassNotFoundException unused) {
                    return (ComponentBase) gson().fromJson((JsonElement) jsonObject, (Class<Object>) Component.class.asSubclass(ComponentBase.class));
                }
            } catch (ClassNotFoundException e10) {
                e = e10;
                throw new JsonSyntaxException(e);
            }
        } catch (JsonParseException e11) {
            e = e11;
            throw new JsonSyntaxException(e);
        } catch (ClassCastException e12) {
            e = e12;
            throw new JsonSyntaxException(e);
        } catch (IllegalStateException e13) {
            e = e13;
            throw new JsonSyntaxException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void doUpdate(ComponentBase componentBase) {
        ComponentUpdateListener componentUpdateListener = this.__componentUpdateListener;
        if (componentUpdateListener != null) {
            componentUpdateListener.onComponentUpdate(this);
        }
    }

    public Object extraInfo() {
        return this.__extraInfo;
    }

    public void putExtraInfo(Object obj) {
        this.__extraInfo = obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportPropertyChange(String str, Object obj) {
        Entity entity = this.__propertyChangeListener;
        if (entity != null) {
            entity.onPropertyChange(this, str, gson().toJsonTree(obj));
        }
    }

    public void setComponentUpdateListener(ComponentUpdateListener componentUpdateListener) {
        this.__componentUpdateListener = componentUpdateListener;
        Entity entity = this.__registerComponentListener;
        if (entity != null) {
            entity.onRegisterComponentChange(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPropertyChangeListener(Entity entity) {
        this.__propertyChangeListener = entity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRegisterComponentListener(Entity entity) {
        this.__registerComponentListener = entity;
    }

    public String toJson() {
        return toJsonObject().toString();
    }

    public JsonObject toJsonObject() {
        JsonObject jsonObject = (JsonObject) gson().toJsonTree(this);
        jsonObject.addProperty("type", type());
        if (this.__extraInfo != null) {
            for (Map.Entry<String, JsonElement> entry : ((JsonObject) gson().toJsonTree(this.__extraInfo)).entrySet()) {
                jsonObject.add(entry.getKey(), entry.getValue());
            }
        }
        return jsonObject;
    }

    public String toString() {
        return toJson();
    }

    public abstract String type();

    protected void update(String str) {
        update((ComponentBase) gson().fromJson(str, (Class<Object>) getClass()));
    }

    protected void update(ComponentBase componentBase) {
        doUpdate(componentBase);
    }

    public static ComponentBase makeFromJson(String str) throws JsonSyntaxException {
        return makeFromJson((JsonObject) new JsonParser().parse(str));
    }
}
