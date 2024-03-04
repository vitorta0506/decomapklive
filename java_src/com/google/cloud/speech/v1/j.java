package com.google.cloud.speech.v1;

import androidx.exifinterface.media.ExifInterface;
import com.google.api.c0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
/* loaded from: classes2.dex */
public final class j {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    static final Descriptors.b C;
    static final GeneratedMessageV3.e D;
    static final Descriptors.b E;
    static final GeneratedMessageV3.e F;
    static final Descriptors.b G;
    static final GeneratedMessageV3.e H;
    static final Descriptors.b I;
    static final GeneratedMessageV3.e J;
    private static Descriptors.FileDescriptor K = Descriptors.FileDescriptor.s(new String[]{"\n)google/cloud/speech/v1/cloud_speech.proto\u0012\u0016google.cloud.speech.v1\u001a\u001cgoogle/api/annotations.proto\u001a\u0017google/api/client.proto\u001a\u001fgoogle/api/field_behavior.proto\u001a%google/cloud/speech/v1/resource.proto\u001a#google/longrunning/operations.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u0017google/rpc/status.proto\"\u0090\u0001\n\u0010RecognizeRequest\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2).google.cloud.speech.v1.RecognitionConfigB\u0003àA\u0002\u0012<\n\u0005audio\u0018\u0002 \u0001(\u000b2(.google.cloud.speech.v1.RecognitionAudioB\u0003àA\u0002\"ç\u0001\n\u001bLongRunningRecognizeRequest\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2).google.cloud.speech.v1.RecognitionConfigB\u0003àA\u0002\u0012<\n\u0005audio\u0018\u0002 \u0001(\u000b2(.google.cloud.speech.v1.RecognitionAudioB\u0003àA\u0002\u0012J\n\routput_config\u0018\u0004 \u0001(\u000b2..google.cloud.speech.v1.TranscriptOutputConfigB\u0003àA\u0001\":\n\u0016TranscriptOutputConfig\u0012\u0011\n\u0007gcs_uri\u0018\u0001 \u0001(\tH\u0000B\r\n\u000boutput_type\"\u0099\u0001\n\u0019StreamingRecognizeRequest\u0012N\n\u0010streaming_config\u0018\u0001 \u0001(\u000b22.google.cloud.speech.v1.StreamingRecognitionConfigH\u0000\u0012\u0017\n\raudio_content\u0018\u0002 \u0001(\fH\u0000B\u0013\n\u0011streaming_request\"\u008f\u0001\n\u001aStreamingRecognitionConfig\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2).google.cloud.speech.v1.RecognitionConfigB\u0003àA\u0002\u0012\u0018\n\u0010single_utterance\u0018\u0002 \u0001(\b\u0012\u0017\n\u000finterim_results\u0018\u0003 \u0001(\b\"é\u0007\n\u0011RecognitionConfig\u0012I\n\bencoding\u0018\u0001 \u0001(\u000e27.google.cloud.speech.v1.RecognitionConfig.AudioEncoding\u0012\u0019\n\u0011sample_rate_hertz\u0018\u0002 \u0001(\u0005\u0012\u001b\n\u0013audio_channel_count\u0018\u0007 \u0001(\u0005\u0012/\n'enable_separate_recognition_per_channel\u0018\f \u0001(\b\u0012\u001a\n\rlanguage_code\u0018\u0003 \u0001(\tB\u0003àA\u0002\u0012\"\n\u001aalternative_language_codes\u0018\u0012 \u0003(\t\u0012\u0018\n\u0010max_alternatives\u0018\u0004 \u0001(\u0005\u0012\u0018\n\u0010profanity_filter\u0018\u0005 \u0001(\b\u0012<\n\nadaptation\u0018\u0014 \u0001(\u000b2(.google.cloud.speech.v1.SpeechAdaptation\u0012>\n\u000fspeech_contexts\u0018\u0006 \u0003(\u000b2%.google.cloud.speech.v1.SpeechContext\u0012 \n\u0018enable_word_time_offsets\u0018\b \u0001(\b\u0012\u001e\n\u0016enable_word_confidence\u0018\u000f \u0001(\b\u0012$\n\u001cenable_automatic_punctuation\u0018\u000b \u0001(\b\u0012=\n\u0019enable_spoken_punctuation\u0018\u0016 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00128\n\u0014enable_spoken_emojis\u0018\u0017 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012L\n\u0012diarization_config\u0018\u0013 \u0001(\u000b20.google.cloud.speech.v1.SpeakerDiarizationConfig\u0012=\n\bmetadata\u0018\t \u0001(\u000b2+.google.cloud.speech.v1.RecognitionMetadata\u0012\r\n\u0005model\u0018\r \u0001(\t\u0012\u0014\n\fuse_enhanced\u0018\u000e \u0001(\b\"\u009a\u0001\n\rAudioEncoding\u0012\u0018\n\u0014ENCODING_UNSPECIFIED\u0010\u0000\u0012\f\n\bLINEAR16\u0010\u0001\u0012\b\n\u0004FLAC\u0010\u0002\u0012\t\n\u0005MULAW\u0010\u0003\u0012\u0007\n\u0003AMR\u0010\u0004\u0012\n\n\u0006AMR_WB\u0010\u0005\u0012\f\n\bOGG_OPUS\u0010\u0006\u0012\u001a\n\u0016SPEEX_WITH_HEADER_BYTE\u0010\u0007\u0012\r\n\tWEBM_OPUS\u0010\t\"\u0090\u0001\n\u0018SpeakerDiarizationConfig\u0012\"\n\u001aenable_speaker_diarization\u0018\u0001 \u0001(\b\u0012\u0019\n\u0011min_speaker_count\u0018\u0002 \u0001(\u0005\u0012\u0019\n\u0011max_speaker_count\u0018\u0003 \u0001(\u0005\u0012\u001a\n\u000bspeaker_tag\u0018\u0005 \u0001(\u0005B\u0005\u0018\u0001àA\u0003\" \b\n\u0013RecognitionMetadata\u0012U\n\u0010interaction_type\u0018\u0001 \u0001(\u000e2;.google.cloud.speech.v1.RecognitionMetadata.InteractionType\u0012$\n\u001cindustry_naics_code_of_audio\u0018\u0003 \u0001(\r\u0012[\n\u0013microphone_distance\u0018\u0004 \u0001(\u000e2>.google.cloud.speech.v1.RecognitionMetadata.MicrophoneDistance\u0012Z\n\u0013original_media_type\u0018\u0005 \u0001(\u000e2=.google.cloud.speech.v1.RecognitionMetadata.OriginalMediaType\u0012^\n\u0015recording_device_type\u0018\u0006 \u0001(\u000e2?.google.cloud.speech.v1.RecognitionMetadata.RecordingDeviceType\u0012\u001d\n\u0015recording_device_name\u0018\u0007 \u0001(\t\u0012\u001a\n\u0012original_mime_type\u0018\b \u0001(\t\u0012\u0013\n\u000baudio_topic\u0018\n \u0001(\t\"Å\u0001\n\u000fInteractionType\u0012 \n\u001cINTERACTION_TYPE_UNSPECIFIED\u0010\u0000\u0012\u000e\n\nDISCUSSION\u0010\u0001\u0012\u0010\n\fPRESENTATION\u0010\u0002\u0012\u000e\n\nPHONE_CALL\u0010\u0003\u0012\r\n\tVOICEMAIL\u0010\u0004\u0012\u001b\n\u0017PROFESSIONALLY_PRODUCED\u0010\u0005\u0012\u0010\n\fVOICE_SEARCH\u0010\u0006\u0012\u0011\n\rVOICE_COMMAND\u0010\u0007\u0012\r\n\tDICTATION\u0010\b\"d\n\u0012MicrophoneDistance\u0012#\n\u001fMICROPHONE_DISTANCE_UNSPECIFIED\u0010\u0000\u0012\r\n\tNEARFIELD\u0010\u0001\u0012\f\n\bMIDFIELD\u0010\u0002\u0012\f\n\bFARFIELD\u0010\u0003\"N\n\u0011OriginalMediaType\u0012#\n\u001fORIGINAL_MEDIA_TYPE_UNSPECIFIED\u0010\u0000\u0012\t\n\u0005AUDIO\u0010\u0001\u0012\t\n\u0005VIDEO\u0010\u0002\"¤\u0001\n\u0013RecordingDeviceType\u0012%\n!RECORDING_DEVICE_TYPE_UNSPECIFIED\u0010\u0000\u0012\u000e\n\nSMARTPHONE\u0010\u0001\u0012\u0006\n\u0002PC\u0010\u0002\u0012\u000e\n\nPHONE_LINE\u0010\u0003\u0012\u000b\n\u0007VEHICLE\u0010\u0004\u0012\u0018\n\u0014OTHER_OUTDOOR_DEVICE\u0010\u0005\u0012\u0017\n\u0013OTHER_INDOOR_DEVICE\u0010\u0006\"/\n\rSpeechContext\u0012\u000f\n\u0007phrases\u0018\u0001 \u0003(\t\u0012\r\n\u0005boost\u0018\u0004 \u0001(\u0002\"D\n\u0010RecognitionAudio\u0012\u0011\n\u0007content\u0018\u0001 \u0001(\fH\u0000\u0012\r\n\u0003uri\u0018\u0002 \u0001(\tH\u0000B\u000e\n\faudio_source\"\u008b\u0001\n\u0011RecognizeResponse\u0012@\n\u0007results\u0018\u0002 \u0003(\u000b2/.google.cloud.speech.v1.SpeechRecognitionResult\u00124\n\u0011total_billed_time\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\"\u0087\u0002\n\u001cLongRunningRecognizeResponse\u0012@\n\u0007results\u0018\u0002 \u0003(\u000b2/.google.cloud.speech.v1.SpeechRecognitionResult\u00124\n\u0011total_billed_time\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012E\n\routput_config\u0018\u0006 \u0001(\u000b2..google.cloud.speech.v1.TranscriptOutputConfig\u0012(\n\foutput_error\u0018\u0007 \u0001(\u000b2\u0012.google.rpc.Status\"°\u0001\n\u001cLongRunningRecognizeMetadata\u0012\u0018\n\u0010progress_percent\u0018\u0001 \u0001(\u0005\u0012.\n\nstart_time\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00124\n\u0010last_update_time\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u0010\n\u0003uri\u0018\u0004 \u0001(\tB\u0003àA\u0003\"ç\u0002\n\u001aStreamingRecognizeResponse\u0012!\n\u0005error\u0018\u0001 \u0001(\u000b2\u0012.google.rpc.Status\u0012C\n\u0007results\u0018\u0002 \u0003(\u000b22.google.cloud.speech.v1.StreamingRecognitionResult\u0012]\n\u0011speech_event_type\u0018\u0004 \u0001(\u000e2B.google.cloud.speech.v1.StreamingRecognizeResponse.SpeechEventType\u00124\n\u0011total_billed_time\u0018\u0005 \u0001(\u000b2\u0019.google.protobuf.Duration\"L\n\u000fSpeechEventType\u0012\u001c\n\u0018SPEECH_EVENT_UNSPECIFIED\u0010\u0000\u0012\u001b\n\u0017END_OF_SINGLE_UTTERANCE\u0010\u0001\"ò\u0001\n\u001aStreamingRecognitionResult\u0012J\n\falternatives\u0018\u0001 \u0003(\u000b24.google.cloud.speech.v1.SpeechRecognitionAlternative\u0012\u0010\n\bis_final\u0018\u0002 \u0001(\b\u0012\u0011\n\tstability\u0018\u0003 \u0001(\u0002\u00122\n\u000fresult_end_time\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u0013\n\u000bchannel_tag\u0018\u0005 \u0001(\u0005\u0012\u001a\n\rlanguage_code\u0018\u0006 \u0001(\tB\u0003àA\u0003\"Ê\u0001\n\u0017SpeechRecognitionResult\u0012J\n\falternatives\u0018\u0001 \u0003(\u000b24.google.cloud.speech.v1.SpeechRecognitionAlternative\u0012\u0013\n\u000bchannel_tag\u0018\u0002 \u0001(\u0005\u00122\n\u000fresult_end_time\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u001a\n\rlanguage_code\u0018\u0005 \u0001(\tB\u0003àA\u0003\"w\n\u001cSpeechRecognitionAlternative\u0012\u0012\n\ntranscript\u0018\u0001 \u0001(\t\u0012\u0012\n\nconfidence\u0018\u0002 \u0001(\u0002\u0012/\n\u0005words\u0018\u0003 \u0003(\u000b2 .google.cloud.speech.v1.WordInfo\"¢\u0001\n\bWordInfo\u0012-\n\nstart_time\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012+\n\bend_time\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\f\n\u0004word\u0018\u0003 \u0001(\t\u0012\u0012\n\nconfidence\u0018\u0004 \u0001(\u0002\u0012\u0018\n\u000bspeaker_tag\u0018\u0005 \u0001(\u0005B\u0003àA\u00032Ñ\u0004\n\u0006Speech\u0012\u0090\u0001\n\tRecognize\u0012(.google.cloud.speech.v1.RecognizeRequest\u001a).google.cloud.speech.v1.RecognizeResponse\".\u0082Óä\u0093\u0002\u0019\"\u0014/v1/speech:recognize:\u0001*ÚA\fconfig,audio\u0012ä\u0001\n\u0014LongRunningRecognize\u00123.google.cloud.speech.v1.LongRunningRecognizeRequest\u001a\u001d.google.longrunning.Operation\"x\u0082Óä\u0093\u0002$\"\u001f/v1/speech:longrunningrecognize:\u0001*ÚA\fconfig,audioÊA<\n\u001cLongRunningRecognizeResponse\u0012\u001cLongRunningRecognizeMetadata\u0012\u0081\u0001\n\u0012StreamingRecognize\u00121.google.cloud.speech.v1.StreamingRecognizeRequest\u001a2.google.cloud.speech.v1.StreamingRecognizeResponse\"\u0000(\u00010\u0001\u001aIÊA\u0015speech.googleapis.comÒA.https://www.googleapis.com/auth/cloud-platformBr\n\u001acom.google.cloud.speech.v1B\u000bSpeechProtoP\u0001Z<google.golang.org/genproto/googleapis/cloud/speech/v1;speechø\u0001\u0001¢\u0002\u0003GCSb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.api.b.a(), com.google.api.m.a(), c0.a(), m.a(), com.google.longrunning.c.a(), w.a(), a3.a(), p3.a(), com.google.rpc.d.a()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11963a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11964b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11965c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11966d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f11967e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f11968f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f11969g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f11970h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f11971i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f11972j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f11973k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f11974l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f11975m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f11976n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f11977o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f11978p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f11979q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f11980r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f11981s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f11982t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f11983u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f11984v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f11985w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f11986x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f11987y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f11988z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f11963a = bVar;
        f11964b = new GeneratedMessageV3.e(bVar, new String[]{"Config", "Audio"});
        Descriptors.b bVar2 = a().m().get(1);
        f11965c = bVar2;
        f11966d = new GeneratedMessageV3.e(bVar2, new String[]{"Config", "Audio", "OutputConfig"});
        Descriptors.b bVar3 = a().m().get(2);
        f11967e = bVar3;
        f11968f = new GeneratedMessageV3.e(bVar3, new String[]{"GcsUri", "OutputType"});
        Descriptors.b bVar4 = a().m().get(3);
        f11969g = bVar4;
        f11970h = new GeneratedMessageV3.e(bVar4, new String[]{"StreamingConfig", "AudioContent", "StreamingRequest"});
        Descriptors.b bVar5 = a().m().get(4);
        f11971i = bVar5;
        f11972j = new GeneratedMessageV3.e(bVar5, new String[]{"Config", "SingleUtterance", "InterimResults"});
        Descriptors.b bVar6 = a().m().get(5);
        f11973k = bVar6;
        f11974l = new GeneratedMessageV3.e(bVar6, new String[]{"Encoding", "SampleRateHertz", "AudioChannelCount", "EnableSeparateRecognitionPerChannel", "LanguageCode", "AlternativeLanguageCodes", "MaxAlternatives", "ProfanityFilter", "Adaptation", "SpeechContexts", "EnableWordTimeOffsets", "EnableWordConfidence", "EnableAutomaticPunctuation", "EnableSpokenPunctuation", "EnableSpokenEmojis", "DiarizationConfig", "Metadata", ExifInterface.TAG_MODEL, "UseEnhanced"});
        Descriptors.b bVar7 = a().m().get(6);
        f11975m = bVar7;
        f11976n = new GeneratedMessageV3.e(bVar7, new String[]{"EnableSpeakerDiarization", "MinSpeakerCount", "MaxSpeakerCount", "SpeakerTag"});
        Descriptors.b bVar8 = a().m().get(7);
        f11977o = bVar8;
        f11978p = new GeneratedMessageV3.e(bVar8, new String[]{"InteractionType", "IndustryNaicsCodeOfAudio", "MicrophoneDistance", "OriginalMediaType", "RecordingDeviceType", "RecordingDeviceName", "OriginalMimeType", "AudioTopic"});
        Descriptors.b bVar9 = a().m().get(8);
        f11979q = bVar9;
        f11980r = new GeneratedMessageV3.e(bVar9, new String[]{"Phrases", "Boost"});
        Descriptors.b bVar10 = a().m().get(9);
        f11981s = bVar10;
        f11982t = new GeneratedMessageV3.e(bVar10, new String[]{"Content", "Uri", "AudioSource"});
        Descriptors.b bVar11 = a().m().get(10);
        f11983u = bVar11;
        f11984v = new GeneratedMessageV3.e(bVar11, new String[]{"Results", "TotalBilledTime"});
        Descriptors.b bVar12 = a().m().get(11);
        f11985w = bVar12;
        f11986x = new GeneratedMessageV3.e(bVar12, new String[]{"Results", "TotalBilledTime", "OutputConfig", "OutputError"});
        Descriptors.b bVar13 = a().m().get(12);
        f11987y = bVar13;
        f11988z = new GeneratedMessageV3.e(bVar13, new String[]{"ProgressPercent", "StartTime", "LastUpdateTime", "Uri"});
        Descriptors.b bVar14 = a().m().get(13);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Error", "Results", "SpeechEventType", "TotalBilledTime"});
        Descriptors.b bVar15 = a().m().get(14);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"Alternatives", "IsFinal", "Stability", "ResultEndTime", "ChannelTag", "LanguageCode"});
        Descriptors.b bVar16 = a().m().get(15);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"Alternatives", "ChannelTag", "ResultEndTime", "LanguageCode"});
        Descriptors.b bVar17 = a().m().get(16);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"Transcript", "Confidence", "Words"});
        Descriptors.b bVar18 = a().m().get(17);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"StartTime", "EndTime", "Word", "Confidence", "SpeakerTag"});
        d0 k10 = d0.k();
        k10.f(com.google.api.m.f11414b);
        k10.f(c0.f10968a);
        k10.f(com.google.api.b.f10941a);
        k10.f(com.google.api.m.f11413a);
        k10.f(com.google.api.m.f11415c);
        k10.f(com.google.longrunning.c.f14255a);
        Descriptors.FileDescriptor.u(K, k10);
        com.google.api.b.a();
        com.google.api.m.a();
        c0.a();
        m.a();
        com.google.longrunning.c.a();
        w.a();
        a3.a();
        p3.a();
        com.google.rpc.d.a();
    }

    public static Descriptors.FileDescriptor a() {
        return K;
    }
}
