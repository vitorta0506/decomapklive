package com.google.firebase.messaging.reporting;

import com.google.firebase.encoders.proto.Protobuf;
/* loaded from: classes2.dex */
public final class MessagingClientEvent {

    /* renamed from: p  reason: collision with root package name */
    private static final MessagingClientEvent f14118p = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f14119a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14120b;

    /* renamed from: c  reason: collision with root package name */
    private final String f14121c;

    /* renamed from: d  reason: collision with root package name */
    private final MessageType f14122d;

    /* renamed from: e  reason: collision with root package name */
    private final SDKPlatform f14123e;

    /* renamed from: f  reason: collision with root package name */
    private final String f14124f;

    /* renamed from: g  reason: collision with root package name */
    private final String f14125g;

    /* renamed from: h  reason: collision with root package name */
    private final int f14126h;

    /* renamed from: i  reason: collision with root package name */
    private final int f14127i;

    /* renamed from: j  reason: collision with root package name */
    private final String f14128j;

    /* renamed from: k  reason: collision with root package name */
    private final long f14129k;

    /* renamed from: l  reason: collision with root package name */
    private final Event f14130l;

    /* renamed from: m  reason: collision with root package name */
    private final String f14131m;

    /* renamed from: n  reason: collision with root package name */
    private final long f14132n;

    /* renamed from: o  reason: collision with root package name */
    private final String f14133o;

    /* loaded from: classes2.dex */
    public enum Event implements g6.a {
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        MESSAGE_OPEN(2);
        
        private final int number_;

        Event(int i9) {
            this.number_ = i9;
        }

        @Override // g6.a
        public int getNumber() {
            return this.number_;
        }
    }

    /* loaded from: classes2.dex */
    public enum MessageType implements g6.a {
        UNKNOWN(0),
        DATA_MESSAGE(1),
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);
        
        private final int number_;

        MessageType(int i9) {
            this.number_ = i9;
        }

        @Override // g6.a
        public int getNumber() {
            return this.number_;
        }
    }

    /* loaded from: classes2.dex */
    public enum SDKPlatform implements g6.a {
        UNKNOWN_OS(0),
        ANDROID(1),
        IOS(2),
        WEB(3);
        
        private final int number_;

        SDKPlatform(int i9) {
            this.number_ = i9;
        }

        @Override // g6.a
        public int getNumber() {
            return this.number_;
        }
    }

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f14134a = 0;

        /* renamed from: b  reason: collision with root package name */
        private String f14135b = "";

        /* renamed from: c  reason: collision with root package name */
        private String f14136c = "";

        /* renamed from: d  reason: collision with root package name */
        private MessageType f14137d = MessageType.UNKNOWN;

        /* renamed from: e  reason: collision with root package name */
        private SDKPlatform f14138e = SDKPlatform.UNKNOWN_OS;

        /* renamed from: f  reason: collision with root package name */
        private String f14139f = "";

        /* renamed from: g  reason: collision with root package name */
        private String f14140g = "";

        /* renamed from: h  reason: collision with root package name */
        private int f14141h = 0;

        /* renamed from: i  reason: collision with root package name */
        private int f14142i = 0;

        /* renamed from: j  reason: collision with root package name */
        private String f14143j = "";

        /* renamed from: k  reason: collision with root package name */
        private long f14144k = 0;

        /* renamed from: l  reason: collision with root package name */
        private Event f14145l = Event.UNKNOWN_EVENT;

        /* renamed from: m  reason: collision with root package name */
        private String f14146m = "";

        /* renamed from: n  reason: collision with root package name */
        private long f14147n = 0;

        /* renamed from: o  reason: collision with root package name */
        private String f14148o = "";

        a() {
        }

        public MessagingClientEvent a() {
            return new MessagingClientEvent(this.f14134a, this.f14135b, this.f14136c, this.f14137d, this.f14138e, this.f14139f, this.f14140g, this.f14141h, this.f14142i, this.f14143j, this.f14144k, this.f14145l, this.f14146m, this.f14147n, this.f14148o);
        }

        public a b(String str) {
            this.f14146m = str;
            return this;
        }

        public a c(String str) {
            this.f14140g = str;
            return this;
        }

        public a d(String str) {
            this.f14148o = str;
            return this;
        }

        public a e(Event event) {
            this.f14145l = event;
            return this;
        }

        public a f(String str) {
            this.f14136c = str;
            return this;
        }

        public a g(String str) {
            this.f14135b = str;
            return this;
        }

        public a h(MessageType messageType) {
            this.f14137d = messageType;
            return this;
        }

        public a i(String str) {
            this.f14139f = str;
            return this;
        }

        public a j(long j10) {
            this.f14134a = j10;
            return this;
        }

        public a k(SDKPlatform sDKPlatform) {
            this.f14138e = sDKPlatform;
            return this;
        }

        public a l(String str) {
            this.f14143j = str;
            return this;
        }

        public a m(int i9) {
            this.f14142i = i9;
            return this;
        }
    }

    MessagingClientEvent(long j10, String str, String str2, MessageType messageType, SDKPlatform sDKPlatform, String str3, String str4, int i9, int i10, String str5, long j11, Event event, String str6, long j12, String str7) {
        this.f14119a = j10;
        this.f14120b = str;
        this.f14121c = str2;
        this.f14122d = messageType;
        this.f14123e = sDKPlatform;
        this.f14124f = str3;
        this.f14125g = str4;
        this.f14126h = i9;
        this.f14127i = i10;
        this.f14128j = str5;
        this.f14129k = j11;
        this.f14130l = event;
        this.f14131m = str6;
        this.f14132n = j12;
        this.f14133o = str7;
    }

    public static a p() {
        return new a();
    }

    @Protobuf(tag = 13)
    public String a() {
        return this.f14131m;
    }

    @Protobuf(tag = 11)
    public long b() {
        return this.f14129k;
    }

    @Protobuf(tag = 14)
    public long c() {
        return this.f14132n;
    }

    @Protobuf(tag = 7)
    public String d() {
        return this.f14125g;
    }

    @Protobuf(tag = 15)
    public String e() {
        return this.f14133o;
    }

    @Protobuf(tag = 12)
    public Event f() {
        return this.f14130l;
    }

    @Protobuf(tag = 3)
    public String g() {
        return this.f14121c;
    }

    @Protobuf(tag = 2)
    public String h() {
        return this.f14120b;
    }

    @Protobuf(tag = 4)
    public MessageType i() {
        return this.f14122d;
    }

    @Protobuf(tag = 6)
    public String j() {
        return this.f14124f;
    }

    @Protobuf(tag = 8)
    public int k() {
        return this.f14126h;
    }

    @Protobuf(tag = 1)
    public long l() {
        return this.f14119a;
    }

    @Protobuf(tag = 5)
    public SDKPlatform m() {
        return this.f14123e;
    }

    @Protobuf(tag = 10)
    public String n() {
        return this.f14128j;
    }

    @Protobuf(tag = 9)
    public int o() {
        return this.f14127i;
    }
}
