package com.google.cloud.speech.v1;

import com.google.api.c1;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11989a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11990b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11991c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11992d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f11993e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f11994f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f11995g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f11996h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f11997i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f11998j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11999k = Descriptors.FileDescriptor.s(new String[]{"\n%google/cloud/speech/v1/resource.proto\u0012\u0016google.cloud.speech.v1\u001a\u0019google/api/resource.proto\"ü\u0001\n\u000bCustomClass\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0017\n\u000fcustom_class_id\u0018\u0002 \u0001(\t\u0012<\n\u0005items\u0018\u0003 \u0003(\u000b2-.google.cloud.speech.v1.CustomClass.ClassItem\u001a\u001a\n\tClassItem\u0012\r\n\u0005value\u0018\u0001 \u0001(\t:lêAi\n!speech.googleapis.com/CustomClass\u0012Dprojects/{project}/locations/{location}/customClasses/{custom_class}\"ò\u0001\n\tPhraseSet\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00129\n\u0007phrases\u0018\u0002 \u0003(\u000b2(.google.cloud.speech.v1.PhraseSet.Phrase\u0012\r\n\u0005boost\u0018\u0004 \u0001(\u0002\u001a&\n\u0006Phrase\u0012\r\n\u0005value\u0018\u0001 \u0001(\t\u0012\r\n\u0005boost\u0018\u0002 \u0001(\u0002:eêAb\n\u001fspeech.googleapis.com/PhraseSet\u0012?projects/{project}/locations/{location}/phraseSets/{phrase_set}\"Ì\u0001\n\u0010SpeechAdaptation\u00126\n\u000bphrase_sets\u0018\u0001 \u0003(\u000b2!.google.cloud.speech.v1.PhraseSet\u0012C\n\u0015phrase_set_references\u0018\u0002 \u0003(\tB$úA!\n\u001fspeech.googleapis.com/PhraseSet\u0012;\n\u000ecustom_classes\u0018\u0003 \u0003(\u000b2#.google.cloud.speech.v1.CustomClassBz\n\u001acom.google.cloud.speech.v1B\u0013SpeechResourceProtoP\u0001Z<google.golang.org/genproto/googleapis/cloud/speech/v1;speechø\u0001\u0001¢\u0002\u0003GCSb\u0006proto3"}, new Descriptors.FileDescriptor[]{c1.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f11989a = bVar;
        f11990b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "CustomClassId", "Items"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f11991c = bVar2;
        f11992d = new GeneratedMessageV3.e(bVar2, new String[]{"Value"});
        Descriptors.b bVar3 = a().m().get(1);
        f11993e = bVar3;
        f11994f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "Phrases", "Boost"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f11995g = bVar4;
        f11996h = new GeneratedMessageV3.e(bVar4, new String[]{"Value", "Boost"});
        Descriptors.b bVar5 = a().m().get(2);
        f11997i = bVar5;
        f11998j = new GeneratedMessageV3.e(bVar5, new String[]{"PhraseSets", "PhraseSetReferences", "CustomClasses"});
        d0 k10 = d0.k();
        k10.f(c1.f10972c);
        k10.f(c1.f10970a);
        Descriptors.FileDescriptor.u(f11999k, k10);
        c1.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f11999k;
    }
}
