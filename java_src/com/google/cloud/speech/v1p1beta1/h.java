package com.google.cloud.speech.v1p1beta1;

import com.google.api.c0;
import com.google.api.c1;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.m0;
import com.google.protobuf.z;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f12261a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f12262b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f12263c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f12264d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f12265e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f12266f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f12267g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f12268h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f12269i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f12270j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f12271k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f12272l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f12273m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f12274n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f12275o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f12276p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f12277q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f12278r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f12279s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f12280t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f12281u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f12282v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f12283w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f12284x;

    /* renamed from: y  reason: collision with root package name */
    private static Descriptors.FileDescriptor f12285y = Descriptors.FileDescriptor.s(new String[]{"\n;google/cloud/speech/v1p1beta1/cloud_speech_adaptation.proto\u0012\u001dgoogle.cloud.speech.v1p1beta1\u001a\u001cgoogle/api/annotations.proto\u001a\u0017google/api/client.proto\u001a\u001fgoogle/api/field_behavior.proto\u001a\u0019google/api/resource.proto\u001a,google/cloud/speech/v1p1beta1/resource.proto\u001a\u001bgoogle/protobuf/empty.proto\u001a google/protobuf/field_mask.proto\"°\u0001\n\u0016CreatePhraseSetRequest\u00127\n\u0006parent\u0018\u0001 \u0001(\tB'àA\u0002úA!\u0012\u001fspeech.googleapis.com/PhraseSet\u0012\u001a\n\rphrase_set_id\u0018\u0002 \u0001(\tB\u0003àA\u0002\u0012A\n\nphrase_set\u0018\u0003 \u0001(\u000b2(.google.cloud.speech.v1p1beta1.PhraseSetB\u0003àA\u0002\"\u008c\u0001\n\u0016UpdatePhraseSetRequest\u0012A\n\nphrase_set\u0018\u0001 \u0001(\u000b2(.google.cloud.speech.v1p1beta1.PhraseSetB\u0003àA\u0002\u0012/\n\u000bupdate_mask\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.FieldMask\"L\n\u0013GetPhraseSetRequest\u00125\n\u0004name\u0018\u0001 \u0001(\tB'àA\u0002úA!\n\u001fspeech.googleapis.com/PhraseSet\"v\n\u0014ListPhraseSetRequest\u00127\n\u0006parent\u0018\u0001 \u0001(\tB'àA\u0002úA!\u0012\u001fspeech.googleapis.com/PhraseSet\u0012\u0011\n\tpage_size\u0018\u0002 \u0001(\u0005\u0012\u0012\n\npage_token\u0018\u0003 \u0001(\t\"o\n\u0015ListPhraseSetResponse\u0012=\n\u000bphrase_sets\u0018\u0001 \u0003(\u000b2(.google.cloud.speech.v1p1beta1.PhraseSet\u0012\u0017\n\u000fnext_page_token\u0018\u0002 \u0001(\t\"O\n\u0016DeletePhraseSetRequest\u00125\n\u0004name\u0018\u0001 \u0001(\tB'àA\u0002úA!\n\u001fspeech.googleapis.com/PhraseSet\"º\u0001\n\u0018CreateCustomClassRequest\u00129\n\u0006parent\u0018\u0001 \u0001(\tB)àA\u0002úA#\u0012!speech.googleapis.com/CustomClass\u0012\u001c\n\u000fcustom_class_id\u0018\u0002 \u0001(\tB\u0003àA\u0002\u0012E\n\fcustom_class\u0018\u0003 \u0001(\u000b2*.google.cloud.speech.v1p1beta1.CustomClassB\u0003àA\u0002\"\u0092\u0001\n\u0018UpdateCustomClassRequest\u0012E\n\fcustom_class\u0018\u0001 \u0001(\u000b2*.google.cloud.speech.v1p1beta1.CustomClassB\u0003àA\u0002\u0012/\n\u000bupdate_mask\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.FieldMask\"P\n\u0015GetCustomClassRequest\u00127\n\u0004name\u0018\u0001 \u0001(\tB)àA\u0002úA#\n!speech.googleapis.com/CustomClass\"|\n\u0018ListCustomClassesRequest\u00129\n\u0006parent\u0018\u0001 \u0001(\tB)àA\u0002úA#\u0012!speech.googleapis.com/CustomClass\u0012\u0011\n\tpage_size\u0018\u0002 \u0001(\u0005\u0012\u0012\n\npage_token\u0018\u0003 \u0001(\t\"x\n\u0019ListCustomClassesResponse\u0012B\n\u000ecustom_classes\u0018\u0001 \u0003(\u000b2*.google.cloud.speech.v1p1beta1.CustomClass\u0012\u0017\n\u000fnext_page_token\u0018\u0002 \u0001(\t\"S\n\u0018DeleteCustomClassRequest\u00127\n\u0004name\u0018\u0001 \u0001(\tB)àA\u0002úA#\n!speech.googleapis.com/CustomClass2Ò\u0010\n\nAdaptation\u0012Ö\u0001\n\u000fCreatePhraseSet\u00125.google.cloud.speech.v1p1beta1.CreatePhraseSetRequest\u001a(.google.cloud.speech.v1p1beta1.PhraseSet\"b\u0082Óä\u0093\u0002:\"5/v1p1beta1/{parent=projects/*/locations/*}/phraseSets:\u0001*ÚA\u001fparent,phrase_set,phrase_set_id\u0012²\u0001\n\fGetPhraseSet\u00122.google.cloud.speech.v1p1beta1.GetPhraseSetRequest\u001a(.google.cloud.speech.v1p1beta1.PhraseSet\"D\u0082Óä\u0093\u00027\u00125/v1p1beta1/{name=projects/*/locations/*/phraseSets/*}ÚA\u0004name\u0012Â\u0001\n\rListPhraseSet\u00123.google.cloud.speech.v1p1beta1.ListPhraseSetRequest\u001a4.google.cloud.speech.v1p1beta1.ListPhraseSetResponse\"F\u0082Óä\u0093\u00027\u00125/v1p1beta1/{parent=projects/*/locations/*}/phraseSetsÚA\u0006parent\u0012á\u0001\n\u000fUpdatePhraseSet\u00125.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest\u001a(.google.cloud.speech.v1p1beta1.PhraseSet\"m\u0082Óä\u0093\u0002N2@/v1p1beta1/{phrase_set.name=projects/*/locations/*/phraseSets/*}:\nphrase_setÚA\u0016phrase_set,update_mask\u0012¦\u0001\n\u000fDeletePhraseSet\u00125.google.cloud.speech.v1p1beta1.DeletePhraseSetRequest\u001a\u0016.google.protobuf.Empty\"D\u0082Óä\u0093\u00027*5/v1p1beta1/{name=projects/*/locations/*/phraseSets/*}ÚA\u0004name\u0012ã\u0001\n\u0011CreateCustomClass\u00127.google.cloud.speech.v1p1beta1.CreateCustomClassRequest\u001a*.google.cloud.speech.v1p1beta1.CustomClass\"i\u0082Óä\u0093\u0002=\"8/v1p1beta1/{parent=projects/*/locations/*}/customClasses:\u0001*ÚA#parent,custom_class,custom_class_id\u0012»\u0001\n\u000eGetCustomClass\u00124.google.cloud.speech.v1p1beta1.GetCustomClassRequest\u001a*.google.cloud.speech.v1p1beta1.CustomClass\"G\u0082Óä\u0093\u0002:\u00128/v1p1beta1/{name=projects/*/locations/*/customClasses/*}ÚA\u0004name\u0012Ñ\u0001\n\u0011ListCustomClasses\u00127.google.cloud.speech.v1p1beta1.ListCustomClassesRequest\u001a8.google.cloud.speech.v1p1beta1.ListCustomClassesResponse\"I\u0082Óä\u0093\u0002:\u00128/v1p1beta1/{parent=projects/*/locations/*}/customClassesÚA\u0006parent\u0012ð\u0001\n\u0011UpdateCustomClass\u00127.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest\u001a*.google.cloud.speech.v1p1beta1.CustomClass\"v\u0082Óä\u0093\u0002U2E/v1p1beta1/{custom_class.name=projects/*/locations/*/customClasses/*}:\fcustom_classÚA\u0018custom_class,update_mask\u0012\u00ad\u0001\n\u0011DeleteCustomClass\u00127.google.cloud.speech.v1p1beta1.DeleteCustomClassRequest\u001a\u0016.google.protobuf.Empty\"G\u0082Óä\u0093\u0002:*8/v1p1beta1/{name=projects/*/locations/*/customClasses/*}ÚA\u0004name\u001aIÊA\u0015speech.googleapis.comÒA.https://www.googleapis.com/auth/cloud-platformB\u008a\u0001\n!com.google.cloud.speech.v1p1beta1B\u0015SpeechAdaptationProtoP\u0001ZCgoogle.golang.org/genproto/googleapis/cloud/speech/v1p1beta1;speechø\u0001\u0001¢\u0002\u0003GCSb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.api.b.a(), com.google.api.m.a(), c0.a(), c1.a(), m.a(), z.a(), m0.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f12261a = bVar;
        f12262b = new GeneratedMessageV3.e(bVar, new String[]{"Parent", "PhraseSetId", "PhraseSet"});
        Descriptors.b bVar2 = a().m().get(1);
        f12263c = bVar2;
        f12264d = new GeneratedMessageV3.e(bVar2, new String[]{"PhraseSet", "UpdateMask"});
        Descriptors.b bVar3 = a().m().get(2);
        f12265e = bVar3;
        f12266f = new GeneratedMessageV3.e(bVar3, new String[]{"Name"});
        Descriptors.b bVar4 = a().m().get(3);
        f12267g = bVar4;
        f12268h = new GeneratedMessageV3.e(bVar4, new String[]{"Parent", "PageSize", "PageToken"});
        Descriptors.b bVar5 = a().m().get(4);
        f12269i = bVar5;
        f12270j = new GeneratedMessageV3.e(bVar5, new String[]{"PhraseSets", "NextPageToken"});
        Descriptors.b bVar6 = a().m().get(5);
        f12271k = bVar6;
        f12272l = new GeneratedMessageV3.e(bVar6, new String[]{"Name"});
        Descriptors.b bVar7 = a().m().get(6);
        f12273m = bVar7;
        f12274n = new GeneratedMessageV3.e(bVar7, new String[]{"Parent", "CustomClassId", "CustomClass"});
        Descriptors.b bVar8 = a().m().get(7);
        f12275o = bVar8;
        f12276p = new GeneratedMessageV3.e(bVar8, new String[]{"CustomClass", "UpdateMask"});
        Descriptors.b bVar9 = a().m().get(8);
        f12277q = bVar9;
        f12278r = new GeneratedMessageV3.e(bVar9, new String[]{"Name"});
        Descriptors.b bVar10 = a().m().get(9);
        f12279s = bVar10;
        f12280t = new GeneratedMessageV3.e(bVar10, new String[]{"Parent", "PageSize", "PageToken"});
        Descriptors.b bVar11 = a().m().get(10);
        f12281u = bVar11;
        f12282v = new GeneratedMessageV3.e(bVar11, new String[]{"CustomClasses", "NextPageToken"});
        Descriptors.b bVar12 = a().m().get(11);
        f12283w = bVar12;
        f12284x = new GeneratedMessageV3.e(bVar12, new String[]{"Name"});
        d0 k10 = d0.k();
        k10.f(com.google.api.m.f11414b);
        k10.f(c0.f10968a);
        k10.f(com.google.api.b.f10941a);
        k10.f(com.google.api.m.f11413a);
        k10.f(com.google.api.m.f11415c);
        k10.f(c1.f10970a);
        Descriptors.FileDescriptor.u(f12285y, k10);
        com.google.api.b.a();
        com.google.api.m.a();
        c0.a();
        c1.a();
        m.a();
        z.a();
        m0.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f12285y;
    }
}
