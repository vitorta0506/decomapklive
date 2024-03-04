package io.jsonwebtoken.impl.io;

import io.jsonwebtoken.io.Deserializer;
import io.jsonwebtoken.lang.Assert;
import io.jsonwebtoken.lang.Classes;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes6.dex */
public class RuntimeClasspathDeserializerLocator<T> implements InstanceLocator<Deserializer<T>> {
    private static final AtomicReference<Deserializer> DESERIALIZER = new AtomicReference<>();

    protected boolean compareAndSet(Deserializer<T> deserializer) {
        return DESERIALIZER.compareAndSet(null, deserializer);
    }

    protected boolean isAvailable(String str) {
        return Classes.isAvailable(str);
    }

    protected Deserializer<T> locate() {
        if (isAvailable("com.fasterxml.jackson.databind.ObjectMapper")) {
            return (Deserializer) Classes.newInstance("io.jsonwebtoken.io.JacksonDeserializer");
        }
        if (isAvailable("org.json.JSONObject")) {
            return (Deserializer) Classes.newInstance("io.jsonwebtoken.io.OrgJsonDeserializer");
        }
        throw new IllegalStateException("Unable to discover any JSON Deserializer implementations on the classpath.");
    }

    @Override // io.jsonwebtoken.impl.io.InstanceLocator
    public Deserializer<T> getInstance() {
        AtomicReference<Deserializer> atomicReference = DESERIALIZER;
        Deserializer deserializer = atomicReference.get();
        if (deserializer == null) {
            deserializer = locate();
            Assert.state(deserializer != null, "locate() cannot return null.");
            if (!compareAndSet(deserializer)) {
                deserializer = atomicReference.get();
            }
        }
        Assert.state(deserializer != null, "deserializer cannot be null.");
        return deserializer;
    }
}
