package com.google.cloud.speech.v1beta1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.d0;
import com.google.protobuf.w;
/* loaded from: classes2.dex */
public final class d {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    private static Descriptors.FileDescriptor C;

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f12056a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f12057b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f12058c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f12059d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f12060e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f12061f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f12062g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f12063h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f12064i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f12065j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f12066k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f12067l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f12068m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f12069n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f12070o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f12071p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f12072q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f12073r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f12074s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f12075t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f12076u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f12077v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f12078w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f12079x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f12080y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f12081z;

    /* loaded from: classes2.dex */
    static class a implements Descriptors.FileDescriptor.a {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.a
        public d0 a(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = d.C = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.t(new String[]{"\n.google/cloud/speech/v1beta1/cloud_speech.proto\u0012\u001bgoogle.cloud.speech.v1beta1\u001a\u001cgoogle/api/annotations.proto\u001a#google/longrunning/operations.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u0017google/rpc/status.proto\"\u0094\u0001\n\u0014SyncRecognizeRequest\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2..google.cloud.speech.v1beta1.RecognitionConfig\u0012<\n\u0005audio\u0018\u0002 \u0001(\u000b2-.google.cloud.speech.v1beta1.RecognitionAudio\"\u0095\u0001\n\u0015AsyncRecognizeRequest\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2..google.cloud.speech.v1beta1.RecognitionConfig\u0012<\n\u0005audio\u0018\u0002 \u0001(\u000b2-.google.cloud.speech.v1beta1.RecognitionAudio\"\u009e\u0001\n\u0019StreamingRecognizeRequest\u0012S\n\u0010streaming_config\u0018\u0001 \u0001(\u000b27.google.cloud.speech.v1beta1.StreamingRecognitionConfigH\u0000\u0012\u0017\n\raudio_content\u0018\u0002 \u0001(\fH\u0000B\u0013\n\u0011streaming_request\"\u008f\u0001\n\u001aStreamingRecognitionConfig\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2..google.cloud.speech.v1beta1.RecognitionConfig\u0012\u0018\n\u0010single_utterance\u0018\u0002 \u0001(\b\u0012\u0017\n\u000finterim_results\u0018\u0003 \u0001(\b\"ê\u0002\n\u0011RecognitionConfig\u0012N\n\bencoding\u0018\u0001 \u0001(\u000e2<.google.cloud.speech.v1beta1.RecognitionConfig.AudioEncoding\u0012\u0013\n\u000bsample_rate\u0018\u0002 \u0001(\u0005\u0012\u0015\n\rlanguage_code\u0018\u0003 \u0001(\t\u0012\u0018\n\u0010max_alternatives\u0018\u0004 \u0001(\u0005\u0012\u0018\n\u0010profanity_filter\u0018\u0005 \u0001(\b\u0012B\n\u000espeech_context\u0018\u0006 \u0001(\u000b2*.google.cloud.speech.v1beta1.SpeechContext\"a\n\rAudioEncoding\u0012\u0018\n\u0014ENCODING_UNSPECIFIED\u0010\u0000\u0012\f\n\bLINEAR16\u0010\u0001\u0012\b\n\u0004FLAC\u0010\u0002\u0012\t\n\u0005MULAW\u0010\u0003\u0012\u0007\n\u0003AMR\u0010\u0004\u0012\n\n\u0006AMR_WB\u0010\u0005\" \n\rSpeechContext\u0012\u000f\n\u0007phrases\u0018\u0001 \u0003(\t\"D\n\u0010RecognitionAudio\u0012\u0011\n\u0007content\u0018\u0001 \u0001(\fH\u0000\u0012\r\n\u0003uri\u0018\u0002 \u0001(\tH\u0000B\u000e\n\faudio_source\"^\n\u0015SyncRecognizeResponse\u0012E\n\u0007results\u0018\u0002 \u0003(\u000b24.google.cloud.speech.v1beta1.SpeechRecognitionResult\"_\n\u0016AsyncRecognizeResponse\u0012E\n\u0007results\u0018\u0002 \u0003(\u000b24.google.cloud.speech.v1beta1.SpeechRecognitionResult\"\u0098\u0001\n\u0016AsyncRecognizeMetadata\u0012\u0018\n\u0010progress_percent\u0018\u0001 \u0001(\u0005\u0012.\n\nstart_time\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00124\n\u0010last_update_time\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\"\u0085\u0003\n\u001aStreamingRecognizeResponse\u0012!\n\u0005error\u0018\u0001 \u0001(\u000b2\u0012.google.rpc.Status\u0012H\n\u0007results\u0018\u0002 \u0003(\u000b27.google.cloud.speech.v1beta1.StreamingRecognitionResult\u0012\u0014\n\fresult_index\u0018\u0003 \u0001(\u0005\u0012_\n\u000fendpointer_type\u0018\u0004 \u0001(\u000e2F.google.cloud.speech.v1beta1.StreamingRecognizeResponse.EndpointerType\"\u0082\u0001\n\u000eEndpointerType\u0012 \n\u001cENDPOINTER_EVENT_UNSPECIFIED\u0010\u0000\u0012\u0013\n\u000fSTART_OF_SPEECH\u0010\u0001\u0012\u0011\n\rEND_OF_SPEECH\u0010\u0002\u0012\u0010\n\fEND_OF_AUDIO\u0010\u0003\u0012\u0014\n\u0010END_OF_UTTERANCE\u0010\u0004\"\u0092\u0001\n\u001aStreamingRecognitionResult\u0012O\n\falternatives\u0018\u0001 \u0003(\u000b29.google.cloud.speech.v1beta1.SpeechRecognitionAlternative\u0012\u0010\n\bis_final\u0018\u0002 \u0001(\b\u0012\u0011\n\tstability\u0018\u0003 \u0001(\u0002\"j\n\u0017SpeechRecognitionResult\u0012O\n\falternatives\u0018\u0001 \u0003(\u000b29.google.cloud.speech.v1beta1.SpeechRecognitionAlternative\"F\n\u001cSpeechRecognitionAlternative\u0012\u0012\n\ntranscript\u0018\u0001 \u0001(\t\u0012\u0012\n\nconfidence\u0018\u0002 \u0001(\u00022È\u0003\n\u0006Speech\u0012 \u0001\n\rSyncRecognize\u00121.google.cloud.speech.v1beta1.SyncRecognizeRequest\u001a2.google.cloud.speech.v1beta1.SyncRecognizeResponse\"(\u0082Óä\u0093\u0002\"\"\u001d/v1beta1/speech:syncrecognize:\u0001*\u0012\u008e\u0001\n\u000eAsyncRecognize\u00122.google.cloud.speech.v1beta1.AsyncRecognizeRequest\u001a\u001d.google.longrunning.Operation\")\u0082Óä\u0093\u0002#\"\u001e/v1beta1/speech:asyncrecognize:\u0001*\u0012\u0089\u0001\n\u0012StreamingRecognize\u00126.google.cloud.speech.v1beta1.StreamingRecognizeRequest\u001a7.google.cloud.speech.v1beta1.StreamingRecognizeResponse(\u00010\u0001Bs\n\u001fcom.google.cloud.speech.v1beta1B\u000bSpeechProtoP\u0001ZAgoogle.golang.org/genproto/googleapis/cloud/speech/v1beta1;speechb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.api.b.a(), com.google.longrunning.c.a(), w.a(), a3.a(), com.google.rpc.d.a()}, new a());
        Descriptors.b bVar = b().m().get(0);
        f12056a = bVar;
        f12057b = new GeneratedMessageV3.e(bVar, new String[]{"Config", "Audio"});
        Descriptors.b bVar2 = b().m().get(1);
        f12058c = bVar2;
        f12059d = new GeneratedMessageV3.e(bVar2, new String[]{"Config", "Audio"});
        Descriptors.b bVar3 = b().m().get(2);
        f12060e = bVar3;
        f12061f = new GeneratedMessageV3.e(bVar3, new String[]{"StreamingConfig", "AudioContent", "StreamingRequest"});
        Descriptors.b bVar4 = b().m().get(3);
        f12062g = bVar4;
        f12063h = new GeneratedMessageV3.e(bVar4, new String[]{"Config", "SingleUtterance", "InterimResults"});
        Descriptors.b bVar5 = b().m().get(4);
        f12064i = bVar5;
        f12065j = new GeneratedMessageV3.e(bVar5, new String[]{"Encoding", "SampleRate", "LanguageCode", "MaxAlternatives", "ProfanityFilter", "SpeechContext"});
        Descriptors.b bVar6 = b().m().get(5);
        f12066k = bVar6;
        f12067l = new GeneratedMessageV3.e(bVar6, new String[]{"Phrases"});
        Descriptors.b bVar7 = b().m().get(6);
        f12068m = bVar7;
        f12069n = new GeneratedMessageV3.e(bVar7, new String[]{"Content", "Uri", "AudioSource"});
        Descriptors.b bVar8 = b().m().get(7);
        f12070o = bVar8;
        f12071p = new GeneratedMessageV3.e(bVar8, new String[]{"Results"});
        Descriptors.b bVar9 = b().m().get(8);
        f12072q = bVar9;
        f12073r = new GeneratedMessageV3.e(bVar9, new String[]{"Results"});
        Descriptors.b bVar10 = b().m().get(9);
        f12074s = bVar10;
        f12075t = new GeneratedMessageV3.e(bVar10, new String[]{"ProgressPercent", "StartTime", "LastUpdateTime"});
        Descriptors.b bVar11 = b().m().get(10);
        f12076u = bVar11;
        f12077v = new GeneratedMessageV3.e(bVar11, new String[]{"Error", "Results", "ResultIndex", "EndpointerType"});
        Descriptors.b bVar12 = b().m().get(11);
        f12078w = bVar12;
        f12079x = new GeneratedMessageV3.e(bVar12, new String[]{"Alternatives", "IsFinal", "Stability"});
        Descriptors.b bVar13 = b().m().get(12);
        f12080y = bVar13;
        f12081z = new GeneratedMessageV3.e(bVar13, new String[]{"Alternatives"});
        Descriptors.b bVar14 = b().m().get(13);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Transcript", "Confidence"});
        d0 k10 = d0.k();
        k10.f(com.google.api.b.f10941a);
        Descriptors.FileDescriptor.u(C, k10);
        com.google.api.b.a();
        com.google.longrunning.c.a();
        w.a();
        a3.a();
        com.google.rpc.d.a();
    }

    public static Descriptors.FileDescriptor b() {
        return C;
    }
}
