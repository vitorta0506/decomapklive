package q6;

import com.google.firebase.encoders.proto.Protobuf;
import com.google.firebase.messaging.g0;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final a f57125b = new C0621a().a();

    /* renamed from: a  reason: collision with root package name */
    private final MessagingClientEvent f57126a;

    /* renamed from: q6.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0621a {

        /* renamed from: a  reason: collision with root package name */
        private MessagingClientEvent f57127a = null;

        C0621a() {
        }

        public a a() {
            return new a(this.f57127a);
        }

        public C0621a b(MessagingClientEvent messagingClientEvent) {
            this.f57127a = messagingClientEvent;
            return this;
        }
    }

    a(MessagingClientEvent messagingClientEvent) {
        this.f57126a = messagingClientEvent;
    }

    public static C0621a b() {
        return new C0621a();
    }

    @Protobuf(tag = 1)
    public MessagingClientEvent a() {
        return this.f57126a;
    }

    public byte[] c() {
        return g0.a(this);
    }
}
