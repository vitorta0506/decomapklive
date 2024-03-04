package com.facebook.internal.instrument.anrreport;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.anrreport.ANRHandler;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/facebook/internal/instrument/anrreport/ANRHandler;", "", "()V", "MAX_ANR_REPORT_NUM", "", "enabled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "enable", "", "sendANRReports", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ANRHandler {
    private static final int MAX_ANR_REPORT_NUM = 5;
    @NotNull
    public static final ANRHandler INSTANCE = new ANRHandler();
    @NotNull
    private static final AtomicBoolean enabled = new AtomicBoolean(false);

    private ANRHandler() {
    }

    @JvmStatic
    public static final synchronized void enable() {
        synchronized (ANRHandler.class) {
            if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
                return;
            }
            if (enabled.getAndSet(true)) {
                return;
            }
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.getAutoLogAppEventsEnabled()) {
                sendANRReports();
            }
            ANRDetector aNRDetector = ANRDetector.INSTANCE;
            ANRDetector.start();
        }
    }

    @JvmStatic
    @VisibleForTesting
    public static final void sendANRReports() {
        final List sortedWith;
        IntRange until;
        if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
            return;
        }
        try {
            Utility utility = Utility.INSTANCE;
            if (Utility.isDataProcessingRestricted()) {
                return;
            }
            InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
            File[] listAnrReportFiles = InstrumentUtility.listAnrReportFiles();
            ArrayList arrayList = new ArrayList(listAnrReportFiles.length);
            for (File file : listAnrReportFiles) {
                InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
                arrayList.add(InstrumentData.Builder.load(file));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((InstrumentData) obj).isValid()) {
                    arrayList2.add(obj);
                }
            }
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: c1.c
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    int m162sendANRReports$lambda2;
                    m162sendANRReports$lambda2 = ANRHandler.m162sendANRReports$lambda2((InstrumentData) obj2, (InstrumentData) obj3);
                    return m162sendANRReports$lambda2;
                }
            });
            JSONArray jSONArray = new JSONArray();
            until = RangesKt___RangesKt.until(0, Math.min(sortedWith.size(), 5));
            Iterator<Integer> it = until.iterator();
            while (it.hasNext()) {
                jSONArray.put(sortedWith.get(((IntIterator) it).nextInt()));
            }
            InstrumentUtility instrumentUtility2 = InstrumentUtility.INSTANCE;
            InstrumentUtility.sendReports("anr_reports", jSONArray, new GraphRequest.Callback() { // from class: c1.b
                @Override // com.facebook.GraphRequest.Callback
                public final void onCompleted(GraphResponse graphResponse) {
                    ANRHandler.m163sendANRReports$lambda5(sortedWith, graphResponse);
                }
            });
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ANRHandler.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendANRReports$lambda-2  reason: not valid java name */
    public static final int m162sendANRReports$lambda2(InstrumentData instrumentData, InstrumentData o22) {
        if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
            return 0;
        }
        try {
            Intrinsics.checkNotNullExpressionValue(o22, "o2");
            return instrumentData.compareTo(o22);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ANRHandler.class);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendANRReports$lambda-5  reason: not valid java name */
    public static final void m163sendANRReports$lambda5(List validReports, GraphResponse response) {
        if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(validReports, "$validReports");
            Intrinsics.checkNotNullParameter(response, "response");
            try {
                if (response.getError() == null) {
                    JSONObject jsonObject = response.getJsonObject();
                    if (Intrinsics.areEqual(jsonObject == null ? null : Boolean.valueOf(jsonObject.getBoolean(GraphResponse.SUCCESS_KEY)), Boolean.TRUE)) {
                        Iterator it = validReports.iterator();
                        while (it.hasNext()) {
                            ((InstrumentData) it.next()).clear();
                        }
                    }
                }
            } catch (JSONException unused) {
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ANRHandler.class);
        }
    }
}
