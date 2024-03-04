package com.facebook.appevents;

import android.content.Context;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AccessTokenAppIdPair;
import com.facebook.appevents.AppEvent;
import com.facebook.internal.Utility;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0007J\u0017\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0001¢\u0006\u0002\b\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/facebook/appevents/AppEventDiskStore;", "", "()V", "PERSISTED_EVENTS_FILENAME", "", "TAG", "readAndClearStore", "Lcom/facebook/appevents/PersistedEvents;", "saveEventsToDisk", "", "eventsToPersist", "saveEventsToDisk$facebook_core_release", "MovedClassObjectInputStream", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventDiskStore {
    @NotNull
    public static final AppEventDiskStore INSTANCE = new AppEventDiskStore();
    @NotNull
    private static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
    @NotNull
    private static final String TAG;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0014¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream;", "Ljava/io/ObjectInputStream;", "inputStream", "Ljava/io/InputStream;", "(Ljava/io/InputStream;)V", "readClassDescriptor", "Ljava/io/ObjectStreamClass;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    private static final class MovedClassObjectInputStream extends ObjectInputStream {
        @NotNull
        private static final String ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME = "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1";
        @NotNull
        private static final String APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME = "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV2";
        @NotNull
        public static final Companion Companion = new Companion(null);

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream$Companion;", "", "()V", "ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME", "", "APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public MovedClassObjectInputStream(@Nullable InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        @NotNull
        protected ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
            ObjectStreamClass resultClassDescriptor = super.readClassDescriptor();
            if (Intrinsics.areEqual(resultClassDescriptor.getName(), ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME)) {
                resultClassDescriptor = ObjectStreamClass.lookup(AccessTokenAppIdPair.SerializationProxyV1.class);
            } else if (Intrinsics.areEqual(resultClassDescriptor.getName(), APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME)) {
                resultClassDescriptor = ObjectStreamClass.lookup(AppEvent.SerializationProxyV2.class);
            }
            Intrinsics.checkNotNullExpressionValue(resultClassDescriptor, "resultClassDescriptor");
            return resultClassDescriptor;
        }
    }

    static {
        String name = AppEventDiskStore.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "AppEventDiskStore::class.java.name");
        TAG = name;
    }

    private AppEventDiskStore() {
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00a5 A[Catch: all -> 0x00ac, TRY_LEAVE, TryCatch #7 {, blocks: (B:4:0x0003, B:10:0x002c, B:11:0x0031, B:45:0x00a5, B:14:0x003c, B:25:0x005c, B:26:0x0061, B:29:0x006c, B:30:0x0070, B:32:0x0075, B:33:0x007a, B:37:0x008c, B:36:0x0085, B:39:0x008e, B:40:0x0093, B:43:0x009e), top: B:61:0x0003, inners: #1, #4, #5, #6 }] */
    @kotlin.jvm.JvmStatic
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final synchronized com.facebook.appevents.PersistedEvents readAndClearStore() {
        /*
            java.lang.Class<com.facebook.appevents.AppEventDiskStore> r0 = com.facebook.appevents.AppEventDiskStore.class
            monitor-enter(r0)
            com.facebook.appevents.internal.AppEventUtility r1 = com.facebook.appevents.internal.AppEventUtility.INSTANCE     // Catch: java.lang.Throwable -> Lac
            com.facebook.appevents.internal.AppEventUtility.assertIsNotMainThread()     // Catch: java.lang.Throwable -> Lac
            com.facebook.FacebookSdk r1 = com.facebook.FacebookSdk.INSTANCE     // Catch: java.lang.Throwable -> Lac
            android.content.Context r1 = com.facebook.FacebookSdk.getApplicationContext()     // Catch: java.lang.Throwable -> Lac
            r2 = 0
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.FileInputStream r3 = r1.openFileInput(r3)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L53 java.io.FileNotFoundException -> L8d
            java.lang.String r4 = "context.openFileInput(PERSISTED_EVENTS_FILENAME)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L53 java.io.FileNotFoundException -> L8d
            com.facebook.appevents.AppEventDiskStore$MovedClassObjectInputStream r4 = new com.facebook.appevents.AppEventDiskStore$MovedClassObjectInputStream     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L53 java.io.FileNotFoundException -> L8d
            java.io.BufferedInputStream r5 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L53 java.io.FileNotFoundException -> L8d
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L53 java.io.FileNotFoundException -> L8d
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L53 java.io.FileNotFoundException -> L8d
            java.lang.Object r3 = r4.readObject()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L74 java.io.FileNotFoundException -> L8e
            if (r3 == 0) goto L45
            com.facebook.appevents.PersistedEvents r3 = (com.facebook.appevents.PersistedEvents) r3     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L74 java.io.FileNotFoundException -> L8e
            com.facebook.internal.Utility r2 = com.facebook.internal.Utility.INSTANCE     // Catch: java.lang.Throwable -> Lac
            com.facebook.internal.Utility.closeQuietly(r4)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r2 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r2)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> Lac
            r1.delete()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> Lac
            goto L43
        L3b:
            r1 = move-exception
            java.lang.String r2 = com.facebook.appevents.AppEventDiskStore.TAG     // Catch: java.lang.Throwable -> Lac
            java.lang.String r4 = "Got unexpected exception when removing events file: "
            android.util.Log.w(r2, r4, r1)     // Catch: java.lang.Throwable -> Lac
        L43:
            r2 = r3
            goto La3
        L45:
            java.lang.NullPointerException r3 = new java.lang.NullPointerException     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L74 java.io.FileNotFoundException -> L8e
            java.lang.String r5 = "null cannot be cast to non-null type com.facebook.appevents.PersistedEvents"
            r3.<init>(r5)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L74 java.io.FileNotFoundException -> L8e
            throw r3     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L74 java.io.FileNotFoundException -> L8e
        L4d:
            r3 = move-exception
            goto L55
        L4f:
            r3 = move-exception
            r4 = r2
            r2 = r3
            goto L75
        L53:
            r3 = move-exception
            r4 = r2
        L55:
            java.lang.String r5 = com.facebook.appevents.AppEventDiskStore.TAG     // Catch: java.lang.Throwable -> L74
            java.lang.String r6 = "Got unexpected exception while reading events: "
            android.util.Log.w(r5, r6, r3)     // Catch: java.lang.Throwable -> L74
            com.facebook.internal.Utility r3 = com.facebook.internal.Utility.INSTANCE     // Catch: java.lang.Throwable -> Lac
            com.facebook.internal.Utility.closeQuietly(r4)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> Lac
            r1.delete()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> Lac
            goto La3
        L6b:
            r1 = move-exception
            java.lang.String r3 = com.facebook.appevents.AppEventDiskStore.TAG     // Catch: java.lang.Throwable -> Lac
            java.lang.String r4 = "Got unexpected exception when removing events file: "
        L70:
            android.util.Log.w(r3, r4, r1)     // Catch: java.lang.Throwable -> Lac
            goto La3
        L74:
            r2 = move-exception
        L75:
            com.facebook.internal.Utility r3 = com.facebook.internal.Utility.INSTANCE     // Catch: java.lang.Throwable -> Lac
            com.facebook.internal.Utility.closeQuietly(r4)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lac
            r1.delete()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lac
            goto L8c
        L84:
            r1 = move-exception
            java.lang.String r3 = com.facebook.appevents.AppEventDiskStore.TAG     // Catch: java.lang.Throwable -> Lac
            java.lang.String r4 = "Got unexpected exception when removing events file: "
            android.util.Log.w(r3, r4, r1)     // Catch: java.lang.Throwable -> Lac
        L8c:
            throw r2     // Catch: java.lang.Throwable -> Lac
        L8d:
            r4 = r2
        L8e:
            com.facebook.internal.Utility r3 = com.facebook.internal.Utility.INSTANCE     // Catch: java.lang.Throwable -> Lac
            com.facebook.internal.Utility.closeQuietly(r4)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Exception -> L9d java.lang.Throwable -> Lac
            r1.delete()     // Catch: java.lang.Exception -> L9d java.lang.Throwable -> Lac
            goto La3
        L9d:
            r1 = move-exception
            java.lang.String r3 = com.facebook.appevents.AppEventDiskStore.TAG     // Catch: java.lang.Throwable -> Lac
            java.lang.String r4 = "Got unexpected exception when removing events file: "
            goto L70
        La3:
            if (r2 != 0) goto Laa
            com.facebook.appevents.PersistedEvents r2 = new com.facebook.appevents.PersistedEvents     // Catch: java.lang.Throwable -> Lac
            r2.<init>()     // Catch: java.lang.Throwable -> Lac
        Laa:
            monitor-exit(r0)
            return r2
        Lac:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.AppEventDiskStore.readAndClearStore():com.facebook.appevents.PersistedEvents");
    }

    @JvmStatic
    public static final void saveEventsToDisk$facebook_core_release(@Nullable PersistedEvents persistedEvents) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        Context applicationContext = FacebookSdk.getApplicationContext();
        ObjectOutputStream objectOutputStream = null;
        try {
            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new BufferedOutputStream(applicationContext.openFileOutput(PERSISTED_EVENTS_FILENAME, 0)));
            try {
                objectOutputStream2.writeObject(persistedEvents);
                Utility utility = Utility.INSTANCE;
                Utility.closeQuietly(objectOutputStream2);
            } catch (Throwable th2) {
                th = th2;
                objectOutputStream = objectOutputStream2;
                try {
                    Log.w(TAG, "Got unexpected exception while persisting events: ", th);
                    try {
                        applicationContext.getFileStreamPath(PERSISTED_EVENTS_FILENAME).delete();
                    } catch (Exception unused) {
                    }
                } finally {
                    Utility utility2 = Utility.INSTANCE;
                    Utility.closeQuietly(objectOutputStream);
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
