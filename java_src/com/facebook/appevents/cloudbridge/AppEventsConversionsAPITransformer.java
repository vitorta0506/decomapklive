package com.facebook.appevents.cloudbridge;

import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.cloudbridge.AppEventType;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001:\u00042345B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0089\u0001\u0010\u000e\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0006\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00132\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00132\u0018\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00060\u000f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0000¢\u0006\u0002\b\u0018JJ\u0010\u0019\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0006\u0018\u00010\u000f2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00062\u0018\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00060\u000fH\u0002J:\u0010\u001b\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0006\u0018\u00010\u000f2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0002JU\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00062\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00062\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00062\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0006H\u0000¢\u0006\u0002\b\u001dJ5\u0010\u001e\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0006\u0018\u00010\u000f2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0006H\u0000¢\u0006\u0002\b J\u0088\u0001\u0010!\u001a\u00020\u00112\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00062\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00132.\u0010\u0016\u001a*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00060\"j\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0006`#2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0013H\u0002JE\u0010$\u001a\u00020%2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00132\u0006\u0010&\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u0001H\u0000¢\u0006\u0002\b(J,\u0010)\u001a\u00020%2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00132\u0006\u0010&\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u0001H\u0002J,\u0010*\u001a\u00020%2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00132\u0006\u0010&\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u0001H\u0002J\u0010\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004H\u0002JA\u0010-\u001a.\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0006\u0018\u00010\"j\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0006\u0018\u0001`#2\u0006\u0010.\u001a\u00020\u0004H\u0001¢\u0006\u0002\b/J\u001f\u00100\u001a\u0004\u0018\u00010\u00012\u0006\u0010&\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\u0001H\u0001¢\u0006\u0002\b1R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer;", "", "()V", "TAG", "", "customEventTransformations", "", "Lcom/facebook/appevents/cloudbridge/CustomEventField;", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$SectionCustomEventFieldMapping;", "standardEventTransformations", "Lcom/facebook/appevents/cloudbridge/ConversionsAPIEventName;", "topLevelTransformations", "Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$SectionFieldMapping;", "combineAllTransformedData", "", "eventType", "Lcom/facebook/appevents/cloudbridge/AppEventType;", "userData", "", "appData", "restOfData", "customEvents", "eventTime", "combineAllTransformedData$facebook_core_release", "combineAllTransformedDataForCustom", "commonFields", "combineAllTransformedDataForMobileAppInstall", "combineCommonFields", "combineCommonFields$facebook_core_release", "conversionsAPICompatibleEvent", PushConstants.PARAMS, "conversionsAPICompatibleEvent$facebook_core_release", "splitAppEventParameters", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "transformAndUpdateAppAndUserData", "", "field", "value", "transformAndUpdateAppAndUserData$facebook_core_release", "transformAndUpdateAppData", "transformAndUpdateUserData", "transformEventName", "input", "transformEvents", "appEvents", "transformEvents$facebook_core_release", "transformValue", "transformValue$facebook_core_release", "DataProcessingParameterName", "SectionCustomEventFieldMapping", "SectionFieldMapping", "ValueTransformationType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventsConversionsAPITransformer {
    @NotNull
    public static final AppEventsConversionsAPITransformer INSTANCE = new AppEventsConversionsAPITransformer();
    @NotNull
    public static final String TAG = "AppEventsConversionsAPITransformer";
    @JvmField
    @NotNull
    public static final Map<CustomEventField, SectionCustomEventFieldMapping> customEventTransformations;
    @JvmField
    @NotNull
    public static final Map<String, ConversionsAPIEventName> standardEventTransformations;
    @NotNull
    private static final Map<AppEventUserAndAppDataField, SectionFieldMapping> topLevelTransformations;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName;", "", "rawValue", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getRawValue", "()Ljava/lang/String;", "OPTIONS", "COUNTRY", "STATE", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum DataProcessingParameterName {
        OPTIONS(FacebookSdk.DATA_PROCESSION_OPTIONS),
        COUNTRY(FacebookSdk.DATA_PROCESSION_OPTIONS_COUNTRY),
        STATE(FacebookSdk.DATA_PROCESSION_OPTIONS_STATE);
        
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final String rawValue;

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002¨\u0006\u0007"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName$Companion;", "", "()V", "invoke", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName;", "rawValue", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final DataProcessingParameterName invoke(@NotNull String rawValue) {
                DataProcessingParameterName[] valuesCustom;
                Intrinsics.checkNotNullParameter(rawValue, "rawValue");
                for (DataProcessingParameterName dataProcessingParameterName : DataProcessingParameterName.valuesCustom()) {
                    if (Intrinsics.areEqual(dataProcessingParameterName.getRawValue(), rawValue)) {
                        return dataProcessingParameterName;
                    }
                }
                return null;
            }
        }

        DataProcessingParameterName(String str) {
            this.rawValue = str;
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static DataProcessingParameterName[] valuesCustom() {
            DataProcessingParameterName[] valuesCustom = values();
            return (DataProcessingParameterName[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        @NotNull
        public final String getRawValue() {
            return this.rawValue;
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$SectionCustomEventFieldMapping;", "", "section", "Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;", "field", "Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;)V", "getField", "()Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;", "setField", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;)V", "getSection", "()Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;", "setSection", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SectionCustomEventFieldMapping {
        @NotNull
        private ConversionsAPICustomEventField field;
        @Nullable
        private ConversionsAPISection section;

        public SectionCustomEventFieldMapping(@Nullable ConversionsAPISection conversionsAPISection, @NotNull ConversionsAPICustomEventField field) {
            Intrinsics.checkNotNullParameter(field, "field");
            this.section = conversionsAPISection;
            this.field = field;
        }

        public static /* synthetic */ SectionCustomEventFieldMapping copy$default(SectionCustomEventFieldMapping sectionCustomEventFieldMapping, ConversionsAPISection conversionsAPISection, ConversionsAPICustomEventField conversionsAPICustomEventField, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                conversionsAPISection = sectionCustomEventFieldMapping.section;
            }
            if ((i9 & 2) != 0) {
                conversionsAPICustomEventField = sectionCustomEventFieldMapping.field;
            }
            return sectionCustomEventFieldMapping.copy(conversionsAPISection, conversionsAPICustomEventField);
        }

        @Nullable
        public final ConversionsAPISection component1() {
            return this.section;
        }

        @NotNull
        public final ConversionsAPICustomEventField component2() {
            return this.field;
        }

        @NotNull
        public final SectionCustomEventFieldMapping copy(@Nullable ConversionsAPISection conversionsAPISection, @NotNull ConversionsAPICustomEventField field) {
            Intrinsics.checkNotNullParameter(field, "field");
            return new SectionCustomEventFieldMapping(conversionsAPISection, field);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SectionCustomEventFieldMapping) {
                SectionCustomEventFieldMapping sectionCustomEventFieldMapping = (SectionCustomEventFieldMapping) obj;
                return this.section == sectionCustomEventFieldMapping.section && this.field == sectionCustomEventFieldMapping.field;
            }
            return false;
        }

        @NotNull
        public final ConversionsAPICustomEventField getField() {
            return this.field;
        }

        @Nullable
        public final ConversionsAPISection getSection() {
            return this.section;
        }

        public int hashCode() {
            ConversionsAPISection conversionsAPISection = this.section;
            return ((conversionsAPISection == null ? 0 : conversionsAPISection.hashCode()) * 31) + this.field.hashCode();
        }

        public final void setField(@NotNull ConversionsAPICustomEventField conversionsAPICustomEventField) {
            Intrinsics.checkNotNullParameter(conversionsAPICustomEventField, "<set-?>");
            this.field = conversionsAPICustomEventField;
        }

        public final void setSection(@Nullable ConversionsAPISection conversionsAPISection) {
            this.section = conversionsAPISection;
        }

        @NotNull
        public String toString() {
            return "SectionCustomEventFieldMapping(section=" + this.section + ", field=" + this.field + ')';
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$SectionFieldMapping;", "", "section", "Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;", "field", "Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;)V", "getField", "()Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;", "setField", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;)V", "getSection", "()Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;", "setSection", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SectionFieldMapping {
        @Nullable
        private ConversionsAPIUserAndAppDataField field;
        @NotNull
        private ConversionsAPISection section;

        public SectionFieldMapping(@NotNull ConversionsAPISection section, @Nullable ConversionsAPIUserAndAppDataField conversionsAPIUserAndAppDataField) {
            Intrinsics.checkNotNullParameter(section, "section");
            this.section = section;
            this.field = conversionsAPIUserAndAppDataField;
        }

        public static /* synthetic */ SectionFieldMapping copy$default(SectionFieldMapping sectionFieldMapping, ConversionsAPISection conversionsAPISection, ConversionsAPIUserAndAppDataField conversionsAPIUserAndAppDataField, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                conversionsAPISection = sectionFieldMapping.section;
            }
            if ((i9 & 2) != 0) {
                conversionsAPIUserAndAppDataField = sectionFieldMapping.field;
            }
            return sectionFieldMapping.copy(conversionsAPISection, conversionsAPIUserAndAppDataField);
        }

        @NotNull
        public final ConversionsAPISection component1() {
            return this.section;
        }

        @Nullable
        public final ConversionsAPIUserAndAppDataField component2() {
            return this.field;
        }

        @NotNull
        public final SectionFieldMapping copy(@NotNull ConversionsAPISection section, @Nullable ConversionsAPIUserAndAppDataField conversionsAPIUserAndAppDataField) {
            Intrinsics.checkNotNullParameter(section, "section");
            return new SectionFieldMapping(section, conversionsAPIUserAndAppDataField);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SectionFieldMapping) {
                SectionFieldMapping sectionFieldMapping = (SectionFieldMapping) obj;
                return this.section == sectionFieldMapping.section && this.field == sectionFieldMapping.field;
            }
            return false;
        }

        @Nullable
        public final ConversionsAPIUserAndAppDataField getField() {
            return this.field;
        }

        @NotNull
        public final ConversionsAPISection getSection() {
            return this.section;
        }

        public int hashCode() {
            int hashCode = this.section.hashCode() * 31;
            ConversionsAPIUserAndAppDataField conversionsAPIUserAndAppDataField = this.field;
            return hashCode + (conversionsAPIUserAndAppDataField == null ? 0 : conversionsAPIUserAndAppDataField.hashCode());
        }

        public final void setField(@Nullable ConversionsAPIUserAndAppDataField conversionsAPIUserAndAppDataField) {
            this.field = conversionsAPIUserAndAppDataField;
        }

        public final void setSection(@NotNull ConversionsAPISection conversionsAPISection) {
            Intrinsics.checkNotNullParameter(conversionsAPISection, "<set-?>");
            this.section = conversionsAPISection;
        }

        @NotNull
        public String toString() {
            return "SectionFieldMapping(section=" + this.section + ", field=" + this.field + ')';
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0007"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;", "", "(Ljava/lang/String;I)V", "ARRAY", "BOOL", "INT", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum ValueTransformationType {
        ARRAY,
        BOOL,
        INT;
        
        @NotNull
        public static final Companion Companion = new Companion(null);

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002¨\u0006\u0007"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType$Companion;", "", "()V", "invoke", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;", "rawValue", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final ValueTransformationType invoke(@NotNull String rawValue) {
                Intrinsics.checkNotNullParameter(rawValue, "rawValue");
                if (!Intrinsics.areEqual(rawValue, AppEventUserAndAppDataField.EXT_INFO.getRawValue()) && !Intrinsics.areEqual(rawValue, AppEventUserAndAppDataField.URL_SCHEMES.getRawValue()) && !Intrinsics.areEqual(rawValue, CustomEventField.CONTENT_IDS.getRawValue()) && !Intrinsics.areEqual(rawValue, CustomEventField.CONTENTS.getRawValue()) && !Intrinsics.areEqual(rawValue, DataProcessingParameterName.OPTIONS.getRawValue())) {
                    if (!Intrinsics.areEqual(rawValue, AppEventUserAndAppDataField.ADV_TE.getRawValue()) && !Intrinsics.areEqual(rawValue, AppEventUserAndAppDataField.APP_TE.getRawValue())) {
                        if (Intrinsics.areEqual(rawValue, CustomEventField.EVENT_TIME.getRawValue())) {
                            return ValueTransformationType.INT;
                        }
                        return null;
                    }
                    return ValueTransformationType.BOOL;
                }
                return ValueTransformationType.ARRAY;
            }
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static ValueTransformationType[] valuesCustom() {
            ValueTransformationType[] valuesCustom = values();
            return (ValueTransformationType[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[ValueTransformationType.valuesCustom().length];
            iArr[ValueTransformationType.ARRAY.ordinal()] = 1;
            iArr[ValueTransformationType.BOOL.ordinal()] = 2;
            iArr[ValueTransformationType.INT.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ConversionsAPISection.valuesCustom().length];
            iArr2[ConversionsAPISection.APP_DATA.ordinal()] = 1;
            iArr2[ConversionsAPISection.USER_DATA.ordinal()] = 2;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[AppEventType.valuesCustom().length];
            iArr3[AppEventType.MOBILE_APP_INSTALL.ordinal()] = 1;
            iArr3[AppEventType.CUSTOM.ordinal()] = 2;
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    static {
        Map<AppEventUserAndAppDataField, SectionFieldMapping> mapOf;
        Map<CustomEventField, SectionCustomEventFieldMapping> mapOf2;
        Map<String, ConversionsAPIEventName> mapOf3;
        AppEventUserAndAppDataField appEventUserAndAppDataField = AppEventUserAndAppDataField.ANON_ID;
        ConversionsAPISection conversionsAPISection = ConversionsAPISection.USER_DATA;
        AppEventUserAndAppDataField appEventUserAndAppDataField2 = AppEventUserAndAppDataField.ADV_TE;
        ConversionsAPISection conversionsAPISection2 = ConversionsAPISection.APP_DATA;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(appEventUserAndAppDataField, new SectionFieldMapping(conversionsAPISection, ConversionsAPIUserAndAppDataField.ANON_ID)), TuplesKt.to(AppEventUserAndAppDataField.APP_USER_ID, new SectionFieldMapping(conversionsAPISection, ConversionsAPIUserAndAppDataField.FB_LOGIN_ID)), TuplesKt.to(AppEventUserAndAppDataField.ADVERTISER_ID, new SectionFieldMapping(conversionsAPISection, ConversionsAPIUserAndAppDataField.MAD_ID)), TuplesKt.to(AppEventUserAndAppDataField.PAGE_ID, new SectionFieldMapping(conversionsAPISection, ConversionsAPIUserAndAppDataField.PAGE_ID)), TuplesKt.to(AppEventUserAndAppDataField.PAGE_SCOPED_USER_ID, new SectionFieldMapping(conversionsAPISection, ConversionsAPIUserAndAppDataField.PAGE_SCOPED_USER_ID)), TuplesKt.to(appEventUserAndAppDataField2, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.ADV_TE)), TuplesKt.to(AppEventUserAndAppDataField.APP_TE, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.APP_TE)), TuplesKt.to(AppEventUserAndAppDataField.CONSIDER_VIEWS, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.CONSIDER_VIEWS)), TuplesKt.to(AppEventUserAndAppDataField.DEVICE_TOKEN, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.DEVICE_TOKEN)), TuplesKt.to(AppEventUserAndAppDataField.EXT_INFO, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.EXT_INFO)), TuplesKt.to(AppEventUserAndAppDataField.INCLUDE_DWELL_DATA, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INCLUDE_DWELL_DATA)), TuplesKt.to(AppEventUserAndAppDataField.INCLUDE_VIDEO_DATA, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INCLUDE_VIDEO_DATA)), TuplesKt.to(AppEventUserAndAppDataField.INSTALL_REFERRER, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INSTALL_REFERRER)), TuplesKt.to(AppEventUserAndAppDataField.INSTALLER_PACKAGE, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INSTALLER_PACKAGE)), TuplesKt.to(AppEventUserAndAppDataField.RECEIPT_DATA, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.RECEIPT_DATA)), TuplesKt.to(AppEventUserAndAppDataField.URL_SCHEMES, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.URL_SCHEMES)), TuplesKt.to(AppEventUserAndAppDataField.USER_DATA, new SectionFieldMapping(conversionsAPISection, null)));
        topLevelTransformations = mapOf;
        CustomEventField customEventField = CustomEventField.VALUE_TO_SUM;
        ConversionsAPISection conversionsAPISection3 = ConversionsAPISection.CUSTOM_DATA;
        mapOf2 = MapsKt__MapsKt.mapOf(TuplesKt.to(CustomEventField.EVENT_TIME, new SectionCustomEventFieldMapping(null, ConversionsAPICustomEventField.EVENT_TIME)), TuplesKt.to(CustomEventField.EVENT_NAME, new SectionCustomEventFieldMapping(null, ConversionsAPICustomEventField.EVENT_NAME)), TuplesKt.to(customEventField, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.VALUE_TO_SUM)), TuplesKt.to(CustomEventField.CONTENT_IDS, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.CONTENT_IDS)), TuplesKt.to(CustomEventField.CONTENTS, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.CONTENTS)), TuplesKt.to(CustomEventField.CONTENT_TYPE, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.CONTENT_TYPE)), TuplesKt.to(CustomEventField.CURRENCY, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.CURRENCY)), TuplesKt.to(CustomEventField.DESCRIPTION, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.DESCRIPTION)), TuplesKt.to(CustomEventField.LEVEL, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.LEVEL)), TuplesKt.to(CustomEventField.MAX_RATING_VALUE, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.MAX_RATING_VALUE)), TuplesKt.to(CustomEventField.NUM_ITEMS, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.NUM_ITEMS)), TuplesKt.to(CustomEventField.PAYMENT_INFO_AVAILABLE, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.PAYMENT_INFO_AVAILABLE)), TuplesKt.to(CustomEventField.REGISTRATION_METHOD, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.REGISTRATION_METHOD)), TuplesKt.to(CustomEventField.SEARCH_STRING, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.SEARCH_STRING)), TuplesKt.to(CustomEventField.SUCCESS, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.SUCCESS)), TuplesKt.to(CustomEventField.ORDER_ID, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.ORDER_ID)), TuplesKt.to(CustomEventField.AD_TYPE, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.AD_TYPE)));
        customEventTransformations = mapOf2;
        mapOf3 = MapsKt__MapsKt.mapOf(TuplesKt.to(AppEventsConstants.EVENT_NAME_UNLOCKED_ACHIEVEMENT, ConversionsAPIEventName.UNLOCKED_ACHIEVEMENT), TuplesKt.to(AppEventsConstants.EVENT_NAME_ACTIVATED_APP, ConversionsAPIEventName.ACTIVATED_APP), TuplesKt.to(AppEventsConstants.EVENT_NAME_ADDED_PAYMENT_INFO, ConversionsAPIEventName.ADDED_PAYMENT_INFO), TuplesKt.to(AppEventsConstants.EVENT_NAME_ADDED_TO_CART, ConversionsAPIEventName.ADDED_TO_CART), TuplesKt.to(AppEventsConstants.EVENT_NAME_ADDED_TO_WISHLIST, ConversionsAPIEventName.ADDED_TO_WISHLIST), TuplesKt.to(AppEventsConstants.EVENT_NAME_COMPLETED_REGISTRATION, ConversionsAPIEventName.COMPLETED_REGISTRATION), TuplesKt.to(AppEventsConstants.EVENT_NAME_VIEWED_CONTENT, ConversionsAPIEventName.VIEWED_CONTENT), TuplesKt.to(AppEventsConstants.EVENT_NAME_INITIATED_CHECKOUT, ConversionsAPIEventName.INITIATED_CHECKOUT), TuplesKt.to(AppEventsConstants.EVENT_NAME_ACHIEVED_LEVEL, ConversionsAPIEventName.ACHIEVED_LEVEL), TuplesKt.to(AppEventsConstants.EVENT_NAME_PURCHASED, ConversionsAPIEventName.PURCHASED), TuplesKt.to(AppEventsConstants.EVENT_NAME_RATED, ConversionsAPIEventName.RATED), TuplesKt.to(AppEventsConstants.EVENT_NAME_SEARCHED, ConversionsAPIEventName.SEARCHED), TuplesKt.to(AppEventsConstants.EVENT_NAME_SPENT_CREDITS, ConversionsAPIEventName.SPENT_CREDITS), TuplesKt.to(AppEventsConstants.EVENT_NAME_COMPLETED_TUTORIAL, ConversionsAPIEventName.COMPLETED_TUTORIAL));
        standardEventTransformations = mapOf3;
    }

    private AppEventsConversionsAPITransformer() {
    }

    private final List<Map<String, Object>> combineAllTransformedDataForCustom(Map<String, ? extends Object> map, List<? extends Map<String, ? extends Object>> list) {
        if (list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.putAll(map);
            linkedHashMap.putAll((Map) it.next());
            arrayList.add(linkedHashMap);
        }
        return arrayList;
    }

    private final List<Map<String, Object>> combineAllTransformedDataForMobileAppInstall(Map<String, ? extends Object> map, Object obj) {
        List<Map<String, Object>> listOf;
        if (obj == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(map);
        linkedHashMap.put(ConversionsAPICustomEventField.EVENT_NAME.getRawValue(), OtherEventConstants.MOBILE_APP_INSTALL.getRawValue());
        linkedHashMap.put(ConversionsAPICustomEventField.EVENT_TIME.getRawValue(), obj);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(linkedHashMap);
        return listOf;
    }

    private final AppEventType splitAppEventParameters(Map<String, ? extends Object> map, Map<String, Object> map2, Map<String, Object> map3, ArrayList<Map<String, Object>> arrayList, Map<String, Object> map4) {
        Object obj = map.get(OtherEventConstants.EVENT.getRawValue());
        AppEventType.Companion companion = AppEventType.Companion;
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.String");
        AppEventType invoke = companion.invoke((String) obj);
        if (invoke == AppEventType.OTHER) {
            return invoke;
        }
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            AppEventUserAndAppDataField invoke2 = AppEventUserAndAppDataField.Companion.invoke(key);
            if (invoke2 != null) {
                INSTANCE.transformAndUpdateAppAndUserData$facebook_core_release(map2, map3, invoke2, value);
            } else {
                boolean areEqual = Intrinsics.areEqual(key, ConversionsAPISection.CUSTOM_EVENTS.getRawValue());
                boolean z10 = value instanceof String;
                if (invoke == AppEventType.CUSTOM && areEqual && z10) {
                    ArrayList<Map<String, Object>> transformEvents$facebook_core_release = transformEvents$facebook_core_release((String) value);
                    if (transformEvents$facebook_core_release != null) {
                        arrayList.addAll(transformEvents$facebook_core_release);
                    }
                } else if (DataProcessingParameterName.Companion.invoke(key) != null) {
                    map4.put(key, value);
                }
            }
        }
        return invoke;
    }

    private final void transformAndUpdateAppData(Map<String, Object> map, AppEventUserAndAppDataField appEventUserAndAppDataField, Object obj) {
        SectionFieldMapping sectionFieldMapping = topLevelTransformations.get(appEventUserAndAppDataField);
        ConversionsAPIUserAndAppDataField field = sectionFieldMapping == null ? null : sectionFieldMapping.getField();
        if (field == null) {
            return;
        }
        map.put(field.getRawValue(), obj);
    }

    private final void transformAndUpdateUserData(Map<String, Object> map, AppEventUserAndAppDataField appEventUserAndAppDataField, Object obj) {
        if (appEventUserAndAppDataField == AppEventUserAndAppDataField.USER_DATA) {
            try {
                Utility utility = Utility.INSTANCE;
                map.putAll(Utility.convertJSONObjectToHashMap(new JSONObject((String) obj)));
                return;
            } catch (JSONException e10) {
                Logger.Companion.log(LoggingBehavior.APP_EVENTS, TAG, "\n transformEvents JSONException: \n%s\n%s", obj, e10);
                return;
            }
        }
        SectionFieldMapping sectionFieldMapping = topLevelTransformations.get(appEventUserAndAppDataField);
        ConversionsAPIUserAndAppDataField field = sectionFieldMapping == null ? null : sectionFieldMapping.getField();
        if (field == null) {
            return;
        }
        map.put(field.getRawValue(), obj);
    }

    private final String transformEventName(String str) {
        Map<String, ConversionsAPIEventName> map = standardEventTransformations;
        if (map.containsKey(str)) {
            ConversionsAPIEventName conversionsAPIEventName = map.get(str);
            return conversionsAPIEventName == null ? "" : conversionsAPIEventName.getRawValue();
        }
        return str;
    }

    @JvmStatic
    @Nullable
    public static final ArrayList<Map<String, Object>> transformEvents$facebook_core_release(@NotNull String appEvents) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(appEvents, "appEvents");
        ArrayList<Map> arrayList = new ArrayList();
        try {
            Utility utility = Utility.INSTANCE;
            for (String str : Utility.convertJSONArrayToList(new JSONArray(appEvents))) {
                Utility utility2 = Utility.INSTANCE;
                arrayList.add(Utility.convertJSONObjectToHashMap(new JSONObject(str)));
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            ArrayList<Map<String, Object>> arrayList2 = new ArrayList<>();
            for (Map map : arrayList) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                for (String str2 : map.keySet()) {
                    CustomEventField invoke = CustomEventField.Companion.invoke(str2);
                    SectionCustomEventFieldMapping sectionCustomEventFieldMapping = customEventTransformations.get(invoke);
                    if (invoke != null && sectionCustomEventFieldMapping != null) {
                        ConversionsAPISection section = sectionCustomEventFieldMapping.getSection();
                        if (section != null) {
                            if (section == ConversionsAPISection.CUSTOM_DATA) {
                                String rawValue = sectionCustomEventFieldMapping.getField().getRawValue();
                                Object obj = map.get(str2);
                                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Any");
                                Object transformValue$facebook_core_release = transformValue$facebook_core_release(str2, obj);
                                Objects.requireNonNull(transformValue$facebook_core_release, "null cannot be cast to non-null type kotlin.Any");
                                linkedHashMap.put(rawValue, transformValue$facebook_core_release);
                            }
                        } else {
                            try {
                                String rawValue2 = sectionCustomEventFieldMapping.getField().getRawValue();
                                if (invoke == CustomEventField.EVENT_NAME && ((String) map.get(str2)) != null) {
                                    AppEventsConversionsAPITransformer appEventsConversionsAPITransformer = INSTANCE;
                                    Object obj2 = map.get(str2);
                                    if (obj2 == null) {
                                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                    }
                                    linkedHashMap2.put(rawValue2, appEventsConversionsAPITransformer.transformEventName((String) obj2));
                                } else if (invoke == CustomEventField.EVENT_TIME && ((Integer) map.get(str2)) != null) {
                                    Object obj3 = map.get(str2);
                                    if (obj3 == null) {
                                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                                    }
                                    Object transformValue$facebook_core_release2 = transformValue$facebook_core_release(str2, obj3);
                                    if (transformValue$facebook_core_release2 != null) {
                                        linkedHashMap2.put(rawValue2, transformValue$facebook_core_release2);
                                    } else {
                                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                                    }
                                }
                            } catch (ClassCastException e10) {
                                Logger.Companion companion = Logger.Companion;
                                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                                stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e10);
                                companion.log(loggingBehavior, TAG, "\n transformEvents ClassCastException: \n %s ", stackTraceToString);
                            }
                        }
                    }
                }
                if (!linkedHashMap.isEmpty()) {
                    linkedHashMap2.put(ConversionsAPISection.CUSTOM_DATA.getRawValue(), linkedHashMap);
                }
                arrayList2.add(linkedHashMap2);
            }
            return arrayList2;
        } catch (JSONException e11) {
            Logger.Companion.log(LoggingBehavior.APP_EVENTS, TAG, "\n transformEvents JSONException: \n%s\n%s", appEvents, e11);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Object transformValue$facebook_core_release(@NotNull String field, @NotNull Object value) {
        String str;
        Object convertJSONArrayToList;
        Integer intOrNull;
        Integer intOrNull2;
        Intrinsics.checkNotNullParameter(field, "field");
        Intrinsics.checkNotNullParameter(value, "value");
        ValueTransformationType invoke = ValueTransformationType.Companion.invoke(field);
        String str2 = value instanceof String ? (String) value : null;
        if (invoke == null || str2 == null) {
            return value;
        }
        int i9 = WhenMappings.$EnumSwitchMapping$0[invoke.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 3) {
                    intOrNull2 = StringsKt__StringNumberConversionsKt.toIntOrNull(value.toString());
                    return intOrNull2;
                }
                throw new NoWhenBranchMatchedException();
            }
            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str2);
            if (intOrNull != null) {
                return Boolean.valueOf(intOrNull.intValue() != 0);
            }
            return null;
        }
        try {
            Utility utility = Utility.INSTANCE;
            List<String> convertJSONArrayToList2 = Utility.convertJSONArrayToList(new JSONArray(str2));
            ArrayList arrayList = new ArrayList();
            for (String str3 : convertJSONArrayToList2) {
                try {
                    try {
                        Utility utility2 = Utility.INSTANCE;
                        convertJSONArrayToList = Utility.convertJSONObjectToHashMap(new JSONObject(str3));
                    } catch (JSONException unused) {
                    }
                } catch (JSONException unused2) {
                    Utility utility3 = Utility.INSTANCE;
                    convertJSONArrayToList = Utility.convertJSONArrayToList(new JSONArray(str));
                }
                arrayList.add(convertJSONArrayToList);
            }
            return arrayList;
        } catch (JSONException e10) {
            Logger.Companion.log(LoggingBehavior.APP_EVENTS, TAG, "\n transformEvents JSONException: \n%s\n%s", value, e10);
            return Unit.INSTANCE;
        }
    }

    @Nullable
    public final List<Map<String, Object>> combineAllTransformedData$facebook_core_release(@NotNull AppEventType eventType, @NotNull Map<String, Object> userData, @NotNull Map<String, Object> appData, @NotNull Map<String, Object> restOfData, @NotNull List<? extends Map<String, ? extends Object>> customEvents, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(userData, "userData");
        Intrinsics.checkNotNullParameter(appData, "appData");
        Intrinsics.checkNotNullParameter(restOfData, "restOfData");
        Intrinsics.checkNotNullParameter(customEvents, "customEvents");
        Map<String, Object> combineCommonFields$facebook_core_release = combineCommonFields$facebook_core_release(userData, appData, restOfData);
        int i9 = WhenMappings.$EnumSwitchMapping$2[eventType.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                return null;
            }
            return combineAllTransformedDataForCustom(combineCommonFields$facebook_core_release, customEvents);
        }
        return combineAllTransformedDataForMobileAppInstall(combineCommonFields$facebook_core_release, obj);
    }

    @NotNull
    public final Map<String, Object> combineCommonFields$facebook_core_release(@NotNull Map<String, ? extends Object> userData, @NotNull Map<String, ? extends Object> appData, @NotNull Map<String, ? extends Object> restOfData) {
        Intrinsics.checkNotNullParameter(userData, "userData");
        Intrinsics.checkNotNullParameter(appData, "appData");
        Intrinsics.checkNotNullParameter(restOfData, "restOfData");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OtherEventConstants.ACTION_SOURCE.getRawValue(), OtherEventConstants.APP.getRawValue());
        linkedHashMap.put(ConversionsAPISection.USER_DATA.getRawValue(), userData);
        linkedHashMap.put(ConversionsAPISection.APP_DATA.getRawValue(), appData);
        linkedHashMap.putAll(restOfData);
        return linkedHashMap;
    }

    @Nullable
    public final List<Map<String, Object>> conversionsAPICompatibleEvent$facebook_core_release(@NotNull Map<String, ? extends Object> parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Map<String, Object> linkedHashMap = new LinkedHashMap<>();
        Map<String, Object> linkedHashMap2 = new LinkedHashMap<>();
        ArrayList<Map<String, Object>> arrayList = new ArrayList<>();
        Map<String, Object> linkedHashMap3 = new LinkedHashMap<>();
        AppEventType splitAppEventParameters = splitAppEventParameters(parameters, linkedHashMap, linkedHashMap2, arrayList, linkedHashMap3);
        if (splitAppEventParameters == AppEventType.OTHER) {
            return null;
        }
        return combineAllTransformedData$facebook_core_release(splitAppEventParameters, linkedHashMap, linkedHashMap2, linkedHashMap3, arrayList, parameters.get(OtherEventConstants.INSTALL_EVENT_TIME.getRawValue()));
    }

    public final void transformAndUpdateAppAndUserData$facebook_core_release(@NotNull Map<String, Object> userData, @NotNull Map<String, Object> appData, @NotNull AppEventUserAndAppDataField field, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(userData, "userData");
        Intrinsics.checkNotNullParameter(appData, "appData");
        Intrinsics.checkNotNullParameter(field, "field");
        Intrinsics.checkNotNullParameter(value, "value");
        SectionFieldMapping sectionFieldMapping = topLevelTransformations.get(field);
        if (sectionFieldMapping == null) {
            return;
        }
        int i9 = WhenMappings.$EnumSwitchMapping$1[sectionFieldMapping.getSection().ordinal()];
        if (i9 == 1) {
            transformAndUpdateAppData(appData, field, value);
        } else if (i9 != 2) {
        } else {
            transformAndUpdateUserData(userData, field, value);
        }
    }
}
