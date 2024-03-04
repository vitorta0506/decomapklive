package com.facebook.appevents;

import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B7\b\u0016\u0012.\u0010\u0003\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004j\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006`\b¢\u0006\u0002\u0010\tJ\u001c\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0005J\u001e\u0010\u0012\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00140\u0013J\u0019\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000f2\u0006\u0010\r\u001a\u00020\u0005H\u0086\u0002J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013J\b\u0010\u0017\u001a\u00020\u0018H\u0002R6\u0010\n\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004j\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006`\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/facebook/appevents/PersistedEvents;", "Ljava/io/Serializable;", "()V", "appEventMap", "Ljava/util/HashMap;", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "", "Lcom/facebook/appevents/AppEvent;", "Lkotlin/collections/HashMap;", "(Ljava/util/HashMap;)V", "events", "addEvents", "", "accessTokenAppIdPair", "appEvents", "", "containsKey", "", "entrySet", "", "", "get", "keySet", "writeReplace", "", "Companion", "SerializationProxyV1", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class PersistedEvents implements Serializable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 20160629001L;
    @NotNull
    private final HashMap<AccessTokenAppIdPair, List<AppEvent>> events;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/PersistedEvents$Companion;", "", "()V", "serialVersionUID", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB5\u0012.\u0010\u0002\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005`\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0002R6\u0010\u0002\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;", "Ljava/io/Serializable;", "proxyEvents", "Ljava/util/HashMap;", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "", "Lcom/facebook/appevents/AppEvent;", "Lkotlin/collections/HashMap;", "(Ljava/util/HashMap;)V", "readResolve", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SerializationProxyV1 implements Serializable {
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final long serialVersionUID = 20160629001L;
        @NotNull
        private final HashMap<AccessTokenAppIdPair, List<AppEvent>> proxyEvents;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1$Companion;", "", "()V", "serialVersionUID", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public SerializationProxyV1(@NotNull HashMap<AccessTokenAppIdPair, List<AppEvent>> proxyEvents) {
            Intrinsics.checkNotNullParameter(proxyEvents, "proxyEvents");
            this.proxyEvents = proxyEvents;
        }

        private final Object readResolve() throws ObjectStreamException {
            return new PersistedEvents(this.proxyEvents);
        }
    }

    public PersistedEvents() {
        this.events = new HashMap<>();
    }

    private final Object writeReplace() throws ObjectStreamException {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return new SerializationProxyV1(this.events);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    public final void addEvents(@NotNull AccessTokenAppIdPair accessTokenAppIdPair, @NotNull List<AppEvent> appEvents) {
        List<AppEvent> mutableList;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(accessTokenAppIdPair, "accessTokenAppIdPair");
            Intrinsics.checkNotNullParameter(appEvents, "appEvents");
            if (!this.events.containsKey(accessTokenAppIdPair)) {
                HashMap<AccessTokenAppIdPair, List<AppEvent>> hashMap = this.events;
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) appEvents);
                hashMap.put(accessTokenAppIdPair, mutableList);
                return;
            }
            List<AppEvent> list = this.events.get(accessTokenAppIdPair);
            if (list == null) {
                return;
            }
            list.addAll(appEvents);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final boolean containsKey(@NotNull AccessTokenAppIdPair accessTokenAppIdPair) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(accessTokenAppIdPair, "accessTokenAppIdPair");
            return this.events.containsKey(accessTokenAppIdPair);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    @NotNull
    public final Set<Map.Entry<AccessTokenAppIdPair, List<AppEvent>>> entrySet() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Set<Map.Entry<AccessTokenAppIdPair, List<AppEvent>>> entrySet = this.events.entrySet();
            Intrinsics.checkNotNullExpressionValue(entrySet, "events.entries");
            return entrySet;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @Nullable
    public final List<AppEvent> get(@NotNull AccessTokenAppIdPair accessTokenAppIdPair) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(accessTokenAppIdPair, "accessTokenAppIdPair");
            return this.events.get(accessTokenAppIdPair);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @NotNull
    public final Set<AccessTokenAppIdPair> keySet() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Set<AccessTokenAppIdPair> keySet = this.events.keySet();
            Intrinsics.checkNotNullExpressionValue(keySet, "events.keys");
            return keySet;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    public PersistedEvents(@NotNull HashMap<AccessTokenAppIdPair, List<AppEvent>> appEventMap) {
        Intrinsics.checkNotNullParameter(appEventMap, "appEventMap");
        HashMap<AccessTokenAppIdPair, List<AppEvent>> hashMap = new HashMap<>();
        this.events = hashMap;
        hashMap.putAll(appEventMap);
    }
}
