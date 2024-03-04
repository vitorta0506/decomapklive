package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT = new Excluder();
    private static final double IGNORE_VERSIONS = -1.0d;
    private boolean requireExpose;
    private double version = IGNORE_VERSIONS;
    private int modifiers = TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE;
    private boolean serializeInnerClasses = true;
    private List<ExclusionStrategy> serializationStrategies = Collections.emptyList();
    private List<ExclusionStrategy> deserializationStrategies = Collections.emptyList();

    private boolean excludeClassChecks(Class<?> cls) {
        if (this.version == IGNORE_VERSIONS || isValidVersion((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return (!this.serializeInnerClasses && isInnerClass(cls)) || isAnonymousOrNonStaticLocal(cls);
        }
        return true;
    }

    private boolean excludeClassInStrategy(Class<?> cls, boolean z10) {
        for (ExclusionStrategy exclusionStrategy : z10 ? this.serializationStrategies : this.deserializationStrategies) {
            if (exclusionStrategy.shouldSkipClass(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean isAnonymousOrNonStaticLocal(Class<?> cls) {
        return (Enum.class.isAssignableFrom(cls) || isStatic(cls) || (!cls.isAnonymousClass() && !cls.isLocalClass())) ? false : true;
    }

    private boolean isInnerClass(Class<?> cls) {
        return cls.isMemberClass() && !isStatic(cls);
    }

    private boolean isStatic(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean isValidSince(Since since) {
        return since == null || since.value() <= this.version;
    }

    private boolean isValidUntil(Until until) {
        return until == null || until.value() > this.version;
    }

    private boolean isValidVersion(Since since, Until until) {
        return isValidSince(since) && isValidUntil(until);
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(final Gson gson, final TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        boolean excludeClassChecks = excludeClassChecks(rawType);
        final boolean z10 = excludeClassChecks || excludeClassInStrategy(rawType, true);
        final boolean z11 = excludeClassChecks || excludeClassInStrategy(rawType, false);
        if (z10 || z11) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1
                private TypeAdapter<T> delegate;

                private TypeAdapter<T> delegate() {
                    TypeAdapter<T> typeAdapter = this.delegate;
                    if (typeAdapter != null) {
                        return typeAdapter;
                    }
                    TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                    this.delegate = delegateAdapter;
                    return delegateAdapter;
                }

                @Override // com.google.gson.TypeAdapter
                public T read(JsonReader jsonReader) throws IOException {
                    if (z11) {
                        jsonReader.skipValue();
                        return null;
                    }
                    return delegate().read(jsonReader);
                }

                @Override // com.google.gson.TypeAdapter
                public void write(JsonWriter jsonWriter, T t10) throws IOException {
                    if (z10) {
                        jsonWriter.nullValue();
                    } else {
                        delegate().write(jsonWriter, t10);
                    }
                }
            };
        }
        return null;
    }

    public Excluder disableInnerClassSerialization() {
        Excluder m213clone = m213clone();
        m213clone.serializeInnerClasses = false;
        return m213clone;
    }

    public boolean excludeClass(Class<?> cls, boolean z10) {
        return excludeClassChecks(cls) || excludeClassInStrategy(cls, z10);
    }

    public boolean excludeField(Field field, boolean z10) {
        Expose expose;
        if ((this.modifiers & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.version == IGNORE_VERSIONS || isValidVersion((Since) field.getAnnotation(Since.class), (Until) field.getAnnotation(Until.class))) && !field.isSynthetic()) {
            if (!this.requireExpose || ((expose = (Expose) field.getAnnotation(Expose.class)) != null && (!z10 ? !expose.deserialize() : !expose.serialize()))) {
                if ((this.serializeInnerClasses || !isInnerClass(field.getType())) && !isAnonymousOrNonStaticLocal(field.getType())) {
                    List<ExclusionStrategy> list = z10 ? this.serializationStrategies : this.deserializationStrategies;
                    if (list.isEmpty()) {
                        return false;
                    }
                    FieldAttributes fieldAttributes = new FieldAttributes(field);
                    for (ExclusionStrategy exclusionStrategy : list) {
                        if (exclusionStrategy.shouldSkipField(fieldAttributes)) {
                            return true;
                        }
                    }
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public Excluder excludeFieldsWithoutExposeAnnotation() {
        Excluder m213clone = m213clone();
        m213clone.requireExpose = true;
        return m213clone;
    }

    public Excluder withExclusionStrategy(ExclusionStrategy exclusionStrategy, boolean z10, boolean z11) {
        Excluder m213clone = m213clone();
        if (z10) {
            ArrayList arrayList = new ArrayList(this.serializationStrategies);
            m213clone.serializationStrategies = arrayList;
            arrayList.add(exclusionStrategy);
        }
        if (z11) {
            ArrayList arrayList2 = new ArrayList(this.deserializationStrategies);
            m213clone.deserializationStrategies = arrayList2;
            arrayList2.add(exclusionStrategy);
        }
        return m213clone;
    }

    public Excluder withModifiers(int... iArr) {
        Excluder m213clone = m213clone();
        m213clone.modifiers = 0;
        for (int i9 : iArr) {
            m213clone.modifiers = i9 | m213clone.modifiers;
        }
        return m213clone;
    }

    public Excluder withVersion(double d10) {
        Excluder m213clone = m213clone();
        m213clone.version = d10;
        return m213clone;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: clone */
    public Excluder m213clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }
}
