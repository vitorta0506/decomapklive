package com.google.cloud.speech.v1p1beta1;

import com.google.api.c1;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.d0;
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f12312a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f12313b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f12314c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f12315d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f12316e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f12317f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f12318g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f12319h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f12320i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f12321j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f12322k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f12323l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f12324m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f12325n;

    /* renamed from: o  reason: collision with root package name */
    private static Descriptors.FileDescriptor f12326o = Descriptors.FileDescriptor.s(new String[]{"\n,google/cloud/speech/v1p1beta1/resource.proto\u0012\u001dgoogle.cloud.speech.v1p1beta1\u001a\u0019google/api/resource.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001cgoogle/api/annotations.proto\"\u0083\u0002\n\u000bCustomClass\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0017\n\u000fcustom_class_id\u0018\u0002 \u0001(\t\u0012C\n\u0005items\u0018\u0003 \u0003(\u000b24.google.cloud.speech.v1p1beta1.CustomClass.ClassItem\u001a\u001a\n\tClassItem\u0012\r\n\u0005value\u0018\u0001 \u0001(\t:lêAi\n!speech.googleapis.com/CustomClass\u0012Dprojects/{project}/locations/{location}/customClasses/{custom_class}\"ù\u0001\n\tPhraseSet\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012@\n\u0007phrases\u0018\u0002 \u0003(\u000b2/.google.cloud.speech.v1p1beta1.PhraseSet.Phrase\u0012\r\n\u0005boost\u0018\u0004 \u0001(\u0002\u001a&\n\u0006Phrase\u0012\r\n\u0005value\u0018\u0001 \u0001(\t\u0012\r\n\u0005boost\u0018\u0002 \u0001(\u0002:eêAb\n\u001fspeech.googleapis.com/PhraseSet\u0012?projects/{project}/locations/{location}/phraseSets/{phrase_set}\"Ú\u0001\n\u0010SpeechAdaptation\u0012=\n\u000bphrase_sets\u0018\u0001 \u0003(\u000b2(.google.cloud.speech.v1p1beta1.PhraseSet\u0012C\n\u0015phrase_set_references\u0018\u0002 \u0003(\tB$úA!\n\u001fspeech.googleapis.com/PhraseSet\u0012B\n\u000ecustom_classes\u0018\u0003 \u0003(\u000b2*.google.cloud.speech.v1p1beta1.CustomClass\"ª\u0001\n\u0017TranscriptNormalization\u0012M\n\u0007entries\u0018\u0001 \u0003(\u000b2<.google.cloud.speech.v1p1beta1.TranscriptNormalization.Entry\u001a@\n\u0005Entry\u0012\u000e\n\u0006search\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007replace\u0018\u0002 \u0001(\t\u0012\u0016\n\u000ecase_sensitive\u0018\u0003 \u0001(\bB\u0088\u0001\n!com.google.cloud.speech.v1p1beta1B\u0013SpeechResourceProtoP\u0001ZCgoogle.golang.org/genproto/googleapis/cloud/speech/v1p1beta1;speechø\u0001\u0001¢\u0002\u0003GCSb\u0006proto3"}, new Descriptors.FileDescriptor[]{c1.a(), a3.a(), com.google.api.b.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f12312a = bVar;
        f12313b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "CustomClassId", "Items"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f12314c = bVar2;
        f12315d = new GeneratedMessageV3.e(bVar2, new String[]{"Value"});
        Descriptors.b bVar3 = a().m().get(1);
        f12316e = bVar3;
        f12317f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "Phrases", "Boost"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f12318g = bVar4;
        f12319h = new GeneratedMessageV3.e(bVar4, new String[]{"Value", "Boost"});
        Descriptors.b bVar5 = a().m().get(2);
        f12320i = bVar5;
        f12321j = new GeneratedMessageV3.e(bVar5, new String[]{"PhraseSets", "PhraseSetReferences", "CustomClasses"});
        Descriptors.b bVar6 = a().m().get(3);
        f12322k = bVar6;
        f12323l = new GeneratedMessageV3.e(bVar6, new String[]{"Entries"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f12324m = bVar7;
        f12325n = new GeneratedMessageV3.e(bVar7, new String[]{"Search", "Replace", "CaseSensitive"});
        d0 k10 = d0.k();
        k10.f(c1.f10972c);
        k10.f(c1.f10970a);
        Descriptors.FileDescriptor.u(f12326o, k10);
        c1.a();
        a3.a();
        com.google.api.b.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f12326o;
    }
}
